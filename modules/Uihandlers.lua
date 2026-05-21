-- modules/UIHandlers.lua
-- Owns all button click handlers, the Alt-key GUI toggle, and the
-- SecondFrame expand/collapse tween.
-- Returns a Handlers table that Config.lua uses to apply saved state.

return function(GUI, S)
    local TweenService = game:GetService("TweenService")
    local UIS          = game:GetService("UserInputService")

    local Btn = GUI.Buttons
    local TB  = GUI.TextBoxes

    -- ===================== ALT KEY TOGGLE =====================
    local guiVisible = false   -- Holder starts hidden; Config shows it after load
    UIS.InputBegan:Connect(function(input, gp)
        if gp then return end
        if input.KeyCode == Enum.KeyCode.LeftAlt  or input.KeyCode == Enum.KeyCode.RightAlt
        or input.KeyCode == Enum.KeyCode.LeftMeta or input.KeyCode == Enum.KeyCode.RightMeta then
            guiVisible = not guiVisible
            GUI.Holder.Visible = guiVisible
        end
    end)

    -- ===================== SIMPLE TOGGLE =====================
    local function bindSimpleToggle(button, onText, offText)
        button.MouseButton1Click:Connect(function()
            if button.BackgroundColor3 == S.COLOR_ON then
                button.BackgroundColor3 = S.COLOR_OFF
                button.Text = offText
            else
                button.BackgroundColor3 = S.COLOR_ON
                button.Text = onText
            end
        end)
    end

    bindSimpleToggle(Btn.ShiftToggle,     "Shift Toggle: ON",     "Shift Toggle: OFF")
    bindSimpleToggle(Btn.ChatToggle,      "Chat Toggle (Z): ON",  "Chat Toggle (Z): OFF")
    bindSimpleToggle(Btn.AutoReload,      "Auto Reload: ON",      "Auto Reload: OFF")
    bindSimpleToggle(Btn.InfiniteStamina, "Infinite Stamina: ON", "Infinite Stamina: OFF")

    -- ===================== HITMARKER + SECONDFRAME =====================
    local sfExpanded = false

    Btn.Hitmarker.MouseButton1Click:Connect(function()
        local isOn = Btn.Hitmarker.BackgroundColor3 == S.COLOR_ON
        if isOn then
            Btn.Hitmarker.BackgroundColor3 = S.COLOR_OFF
            Btn.Hitmarker.Text = "Hitmarker: OFF"
            TweenService:Create(GUI.SecondFrame, S.SF_TWEEN, {Size = S.SF_COLLAPSED}):Play()
            sfExpanded = false
        else
            Btn.Hitmarker.BackgroundColor3 = S.COLOR_ON
            Btn.Hitmarker.Text = "Hitmarker: ON"
            TweenService:Create(GUI.SecondFrame, S.SF_TWEEN, {Size = S.SF_EXPANDED}):Play()
            sfExpanded = true
        end
    end)

    -- Back button: collapse only
    Btn.Back.MouseButton1Click:Connect(function()
        TweenService:Create(GUI.SecondFrame, S.SF_TWEEN, {Size = S.SF_COLLAPSED}):Play()
        sfExpanded = false
    end)

    -- ===================== GUN TRACERS THREE-STATE =====================
    local function getThreeState(btn)
        local c = btn.BackgroundColor3
        if c == S.COLOR_YELLOW then return "others" end
        if c == S.COLOR_ON     then return "all"    end
        return "none"
    end

    local function applyThreeState(btn, state)
        local def = S.TRACER_STATES[state] or S.TRACER_STATES.none
        btn.BackgroundColor3 = def.color
        btn.Text = def.text
    end

    Btn.GunTracers.MouseButton1Click:Connect(function()
        local cur = getThreeState(Btn.GunTracers)
        local nxt = cur == "none" and "others" or cur == "others" and "all" or "none"
        applyThreeState(Btn.GunTracers, nxt)
    end)

    -- ===================== GUN TRACER COLORS CYCLE =====================
    local COLORS = S.TRACER_COLORS

    local function getTracerColorIndex(btn)
        for i, c in ipairs(COLORS) do
            if btn.BackgroundColor3 == c then return i end
        end
        return 1
    end

    local function applyTracerColor(idx)
        idx = math.clamp(idx, 1, #COLORS)
        Btn.GunTracerColors.BackgroundColor3 = COLORS[idx]
        Btn.GunTracerColors.TextColor3 = (idx == #COLORS)
            and Color3.fromRGB(0, 0, 0)
            or  Color3.fromRGB(255, 255, 255)
    end

    Btn.GunTracerColors.MouseButton1Click:Connect(function()
        applyTracerColor(getTracerColorIndex(Btn.GunTracerColors) % #COLORS + 1)
    end)

    -- ===================== GUN VOLUME APPLIER THREE-STATE =====================
    local function getApplierState(btn)
        local c = btn.BackgroundColor3
        if c == S.COLOR_YELLOW then return "me"     end
        if c == S.COLOR_ON     then return "others" end
        return "all"
    end

    local function applyApplierState(btn, state)
        local def = S.APPLIER_STATES[state] or S.APPLIER_STATES.all
        btn.BackgroundColor3 = def.color
        btn.Text = def.text
    end

    Btn.GunVolumeApplier.MouseButton1Click:Connect(function()
        local cur = getApplierState(Btn.GunVolumeApplier)
        local nxt = cur == "all" and "me" or cur == "me" and "others" or "all"
        applyApplierState(Btn.GunVolumeApplier, nxt)
    end)

    -- ===================== EXPOSE HELPERS FOR CONFIG =====================
    -- Config.lua uses these to restore saved state without re-defining logic.
    return {
        getThreeState      = getThreeState,
        applyThreeState    = applyThreeState,
        getTracerColorIndex = getTracerColorIndex,
        applyTracerColor   = applyTracerColor,
        getApplierState    = getApplierState,
        applyApplierState  = applyApplierState,

        -- Expose a setter so Config can show the GUI after loading
        setGuiVisible = function(v)
            guiVisible = v
            GUI.Holder.Visible = v
        end,
    }
end
