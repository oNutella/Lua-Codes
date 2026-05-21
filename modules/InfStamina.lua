-- modules/InfStamina.lua
-- Disables the AntiJump script to grant infinite stamina while toggle is ON.

return function(GUI, S)
    local Players      = game:GetService("Players")
    local StarterPlayer = game:GetService("StarterPlayer")

    local ToggleButton = GUI.Buttons.InfiniteStamina

    local function isEnabled()
        return ToggleButton.BackgroundColor3 == S.COLOR_ON
    end

    local function applyState()
        if isEnabled() then
            local starterScript = StarterPlayer.StarterCharacterScripts:FindFirstChild("AntiJump")
            if starterScript then starterScript:Destroy() end

            local character = Players.LocalPlayer.Character
            if character then
                local antiJump = character:FindFirstChild("AntiJump")
                if antiJump then antiJump.Disabled = true end
            end
        else
            local character = Players.LocalPlayer.Character
            if character then
                local antiJump = character:FindFirstChild("AntiJump")
                if antiJump then antiJump.Disabled = false end
            end
        end
    end

    ToggleButton:GetPropertyChangedSignal("BackgroundColor3"):Connect(applyState)

    Players.LocalPlayer.CharacterAdded:Connect(function()
        task.wait()
        applyState()
    end)
end
