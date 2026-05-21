-- modules/BackpackBind.lua
-- Reads the OpenBackpackKey TextBox and simulates the default backpack
-- toggle key (Backquote) whenever that key is pressed.

return function(GUI, S)
    local UIS = game:GetService("UserInputService")
    local VIM = game:GetService("VirtualInputManager")

    local textBox    = GUI.TextBoxes.OpenBackpackKey
    local DEFAULT_KEY = "V"

    local function getOpenKey()
        local keyName = textBox.Text
        if keyName == "" then keyName = DEFAULT_KEY end
        local ok, result = pcall(function() return Enum.KeyCode[keyName] end)
        if ok and result then return result end
        return Enum.KeyCode[DEFAULT_KEY]
    end

    UIS.InputBegan:Connect(function(input, gp)
        if gp then return end
        if input.UserInputType ~= Enum.UserInputType.Keyboard then return end
        if input.KeyCode == getOpenKey() then
            VIM:SendKeyEvent(true,  Enum.KeyCode.Backquote, false, game)
            task.wait()
            VIM:SendKeyEvent(false, Enum.KeyCode.Backquote, false, game)
        end
    end)
end
