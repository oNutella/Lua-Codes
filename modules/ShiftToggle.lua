-- modules/ShiftToggle.lua
-- Intercepts Shift key via ContextActionService to implement a shift-lock toggle.

return function(GUI, S)
    local CAS     = game:GetService("ContextActionService")
    local Players = game:GetService("Players")

    local ToggleButton = GUI.Buttons.ShiftToggle

    local sprinting    = false
    local allowRelease = false

    local function canRun()
        return ToggleButton.BackgroundColor3 == S.COLOR_ON
    end

    local function onShift(_, state)
        if not canRun() then return Enum.ContextActionResult.Pass end

        if state == Enum.UserInputState.Begin then
            if not sprinting then
                sprinting    = true
                allowRelease = false
            else
                sprinting    = false
                allowRelease = true
            end
            return Enum.ContextActionResult.Pass

        elseif state == Enum.UserInputState.End then
            if allowRelease then
                allowRelease = false
                return Enum.ContextActionResult.Pass
            elseif sprinting then
                return Enum.ContextActionResult.Sink
            end
        end

        return Enum.ContextActionResult.Pass
    end

    CAS:BindActionAtPriority(
        "CycleWare_ShiftToggle",
        onShift,
        false,
        Enum.ContextActionPriority.High.Value,
        Enum.KeyCode.LeftShift,
        Enum.KeyCode.RightShift
    )

    Players.LocalPlayer.CharacterAdded:Connect(function()
        sprinting    = false
        allowRelease = false
    end)
end
