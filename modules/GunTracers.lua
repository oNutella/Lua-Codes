-- modules/GunTracers.lua
-- Hides RayPart gun tracer parts. Three-state: none / others / all.

return function(GUI, S)
    local Players           = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local UIS               = game:GetService("UserInputService")
    local RunService        = game:GetService("RunService")
    local LocalPlayer       = Players.LocalPlayer

    local ToggleButton = GUI.Buttons.GunTracers
    local TARGET_NAME  = "RayPart"

    local Remotes    = ReplicatedStorage:FindFirstChild("GunRemotes") or ReplicatedStorage
    local ShootEvent = Remotes:WaitForChild("ShootEvent")

    -- ===================== STATE =====================
    local ownParts     = {}
    local hideData     = {}
    local trackedParts = {}
    local justShot     = false
    local mouseHeld    = false
    local lastShotTime = 0
    local SHOT_WINDOW  = 0.4
    -- =================================================

    local function getState()
        local c = ToggleButton.BackgroundColor3
        if c == S.COLOR_YELLOW then return "others" end
        if c == S.COLOR_ON     then return "all"    end
        return "none"
    end

    local function setJustShot()
        justShot     = true
        lastShotTime = os.clock()
        task.delay(SHOT_WINDOW, function()
            if (os.clock() - lastShotTime) >= SHOT_WINDOW and not mouseHeld then
                justShot = false
            end
        end)
    end

    UIS.InputBegan:Connect(function(input, gp)
        if gp then return end
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            mouseHeld = true
            setJustShot()
        end
    end)

    UIS.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            mouseHeld    = false
            lastShotTime = os.clock()
            task.delay(SHOT_WINDOW, function()
                if not mouseHeld and (os.clock() - lastShotTime) >= SHOT_WINDOW then
                    justShot = false
                end
            end)
        end
    end)

    local OldNameCall
    OldNameCall = hookmetamethod(game, "__namecall", function(self, ...)
        local method = getnamecallmethod()
        if method == "FireServer" and self == ShootEvent then
            setJustShot()
        end
        return OldNameCall(self, ...)
    end)

    -- ===================== HELPERS =====================
    local function isOwnPart(part) return ownParts[part] == true end

    local function shouldHide(part)
        local state = getState()
        if state == "none"   then return false end
        if state == "all"    then return true  end
        if state == "others" then return not isOwnPart(part) end
        return false
    end

    local function applyHide(part)
        if hideData[part] then return end
        local orig = part.LocalTransparencyModifier
        part.LocalTransparencyModifier = 1
        local conn = part:GetPropertyChangedSignal("LocalTransparencyModifier"):Connect(function()
            if shouldHide(part) then part.LocalTransparencyModifier = 1 end
        end)
        hideData[part] = { conn = conn, originalModifier = orig }
    end

    local function removeHide(part)
        local data = hideData[part]
        if not data then return end
        data.conn:Disconnect()
        hideData[part] = nil
        part.LocalTransparencyModifier = data.originalModifier
    end

    local function handlePart(part)
        if shouldHide(part) then applyHide(part) else removeHide(part) end
    end

    local function scanAll()
        for part in pairs(trackedParts) do handlePart(part) end
    end
    -- ==================================================

    workspace.DescendantAdded:Connect(function(instance)
        if not instance:IsA("BasePart") or instance.Name ~= TARGET_NAME then return end
        if justShot then ownParts[instance] = true end
        trackedParts[instance] = true
        handlePart(instance)
    end)

    workspace.DescendantRemoving:Connect(function(instance)
        if not instance:IsA("BasePart") or instance.Name ~= TARGET_NAME then return end
        ownParts[instance]     = nil
        trackedParts[instance] = nil
        local data = hideData[instance]
        if data then
            data.conn:Disconnect()
            hideData[instance] = nil
        end
    end)

    RunService.PreRender:Connect(function()
        if getState() == "none" then return end
        for part in pairs(trackedParts) do
            if shouldHide(part) and part.LocalTransparencyModifier ~= 1 then
                part.LocalTransparencyModifier = 1
            end
        end
    end)

    ToggleButton:GetPropertyChangedSignal("BackgroundColor3"):Connect(scanAll)

    LocalPlayer.CharacterAdded:Connect(function()
        task.wait()
        scanAll()
    end)

    for _, d in ipairs(workspace:GetDescendants()) do
        if d:IsA("BasePart") and d.Name == TARGET_NAME then
            trackedParts[d] = true
            handlePart(d)
        end
    end
end
