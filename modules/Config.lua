-- modules/Config.lua
-- Save / load all CycleWare settings to disk (writefile / readfile).
-- Drives the loader progress bar animation and shows the main GUI when done.
-- Receives GUI, Shared constants (S), and the Handlers table from UIHandlers.

return function(GUI, S, Handlers)
    local TweenService  = game:GetService("TweenService")
    local HttpService   = game:GetService("HttpService")

    local Btn = GUI.Buttons
    local TB  = GUI.TextBoxes

    local CONFIG_FILE = "cycleware_config.json"

    -- ===================== HELPERS =====================

    local function getSimpleState(button)
        return button.BackgroundColor3 == S.COLOR_ON
    end

    local function applySimple(button, state, onText, offText)
        if state then
            button.BackgroundColor3 = S.COLOR_ON
            button.Text = onText
        else
            button.BackgroundColor3 = S.COLOR_OFF
            button.Text = offText
        end
    end

    -- Applies a text value and fires FocusLost so feature scripts react
    local function applyTextBox(textBox, value)
        textBox.Text = tostring(value)
        local ok = pcall(firesignal, textBox.FocusLost, false)
        if not ok then
            pcall(function()
                textBox:CaptureFocus()
                textBox:ReleaseFocus(false)
            end)
        end
    end

    -- ===================== PROGRESS BAR =====================
    local TOTAL_STEPS  = 7
    local currentStep  = 0

    local function step(msg)
        currentStep += 1
        GUI.StatusText.Text = msg
        local progress = currentStep / TOTAL_STEPS
        TweenService:Create(GUI.ProgressBar, TweenInfo.new(0.3),
            {Size = UDim2.new(progress, 0, 1, 0)}):Play()
        task.wait(0.3)
    end

    local function finishLoader()
        GUI.StatusText.Text = "Done!"
        TweenService:Create(GUI.ProgressBar, TweenInfo.new(0.2),
            {Size = UDim2.new(1, 0, 1, 0)}):Play()
        task.wait(0.4)
        GUI.LoaderFrame.Visible = false
        Handlers.setGuiVisible(true)
    end

    -- ===================== SAVE =====================
    local function saveConfig()
        local data = {
            -- Simple toggles
            hitmarker       = getSimpleState(Btn.Hitmarker),
            autoReload      = getSimpleState(Btn.AutoReload),
            infiniteStamina = getSimpleState(Btn.InfiniteStamina),
            chatToggler     = getSimpleState(Btn.ChatToggle),
            shiftToggle     = getSimpleState(Btn.ShiftToggle),

            -- Three-state
            gunTracers      = Handlers.getThreeState(Btn.GunTracers),

            -- Color cycle
            gunTracerColorIndex = Handlers.getTracerColorIndex(Btn.GunTracerColors),

            -- TextBoxes
            cursorId        = TB.CursorID.Text,
            soundId         = TB.SoundID.Text,
            hitmarkerId     = TB.HitmarkerID.Text,
            cursorSize      = TB.CursorSize.Text,
            hitmarkerSize   = TB.HitmarkerSize.Text,
            soundVolume     = TB.SoundVolume.Text,
            openBackpackKey = TB.OpenBackpackKey.Text,
            gunVolume       = TB.GunVolume.Text,

            -- Applier scope
            gunVolumeScope  = Handlers.getApplierState(Btn.GunVolumeApplier),
        }

        local ok, err = pcall(function()
            writefile(CONFIG_FILE, HttpService:JSONEncode(data))
        end)
        if not ok then
            warn("CycleWare: Failed to save config —", err)
        end
    end

    -- ===================== LOAD =====================
    local function loadConfig()
        GUI.LoaderFrame.Visible = true

        step("Initializing...")

        -- Read file
        local data
        local fileOk = pcall(function()
            if isfile(CONFIG_FILE) then
                local content = readfile(CONFIG_FILE)
                data = HttpService:JSONDecode(content)
            end
        end)

        if not data then
            -- No saved config — just finish the loader
            for i = currentStep + 1, TOTAL_STEPS do
                step("Loading defaults...")
            end
            finishLoader()
            return
        end

        -- Step 1: Hitmarker + TextBoxes
        step("Loading Hitmarker...")
        if data.hitmarker ~= nil then
            applySimple(Btn.Hitmarker, data.hitmarker, "Hitmarker: ON", "Hitmarker: OFF")
        end
        if type(data.cursorId)      == "string" then applyTextBox(TB.CursorID,    data.cursorId)      end
        if type(data.soundId)       == "string" then applyTextBox(TB.SoundID,     data.soundId)       end
        if type(data.hitmarkerId)   == "string" then applyTextBox(TB.HitmarkerID, data.hitmarkerId)   end
        if type(data.cursorSize)    == "string" then applyTextBox(TB.CursorSize,  data.cursorSize)    end
        if type(data.hitmarkerSize) == "string" then applyTextBox(TB.HitmarkerSize, data.hitmarkerSize) end
        if type(data.soundVolume)   == "string" then applyTextBox(TB.SoundVolume, data.soundVolume)   end

        -- Step 2: Auto Reload
        step("Loading Auto Reload...")
        if data.autoReload ~= nil then
            applySimple(Btn.AutoReload, data.autoReload, "Auto Reload: ON", "Auto Reload: OFF")
        end

        -- Step 3: Infinite Stamina
        step("Loading Stamina...")
        if data.infiniteStamina ~= nil then
            applySimple(Btn.InfiniteStamina, data.infiniteStamina, "Infinite Stamina: ON", "Infinite Stamina: OFF")
        end

        -- Step 4: Gun Settings
        step("Loading Gun Settings...")
        if type(data.gunTracers) == "string" then
            Handlers.applyThreeState(Btn.GunTracers, data.gunTracers)
        end
        if type(data.gunTracerColorIndex) == "number" then
            Handlers.applyTracerColor(data.gunTracerColorIndex)
        end
        if type(data.gunVolume) == "string" and data.gunVolume ~= "" then
            TB.GunVolume.Text = data.gunVolume
        end
        if type(data.gunVolumeScope) == "string" then
            Handlers.applyApplierState(Btn.GunVolumeApplier, data.gunVolumeScope)
        end

        -- Step 5: Chat & Shift
        step("Loading Chat & Shift...")
        if data.chatToggler ~= nil then
            applySimple(Btn.ChatToggle, data.chatToggler, "Chat Toggle (Z): ON", "Chat Toggle (Z): OFF")
        end
        if data.shiftToggle ~= nil then
            applySimple(Btn.ShiftToggle, data.shiftToggle, "Shift Toggle: ON", "Shift Toggle: OFF")
        end

        -- Step 6: Keybinds
        step("Loading Keybinds...")
        if type(data.openBackpackKey) == "string" and data.openBackpackKey ~= "" then
            TB.OpenBackpackKey.Text = data.openBackpackKey
        end

        -- Step 7: Finish
        step("Finishing...")
        finishLoader()
    end

    -- ===================== BUTTON CONNECTIONS =====================
    Btn.SaveSettings.MouseButton1Click:Connect(saveConfig)
    Btn.LoadSettings.MouseButton1Click:Connect(function()
        currentStep = 0
        loadConfig()
    end)

    -- ===================== AUTO-LOAD ON START =====================
    task.spawn(function()
        task.wait(1)   -- let feature modules settle their connections
        loadConfig()
    end)
end
