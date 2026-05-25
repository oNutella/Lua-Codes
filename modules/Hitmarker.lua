-- modules/Hitmarker.lua
-- Fixed for Loadstring & Hook synchronization stability

return function(GUI, S)
    -- ===================== PATHS & ADAPTATION =====================
    -- Seamlessly handles framework parameters or falls back to direct UI discovery
    local ToggleButton, CursorTextBox, SoundTextBox, HitmarkerTextBox, CursorSizeTextBox, HitmarkerSizeTextBox, SoundVolumeTextBox

    if GUI and typeof(GUI) == "table" then
        ToggleButton         = GUI.Buttons and GUI.Buttons.Hitmarker or GUI.ToggleButton
        local TB             = GUI.TextBoxes or GUI
        CursorTextBox        = TB.CursorID
        SoundTextBox         = TB.SoundID
        HitmarkerTextBox     = TB.HitmarkerID
        CursorSizeTextBox    = TB.CursorSize
        HitmarkerSizeTextBox = TB.HitmarkerSize
        SoundVolumeTextBox   = TB.SoundVolume
    else
        -- Dynamic fallback to ensure loadstring execution never errors on 'script.Parent'
        local base = GUI or game:GetService("CoreGui"):FindFirstChild("IA Portable") or game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChildOfClass("ScreenGui")
        ToggleButton         = base:FindFirstChild("Hitmarker", true) or base:FindFirstChildOfClass("TextButton")
        CursorTextBox        = base:FindFirstChild("CursorID", true)
        SoundTextBox         = base:FindFirstChild("SoundID", true)
        HitmarkerTextBox     = base:FindFirstChild("HitmarkerID", true)
        CursorSizeTextBox    = base:FindFirstChild("CursorSize", true)
        HitmarkerSizeTextBox = base:FindFirstChild("HitmarkerSize", true)
        SoundVolumeTextBox   = base:FindFirstChild("SoundVolume", true)
    end

    -- Fallback guard if UI isn't ready
    if not ToggleButton then return end

    -- ===================== DEFAULTS =====================
    local DefaultCursorId     = "rbxassetid://2991611250"
    local DefaultSoundId      = "rbxassetid://1347140027"
    local DefaultHitmarkerId  = "rbxassetid://890801299"
    local DefaultCursorSize   = 85
    local DefaultHitmarkerSize = 45
    local DefaultSoundVolume  = 1
    -- ====================================================

    local IAPortable = Instance.new("ScreenGui")
    local Cursor = Instance.new("ImageLabel")
    local Hitmarker = Instance.new("ImageLabel")

    IAPortable.Name = "IA Portable"
    IAPortable.Parent = game:GetService('CoreGui')
    IAPortable.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Cursor.Name = "Cursor"
    Cursor.Parent = IAPortable
    Cursor.AnchorPoint = Vector2.new(0.5, 0.5)
    Cursor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Cursor.BackgroundTransparency = 1.000
    Cursor.Size = UDim2.new(0, DefaultCursorSize, 0, DefaultCursorSize)
    Cursor.Image = DefaultCursorId
    Cursor.ScaleType = Enum.ScaleType.Fit

    Hitmarker.Name = "Hitmarker"
    Hitmarker.AnchorPoint = Vector2.new(0.5, 0.5)
    Hitmarker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Hitmarker.BackgroundTransparency = 1.000
    Hitmarker.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Hitmarker.Position = UDim2.new(0.5, 0, 0.5, 0)
    Hitmarker.Size = UDim2.new(0, DefaultHitmarkerSize, 0, DefaultHitmarkerSize)
    Hitmarker.Image = DefaultHitmarkerId

    local SoundService      = game:GetService("SoundService")
    local ReplicatedStorage = game:GetService('ReplicatedStorage')
    local UserInputService  = game:GetService('UserInputService')
    local RunService        = game:GetService('RunService')
    local Players           = game:GetService('Players')

    local Remotes    = ReplicatedStorage:FindFirstChild('GunRemotes') or ReplicatedStorage
    local ShootEvent = Remotes:WaitForChild("ShootEvent", 5) or Remotes.ShootEvent
    local LocalPlayer = Players.LocalPlayer
    local Mouse       = LocalPlayer:GetMouse()

    -- ===================== STATE =====================
    local CurrentCursorId     = DefaultCursorId
    local CurrentSoundId      = DefaultSoundId
    local CurrentHitmarkerId  = DefaultHitmarkerId
    local CurrentCursorSize   = DefaultCursorSize
    local CurrentHitmarkerSize = DefaultHitmarkerSize
    local CurrentSoundVolume  = DefaultSoundVolume

    local EnabledColor = (S and S.COLOR_ON) or Color3.fromRGB(0, 140, 140)

    local function isEnabled()
        return ToggleButton.BackgroundColor3 == EnabledColor
    end
    -- =================================================

    -- Populate UI text boxes safely
    CursorTextBox.Text        = DefaultCursorId:match("%d+")
    SoundTextBox.Text         = DefaultSoundId:match("%d+")
    HitmarkerTextBox.Text     = DefaultHitmarkerId:match("%d+")
    CursorSizeTextBox.Text    = tostring(DefaultCursorSize)
    HitmarkerSizeTextBox.Text = tostring(DefaultHitmarkerSize)
    SoundVolumeTextBox.Text   = tostring(DefaultSoundVolume)

    UserInputService.MouseIconEnabled = true

    -- ===================== HELPER =====================
    local function toAssetId(input)
        input = input:match("^%s*(.-)%s*$")
        if input:match("^%d+$") then
            return "rbxassetid://" .. input
        elseif input:match("^rbxassetid://%d+$") then
            return input
        end
        return nil
    end
    -- ==================================================

    ToggleButton:GetPropertyChangedSignal("BackgroundColor3"):Connect(function()
        if isEnabled() then
            local id = toAssetId(CursorTextBox.Text)
            CurrentCursorId = id or DefaultCursorId
            Cursor.Image = CurrentCursorId
        else
            CurrentCursorId = DefaultCursorId
            Cursor.Image = CurrentCursorId
        end
    end)

    CursorTextBox.FocusLost:Connect(function()
        local id = toAssetId(CursorTextBox.Text)
        if id then
            CurrentCursorId = id
            if isEnabled() then Cursor.Image = CurrentCursorId end
        else
            CursorTextBox.Text = CurrentCursorId:match("%d+")
        end
    end)

    SoundTextBox.FocusLost:Connect(function()
        local id = toAssetId(SoundTextBox.Text)
        if id then CurrentSoundId = id else SoundTextBox.Text = CurrentSoundId:match("%d+") end
    end)

    HitmarkerTextBox.FocusLost:Connect(function()
        local id = toAssetId(HitmarkerTextBox.Text)
        if id then
            CurrentHitmarkerId = id
            Hitmarker.Image = CurrentHitmarkerId
        else
            HitmarkerTextBox.Text = CurrentHitmarkerId:match("%d+")
        end
    end)

    CursorSizeTextBox.FocusLost:Connect(function()
        local size = tonumber(CursorSizeTextBox.Text)
        if size and size > 0 then
            CurrentCursorSize = size
            Cursor.Size = UDim2.new(0, CurrentCursorSize, 0, CurrentCursorSize)
        else
            CursorSizeTextBox.Text = tostring(CurrentCursorSize)
        end
    end)

    HitmarkerSizeTextBox.FocusLost:Connect(function()
        local size = tonumber(HitmarkerSizeTextBox.Text)
        if size and size > 0 then
            CurrentHitmarkerSize = size
            Hitmarker.Size = UDim2.new(0, CurrentHitmarkerSize, 0, CurrentHitmarkerSize)
        else
            HitmarkerSizeTextBox.Text = tostring(CurrentHitmarkerSize)
        end
    end)

    SoundVolumeTextBox.FocusLost:Connect(function()
        local vol = tonumber(SoundVolumeTextBox.Text)
        if vol and vol >= 0 and vol <= 10 then CurrentSoundVolume = vol else SoundVolumeTextBox.Text = tostring(CurrentSoundVolume) end
    end)

    local function createSoundEffect(id, volume)
        task.spawn(function()
            local sound = Instance.new("Sound")
            sound.SoundId = id
            sound.Volume = volume or 1
            SoundService:PlayLocalSound(sound)
            sound.Ended:Wait()
            sound:Destroy()
        end)
    end

    -- ===================== SYNCHRONOUS DETECTION HOOK =====================
    local OldNameCall
    OldNameCall = hookmetamethod(game, "__namecall", function(self, ...)
        local method = getnamecallmethod()
        local args = {...}

        if method == 'FireServer' and ShootEvent and self == ShootEvent then
            local bullets = args[1]
            local ShotHit = false

            -- Parsed instantly inline to avoid game mutation race conditions
            if typeof(bullets) == "table" then
                for _, bullet in pairs(bullets) do
                    if typeof(bullet) ~= "table" then continue end
                    
                    -- Supports array indexing [3], named dictionary indexes (.Hit), and FastCast (.Instance)
                    local Hit = bullet.Hit or bullet[3] or bullet.Instance
                    if not Hit or typeof(Hit) ~= "Instance" or not Hit.Parent then continue end

                    local Limb      = Hit.Parent:FindFirstChildOfClass('Humanoid') ~= nil
                    local Accessory = Hit.Parent.Parent and Hit.Parent.Parent:FindFirstChildOfClass('Humanoid') ~= nil

                    if Limb then
                        local Player = Players:GetPlayerFromCharacter(Hit.Parent)
                        if Player and Player.TeamColor ~= LocalPlayer.TeamColor then
                            ShotHit = true break
                        end
                    elseif Accessory then
                        local Player = Players:GetPlayerFromCharacter(Hit.Parent.Parent)
                        if Player and Player.TeamColor ~= LocalPlayer.TeamColor then
                            ShotHit = true break
                        end
                    end
                end
            end

            -- Creation actions deferred outside the hook frame to perfectly preserve namecall state
            if ShotHit then
                task.spawn(function()
                    if not isEnabled() then return end
                    createSoundEffect(CurrentSoundId, CurrentSoundVolume)

                    local Clone = Hitmarker:Clone()
                    Clone.Image = CurrentHitmarkerId
                    Clone.Size = UDim2.new(0, CurrentHitmarkerSize, 0, CurrentHitmarkerSize)
                    Clone.Position = UDim2.new(0, Mouse.X, 0, Mouse.Y)
                    Clone.Parent = IAPortable
                    Clone.Rotation = math.random(0, 90)

                    Debris:AddItem(Clone, 0.05)
                end)
            end
        end

        return OldNameCall(self, ...)
    end)

    -- ===================== RENDER STEP LOOP =====================
    RunService.RenderStepped:Connect(function()
        if not isEnabled() then
            UserInputService.MouseIconEnabled = true
            Cursor.Visible = false
            return
        end

        UserInputService.MouseIconEnabled = false
        Cursor.Visible = true
        Cursor.Position = UDim2.new(0, Mouse.X, 0, Mouse.Y)

        local Target = Mouse.Target
        if not Target or not Target.Parent then
            Cursor.ImageColor3 = Color3.fromRGB(255, 255, 255)
            return
        end

        local Limb      = Target.Parent:FindFirstChildOfClass('Humanoid')
        local Accessory = Target.Parent.Parent and Target.Parent.Parent:FindFirstChildOfClass('Humanoid')

        if Limb then
            local Player = Players:GetPlayerFromCharacter(Target.Parent)
            if Player then
                Cursor.ImageColor3 = Player.TeamColor == LocalPlayer.TeamColor and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
            end
        elseif Accessory then
            local Player = Players:GetPlayerFromCharacter(Target.Parent.Parent)
            if Player then
                Cursor.ImageColor3 = Player.TeamColor == LocalPlayer.TeamColor and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
            end
        else
            Cursor.ImageColor3 = Color3.fromRGB(255, 255, 255)
        end
    end)
end
