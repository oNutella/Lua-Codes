-- modules/GunColors.lua
-- Overrides the color of RayPart tracer parts to match the GunTracerColors button.

return function(GUI, S)
    local Players    = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local LocalPlayer = Players.LocalPlayer

    local ToggleButton = GUI.Buttons.GunTracerColors
    local TARGET_NAME  = "RayPart"
    local COLOR_OFF    = S.TRACER_COLORS[1]  -- index 1 = off (gray)

    local trackedParts = {}
    local colorData    = {}

    local function isActive()
        return ToggleButton.BackgroundColor3 ~= COLOR_OFF
    end

    local function getActiveColor()
        return ToggleButton.BackgroundColor3
    end

    local function applyColor(part)
        if colorData[part] then
            part.Color = getActiveColor()
            return
        end
        local orig = part.Color
        part.Color = getActiveColor()
        local conn = part:GetPropertyChangedSignal("Color"):Connect(function()
            if isActive() and part.Color ~= getActiveColor() then
                part.Color = getActiveColor()
            end
        end)
        colorData[part] = { conn = conn, originalColor = orig }
    end

    local function removeColor(part)
        local data = colorData[part]
        if not data then return end
        data.conn:Disconnect()
        colorData[part] = nil
        part.Color = data.originalColor
    end

    local function handlePart(part)
        if isActive() then applyColor(part) else removeColor(part) end
    end

    local function scanAll()
        for part in pairs(trackedParts) do handlePart(part) end
    end

    workspace.DescendantAdded:Connect(function(instance)
        if not instance:IsA("BasePart") or instance.Name ~= TARGET_NAME then return end
        trackedParts[instance] = true
        handlePart(instance)
    end)

    workspace.DescendantRemoving:Connect(function(instance)
        if not instance:IsA("BasePart") or instance.Name ~= TARGET_NAME then return end
        trackedParts[instance] = nil
        local data = colorData[instance]
        if data then
            data.conn:Disconnect()
            colorData[instance] = nil
        end
    end)

    RunService.PreRender:Connect(function()
        if not isActive() then return end
        local activeColor = getActiveColor()
        for part in pairs(trackedParts) do
            if part.Color ~= activeColor then part.Color = activeColor end
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
