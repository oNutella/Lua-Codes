-- modules/ChatToggle.lua
-- Pressing Z while the toggle is ON hides/shows the Roblox chat.

return function(GUI, S)
    local UIS       = game:GetService("UserInputService")
    local StarterGui = game:GetService("StarterGui")

    local ToggleButton = GUI.Buttons.ChatToggle

    local hidden   = false
    local debounce = false

    local function canRun()
        return ToggleButton.BackgroundColor3 == S.COLOR_ON
    end

    local function setChat(state)
        pcall(function() StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, state) end)
        pcall(function() StarterGui:SetCore("ChatActive", state) end)
    end

    UIS.InputBegan:Connect(function(input, gp)
        if gp or debounce then return end
        if not canRun() then return end
        if input.KeyCode ~= Enum.KeyCode.Z then return end

        debounce = true
        hidden   = not hidden
        setChat(not hidden)
        task.wait(0.15)
        debounce = false
    end)

    -- Ensure chat is visible on load
    task.spawn(function()
        repeat task.wait() until game:IsLoaded()
        setChat(true)
    end)
end
