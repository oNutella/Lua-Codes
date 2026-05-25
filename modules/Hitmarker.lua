-- modules/Hitmarker.lua
-- Custom cursor, hitmarker overlay, and hit sound.
-- Reads toggle state from GUI.Buttons.Hitmarker background color.

return function(GUI, S)
    local SoundService      = game:GetService("SoundService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local UIS               = game:GetService("UserInputService")
    local RunService        = game:GetService("RunService")
    local Players           = game:GetService("Players")
    local Debris            = game:GetService("Debris")

    local ToggleButton = GUI.Buttons.Hitmarker
    local TB           = GUI.TextBoxes

    -- ===================== DEFAULTS =====================
    local DefaultCursorId     = "rbxassetid://2991611250"
    local DefaultSoundId      = "rbxassetid://1347140027"
    local DefaultHitmarkerId  = "rbxassetid://890801299"
    local DefaultCursorSize   = 85
    local DefaultHitmarkerSize = 45
    local DefaultSoundVolume  = 1
    -- ====================================================

    -- Initialise textbox defaults (only if empty)
    if TB.CursorID.Text    == "" then TB.CursorID.Text    = DefaultCursorId:match("%d+")    end
    if TB.SoundID.Text     == "" then TB.SoundID.Text     = DefaultSoundId:match("%d+")     end
    if TB.HitmarkerID.Text == "" then TB.HitmarkerID.Text = DefaultHitmarkerId:match("%d+") end
    if TB.CursorSize.Text  == "" then TB.CursorSize.Text  = tostring(DefaultCursorSize)     end
    if TB.HitmarkerSize.Text == "" then TB.HitmarkerSize.Text = tostring(DefaultHitmarkerSize) end
    if TB.SoundVolume.Text == "" then TB.SoundVolume.Text = tostring(DefaultSoundVolume)    end

    -- ===================== OVERLAY GUI =====================
    local IAPortable = Instance.new("ScreenGui")
    IAPortable.Name          = "IA Portable"
    IAPortable.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    IAPortable.Parent        = game:GetService("CoreGui")

    local Cursor = Instance.new("ImageLabel")
    Cursor.Name                  = "Cursor"
    Cursor.Parent                = IAPortable
    Cursor.AnchorPoint           = Vector2.new(0.5, 0.5)
    Cursor.BackgroundTransparency = 1
    Cursor.Size                  = UDim2.new(0, DefaultCursorSize, 0, DefaultCursorSize)
    Cursor.Image                 = DefaultCursorId
    Cursor.ScaleType             = Enum.ScaleType.Fit

    local HitmarkerImg = Instance.new("ImageLabel")
    HitmarkerImg.Name                  = "Hitmarker"
    HitmarkerImg.AnchorPoint           = Vector2.new(0.5, 0.5)
    HitmarkerImg.BackgroundTransparency = 1
    HitmarkerImg.Position              = UDim2.new(0.5, 0, 0.5, 0)
    HitmarkerImg.Size                  = UDim2.new(0, DefaultHitmarkerSize, 0, DefaultHitmarkerSize)
    HitmarkerImg.Image                 = DefaultHitmarkerId

    -- ===================== STATE =====================
    local CurrentCursorId     = DefaultCursorId
    local CurrentSoundId      = DefaultSoundId
    local CurrentHitmarkerId  = DefaultHitmarkerId
    local CurrentCursorSize   = DefaultCursorSize
    local CurrentHitmarkerSize = DefaultHitmarkerSize
    local CurrentSoundVolume  = DefaultSoundVolume

    local LocalPlayer = Players.LocalPlayer
    local Mouse       = LocalPlayer:GetMouse()

    local function isEnabled()
        return ToggleButton.BackgroundColor3 == S.COLOR_ON
    end

    local function toAssetId(input)
        input = input:match("^%s*(.-)%s*$")
        if input:match("^%d+$") then
            return "rbxassetid://" .. input
        elseif input:match("^rbxassetid://%d+$") then
            return input
        end
        return nil
    end

    -- ===================== TOGGLE REACTION =====================
    ToggleButton:GetPropertyChangedSignal("BackgroundColor3"):Connect(function()
        if isEnabled() then
            local id = toAssetId(TB.CursorID.Text)
            CurrentCursorId = id or DefaultCursorId
            Cursor.Image    = CurrentCursorId
        else
            CurrentCursorId = DefaultCursorId
            Cursor.Image    = CurrentCursorId
        end
    end)

    -- ===================== TEXTBOX HANDLERS =====================
    TB.CursorID.FocusLost:Connect(function()
        local id = toAssetId(TB.CursorID.Text)
        if id then
            CurrentCursorId = id
            if isEnabled() then Cursor.Image = CurrentCursorId end
        else
            TB.CursorID.Text = CurrentCursorId:match("%d+")
        end
    end)

    TB.SoundID.FocusLost:Connect(function()
        local id = toAssetId(TB.SoundID.Text)
        if id then
            CurrentSoundId = id
        else
            TB.SoundID.Text = CurrentSoundId:match("%d+")
        end
    end)

    TB.HitmarkerID.FocusLost:Connect(function()
        local id = toAssetId(TB.HitmarkerID.Text)
        if id then
            CurrentHitmarkerId  = id
            HitmarkerImg.Image  = CurrentHitmarkerId
        else
            TB.HitmarkerID.Text = CurrentHitmarkerId:match("%d+")
        end
    end)

    TB.CursorSize.FocusLost:Connect(function()
        local size = tonumber(TB.CursorSize.Text)
        if size and size > 0 then
            CurrentCursorSize = size
            Cursor.Size = UDim2.new(0, CurrentCursorSize, 0, CurrentCursorSize)
        else
            TB.CursorSize.Text = tostring(CurrentCursorSize)
        end
    end)

    TB.HitmarkerSize.FocusLost:Connect(function()
        local size = tonumber(TB.HitmarkerSize.Text)
        if size and size > 0 then
            CurrentHitmarkerSize = size
            HitmarkerImg.Size = UDim2.new(0, CurrentHitmarkerSize, 0, CurrentHitmarkerSize)
        else
            TB.HitmarkerSize.Text = tostring(CurrentHitmarkerSize)
        end
    end)

    TB.SoundVolume.FocusLost:Connect(function()
        local vol = tonumber(TB.SoundVolume.Text)
        if vol and vol >= 0 and vol <= 10 then
            CurrentSoundVolume = vol
        else
            TB.SoundVolume.Text = tostring(CurrentSoundVolume)
        end
    end)

    -- ===================== HIT DETECTION =====================
    local function createSoundEffect(id, volume)
        task.spawn(function()
            local sound = Instance.new("Sound")
            sound.SoundId = id
            sound.Volume  = volume or 1
            SoundService:PlayLocalSound(sound)
            sound.Ended:Wait()
            sound:Destroy()
        end)
    end

    local Remotes    = ReplicatedStorage:WaitForChild("GunRemotes", 5) or ReplicatedStorage
    local ShootEvent = Remotes:WaitForChild("ShootEvent", 5)
    local Bindable   = Instance.new("BindableEvent")

    Bindable.Event:Connect(function(bullets, gun)
        if not isEnabled() then return end
        local ShotHit = false

        if typeof(bullets) == "table" then
            for _, bullet in pairs(bullets) do
                if typeof(bullet) ~= "table" then continue end
                local Hit = bullet[3]
                if typeof(Hit) ~= "Instance" or not Hit.Parent then continue end

                local Limb      = Hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil
                local Accessory = Hit.Parent.Parent and Hit.Parent.Parent:FindFirstChildOfClass("Humanoid") ~= nil

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

        if ShotHit then
            createSoundEffect(CurrentSoundId, CurrentSoundVolume)

            local Clone = HitmarkerImg:Clone()
            Clone.Image    = CurrentHitmarkerId
            Clone.Size     = UDim2.new(0, CurrentHitmarkerSize, 0, CurrentHitmarkerSize)
            Clone.Position = UDim2.new(0, Mouse.X, 0, Mouse.Y)
            Clone.Parent   = IAPortable
            Clone.Rotation = math.random(0, 90)
            Debris:AddItem(Clone, 0.05)
        end
    end)

    -- ===================== NETWORK HOOK =====================
    local OldNameCall
    OldNameCall = hookmetamethod(game, "__namecall", function(self, ...)
        local method = getnamecallmethod()
        
        if ShootEvent and method == "FireServer" and self == ShootEvent then
            -- Using standard dot notation avoids triggering a secondary namecall, 
            -- keeping getnamecallmethod() intact for the game's original call.
            Bindable.Fire(Bindable, ...)
        end
        
        return OldNameCall(self, ...)
    end)

    -- ===================== RENDER LOOP =====================
    UIS.MouseIconEnabled = true

    RunService.RenderStepped:Connect(function()
        if not isEnabled() then
            UIS.MouseIconEnabled = true
            Cursor.Visible = false
            return
        end

        UIS.MouseIconEnabled = false
        Cursor.Visible   = true
        Cursor.Position  = UDim2.new(0, Mouse.X, 0, Mouse.Y)

        local Target = Mouse.Target
        if not Target or not Target.Parent then
            Cursor.ImageColor3 = Color3.fromRGB(255, 255, 255)
            return
        end

        local Limb      = Target.Parent:FindFirstChildOfClass("Humanoid")
        local Accessory = Target.Parent.Parent and Target.Parent.Parent:FindFirstChildOfClass("Humanoid")

        if Limb then
            local Player = Players:GetPlayerFromCharacter(Target.Parent)
            if Player then
                Cursor.ImageColor3 = Player.TeamColor == LocalPlayer.TeamColor
                    and Color3.fromRGB(0, 255, 0)
                    or  Color3.fromRGB(255, 0, 0)
            end
        elseif Accessory then
            local Player = Players:GetPlayerFromCharacter(Target.Parent.Parent)
            if Player then
                Cursor.ImageColor3 = Player.TeamColor == LocalPlayer.TeamColor
                    and Color3.fromRGB(0, 255, 0)
                    or  Color3.fromRGB(255, 0, 0)
            end
        else
            Cursor.ImageColor3 = Color3.fromRGB(255, 255, 255)
        end
    end)
end
