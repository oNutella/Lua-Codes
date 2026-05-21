-- modules/AutoReload.lua
-- Monitors the ammo label and triggers R key when ammo hits 0.

return function(GUI, S)
    local player     = cloneref(game:GetService("Players")).LocalPlayer
    local runService = cloneref(game:GetService("RunService"))
    local vim        = cloneref(game:GetService("VirtualInputManager"))

    local ToggleButton = GUI.Buttons.AutoReload

    local ammoLabel = player:WaitForChild("PlayerGui")
        :WaitForChild("Home")
        :WaitForChild("hud")
        :WaitForChild("BottomRightFrame")
        :WaitForChild("GunFrame")
        :WaitForChild("BulletsLabel")

    local lastReload = 0
    local lastMaxAmmo = nil
    local COOLDOWN    = 0.3

    local function canRun()
        return ToggleButton.BackgroundColor3 == S.COLOR_ON
    end

    local function getAmmoInfo(text)
        local current = tonumber(text:match("^(%d+)/"))
        local maximum = tonumber(text:match("/(%d+)$"))
        return current, maximum
    end

    local function triggerReload()
        lastReload = tick()
        coroutine.wrap(function()
            vim:SendKeyEvent(true,  Enum.KeyCode.R, false, game)
            task.wait(0.02)
            vim:SendKeyEvent(false, Enum.KeyCode.R, false, game)

            if keytap   then keytap(0x52)   end
            if keystroke then keystroke(0x52) end

            task.wait(0.15)
            if not canRun() then return end
            local ammo = tonumber(ammoLabel.Text:match("^(%d+)/"))
            if ammo == 0 then
                vim:SendKeyEvent(true,  Enum.KeyCode.R, false, game)
                task.wait(0.02)
                vim:SendKeyEvent(false, Enum.KeyCode.R, false, game)
                if keytap   then keytap(0x52)   end
                if keystroke then keystroke(0x52) end
            end
        end)()
    end

    local function detectGunSwitch()
        local text = ammoLabel.Text
        local ammo, maxAmmo = getAmmoInfo(text)
        if not maxAmmo then return ammo end

        if maxAmmo ~= lastMaxAmmo then
            lastMaxAmmo = maxAmmo
            lastReload  = 0
            if ammo == 0 then triggerReload() end
        end

        return ammo
    end

    ammoLabel:GetPropertyChangedSignal("Text"):Connect(function()
        if not canRun() then return end
        detectGunSwitch()
    end)

    runService.Heartbeat:Connect(function()
        if not canRun() then return end
        local ammo = detectGunSwitch()
        if ammo == 0 and (tick() - lastReload > COOLDOWN) then
            triggerReload()
        end
    end)
end
