-- modules/KeyCapture.lua
-- When the OpenBackpackKey TextBox is focused, shows "..." as placeholder
-- and on any key press writes that key's name into the box.

return function(GUI, S)
    local UIS     = game:GetService("UserInputService")
    local textBox = GUI.TextBoxes.OpenBackpackKey

    local IGNORED_KEYS = {
        [Enum.KeyCode.LeftShift]   = true,
        [Enum.KeyCode.RightShift]  = true,
        [Enum.KeyCode.LeftControl] = true,
        [Enum.KeyCode.RightControl]= true,
        [Enum.KeyCode.LeftAlt]     = true,
        [Enum.KeyCode.RightAlt]    = true,
        [Enum.KeyCode.LeftMeta]    = true,
        [Enum.KeyCode.RightMeta]   = true,
        [Enum.KeyCode.Unknown]     = true,
    }

    textBox.Focused:Connect(function()
        textBox.PlaceholderText = "..."
    end)

    textBox.FocusLost:Connect(function()
        if textBox.Text == "" then
            textBox.PlaceholderText = "Backpack Key"
        end
    end)

    UIS.InputBegan:Connect(function(input, gp)
        if not textBox:IsFocused() then return end
        if input.UserInputType ~= Enum.UserInputType.Keyboard then return end
        if IGNORED_KEYS[input.KeyCode] then return end

        textBox.Text = input.KeyCode.Name
        textBox:ReleaseFocus()
    end)
end
