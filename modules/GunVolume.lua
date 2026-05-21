-- modules/GunVolume.lua
-- Overrides ShootSound / ReloadSound volume.
-- Scope (all / me / others) is controlled by the Applier button.

return function(GUI, S)
    local Players = game:GetService("Players")
    local player  = Players.LocalPlayer

    local GunVolumeBox = GUI.TextBoxes.GunVolume
    local ApplierBtn   = GUI.Buttons.GunVolumeApplier

    local TARGET_NAMES   = { ShootSound = true, ReloadSound = true }
    local DEFAULT_VOLUME = 1

    local overrideData = {}

    local function parseVolume()
        local n = tonumber(GunVolumeBox.Text)
        if n then return math.clamp(n, 0, 10) end
        return DEFAULT_VOLUME
    end

    local function isOwnSound(sound)
        local char = player.Character
        return char ~= nil and sound:IsDescendantOf(char)
    end

    local function getScope()
        local c = ApplierBtn.BackgroundColor3
        if c == S.COLOR_YELLOW then return "me"     end
        if c == S.COLOR_ON     then return "others" end
        return "all"
    end

    local function shouldOverride(sound)
        local scope = getScope()
        if scope == "all"    then return true end
        if scope == "me"     then return isOwnSound(sound) end
        if scope == "others" then return not isOwnSound(sound) end
        return false
    end

    local function applyOverride(sound)
        if overrideData[sound] then
            sound.Volume = parseVolume()
            return
        end
        local orig = sound.Volume
        sound.Volume = parseVolume()
        local conn = sound:GetPropertyChangedSignal("Volume"):Connect(function()
            if shouldOverride(sound) then sound.Volume = parseVolume() end
        end)
        overrideData[sound] = { conn = conn, originalVolume = orig }
    end

    local function removeOverride(sound)
        local data = overrideData[sound]
        if not data then return end
        data.conn:Disconnect()
        overrideData[sound] = nil
        sound.Volume = data.originalVolume
    end

    local function handleSound(sound)
        if not sound:IsA("Sound") then return end
        if not TARGET_NAMES[sound.Name] then return end
        if shouldOverride(sound) then applyOverride(sound) else removeOverride(sound) end
    end

    local function scanAll()
        for _, desc in ipairs(workspace:GetDescendants()) do handleSound(desc) end
    end

    workspace.DescendantAdded:Connect(function(inst) handleSound(inst) end)
    ApplierBtn:GetPropertyChangedSignal("BackgroundColor3"):Connect(scanAll)
    GunVolumeBox.FocusLost:Connect(scanAll)

    player.CharacterAdded:Connect(function()
        task.wait()
        scanAll()
    end)

    scanAll()
end
