-- CycleWare — UI Definition (generated via Gui2Lua, adapted for executor)
-- Returns a structured GUI table consumed by every module.

-- Instances:
local CycleWare       = Instance.new("ScreenGui")
local Holder          = Instance.new("Frame")
local UICorner        = Instance.new("UICorner")
local MainFrame       = Instance.new("Frame")
local Buttons         = Instance.new("Folder")
local Hitmarker       = Instance.new("TextButton")
local ShiftToggle     = Instance.new("TextButton")
local ChatToggle      = Instance.new("TextButton")
local AutoReload      = Instance.new("TextButton")
local InfiniteStamina = Instance.new("TextButton")
local GunTracers      = Instance.new("TextButton")
local GunTracerColors = Instance.new("TextButton")
local UICorner_2      = Instance.new("UICorner")
local LogoContainer   = Instance.new("Frame")
local Title           = Instance.new("ImageLabel")
local LoadSettings    = Instance.new("TextButton")
local SaveSettings    = Instance.new("TextButton")
local SecondFrame     = Instance.new("Frame")
local CursorID        = Instance.new("TextBox")
local HitmarkerID     = Instance.new("TextBox")
local SoundID         = Instance.new("TextBox")
local UICorner_3      = Instance.new("UICorner")
local Nutella         = Instance.new("ImageLabel")
local Back            = Instance.new("ImageButton")
local CursorSize      = Instance.new("TextBox")
local HitmarkerSize   = Instance.new("TextBox")
local SoundVolume     = Instance.new("TextBox")
local OpenBackpackKey = Instance.new("TextBox")
local GunVolume       = Instance.new("TextBox")
local Applier         = Instance.new("TextButton")
local Logo            = Instance.new("ImageLabel")
local LoaderFrame     = Instance.new("Frame")
local UICorner_4      = Instance.new("UICorner")
local Logo_2          = Instance.new("ImageLabel")
local Nutella_2       = Instance.new("ImageLabel")
local CycleWare_2     = Instance.new("ImageLabel")
local ProgressBar     = Instance.new("Frame")
local Bar             = Instance.new("Frame")
local ImageLabel      = Instance.new("ImageLabel")
local StatusText      = Instance.new("TextLabel")
local Outlines        = Instance.new("ImageLabel")
local UIGradient      = Instance.new("UIGradient")
local Version         = Instance.new("TextLabel")
local UIGradient_2    = Instance.new("UIGradient")

-- Properties:
CycleWare.Name            = "CycleWare"
CycleWare.Parent          = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CycleWare.ZIndexBehavior  = Enum.ZIndexBehavior.Sibling
CycleWare.ResetOnSpawn    = false

Holder.Name               = "Holder"
Holder.Parent             = CycleWare
Holder.AnchorPoint        = Vector2.new(0.5, 0.5)
Holder.BackgroundColor3   = Color3.fromRGB(40, 40, 40)
Holder.BorderColor3       = Color3.fromRGB(0, 0, 0)
Holder.BorderSizePixel    = 0
Holder.Position           = UDim2.new(0.5, 0, 0.5, 0)
Holder.Size               = UDim2.new(0, 270, 0, 400)
Holder.Visible            = false

UICorner.Parent = Holder

MainFrame.Name             = "MainFrame"
MainFrame.Parent           = Holder
MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MainFrame.BorderColor3     = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel  = 0
MainFrame.Size             = UDim2.new(0, 270, 0, 400)
MainFrame.ZIndex           = 2

Buttons.Name   = "Buttons"
Buttons.Parent = MainFrame

Hitmarker.Name              = "Hitmarker"
Hitmarker.Parent            = Buttons
Hitmarker.Active            = false
Hitmarker.BackgroundColor3  = Color3.fromRGB(100, 100, 100)
Hitmarker.BorderColor3      = Color3.fromRGB(0, 0, 0)
Hitmarker.BorderSizePixel   = 0
Hitmarker.ClipsDescendants  = true
Hitmarker.Position          = UDim2.new(0.027, 0, 0.2, 0)
Hitmarker.Selectable        = false
Hitmarker.Size              = UDim2.new(0, 255, 0, 28)
Hitmarker.Font              = Enum.Font.Sarpanch
Hitmarker.Text              = "Hitmarker: OFF"
Hitmarker.TextColor3        = Color3.fromRGB(255, 255, 255)
Hitmarker.TextScaled        = true
Hitmarker.TextSize          = 60
Hitmarker.TextWrapped       = true

ShiftToggle.Name             = "ShiftToggle"
ShiftToggle.Parent           = Buttons
ShiftToggle.Active           = false
ShiftToggle.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
ShiftToggle.BorderColor3     = Color3.fromRGB(0, 0, 0)
ShiftToggle.BorderSizePixel  = 0
ShiftToggle.ClipsDescendants = true
ShiftToggle.Position         = UDim2.new(0.027, 0, 0.52, 0)
ShiftToggle.Selectable       = false
ShiftToggle.Size             = UDim2.new(0, 255, 0, 28)
ShiftToggle.Font             = Enum.Font.Sarpanch
ShiftToggle.Text             = "Shift Toggle: OFF"
ShiftToggle.TextColor3       = Color3.fromRGB(255, 255, 255)
ShiftToggle.TextScaled       = true
ShiftToggle.TextSize         = 60
ShiftToggle.TextWrapped      = true

ChatToggle.Name             = "ChatToggle"
ChatToggle.Parent           = Buttons
ChatToggle.Active           = false
ChatToggle.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
ChatToggle.BorderColor3     = Color3.fromRGB(0, 0, 0)
ChatToggle.BorderSizePixel  = 0
ChatToggle.ClipsDescendants = true
ChatToggle.Position         = UDim2.new(0.027, 0, 0.36, 0)
ChatToggle.Selectable       = false
ChatToggle.Size             = UDim2.new(0, 255, 0, 28)
ChatToggle.Font             = Enum.Font.Sarpanch
ChatToggle.Text             = "Chat Toggle (Z): OFF"
ChatToggle.TextColor3       = Color3.fromRGB(255, 255, 255)
ChatToggle.TextScaled       = true
ChatToggle.TextSize         = 60
ChatToggle.TextWrapped      = true

AutoReload.Name             = "AutoReload"
AutoReload.Parent           = Buttons
AutoReload.Active           = false
AutoReload.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
AutoReload.BorderColor3     = Color3.fromRGB(0, 0, 0)
AutoReload.BorderSizePixel  = 0
AutoReload.ClipsDescendants = true
AutoReload.Position         = UDim2.new(0.027, 0, 0.28, 0)
AutoReload.Selectable       = false
AutoReload.Size             = UDim2.new(0, 255, 0, 28)
AutoReload.Font             = Enum.Font.Sarpanch
AutoReload.Text             = "Auto Reload: OFF"
AutoReload.TextColor3       = Color3.fromRGB(255, 255, 255)
AutoReload.TextScaled       = true
AutoReload.TextSize         = 60
AutoReload.TextWrapped      = true

InfiniteStamina.Name             = "InfiniteStamina"
InfiniteStamina.Parent           = Buttons
InfiniteStamina.Active           = false
InfiniteStamina.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
InfiniteStamina.BorderColor3     = Color3.fromRGB(0, 0, 0)
InfiniteStamina.BorderSizePixel  = 0
InfiniteStamina.ClipsDescendants = true
InfiniteStamina.Position         = UDim2.new(0.027, 0, 0.6, 0)
InfiniteStamina.Selectable       = false
InfiniteStamina.Size             = UDim2.new(0, 255, 0, 28)
InfiniteStamina.Font             = Enum.Font.Sarpanch
InfiniteStamina.Text             = "Infinite Stamina: OFF"
InfiniteStamina.TextColor3       = Color3.fromRGB(255, 255, 255)
InfiniteStamina.TextScaled       = true
InfiniteStamina.TextSize         = 60
InfiniteStamina.TextWrapped      = true

GunTracers.Name             = "GunTracers"
GunTracers.Parent           = Buttons
GunTracers.Active           = false
GunTracers.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
GunTracers.BorderColor3     = Color3.fromRGB(0, 0, 0)
GunTracers.BorderSizePixel  = 0
GunTracers.ClipsDescendants = true
GunTracers.Position         = UDim2.new(0.027, 0, 0.44, 0)
GunTracers.Selectable       = false
GunTracers.Size             = UDim2.new(0, 255, 0, 28)
GunTracers.Font             = Enum.Font.Sarpanch
GunTracers.Text             = "Gun Tracers: ON"
GunTracers.TextColor3       = Color3.fromRGB(255, 255, 255)
GunTracers.TextScaled       = true
GunTracers.TextSize         = 60
GunTracers.TextWrapped      = true

GunTracerColors.Name             = "GunTracerColors"
GunTracerColors.Parent           = Buttons
GunTracerColors.Active           = false
GunTracerColors.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
GunTracerColors.BorderColor3     = Color3.fromRGB(0, 0, 0)
GunTracerColors.BorderSizePixel  = 0
GunTracerColors.ClipsDescendants = true
GunTracerColors.Position         = UDim2.new(0.027, 0, 0.68, 0)
GunTracerColors.Selectable       = false
GunTracerColors.Size             = UDim2.new(0, 255, 0, 28)
GunTracerColors.Font             = Enum.Font.Sarpanch
GunTracerColors.Text             = "Change Tracers Colors"
GunTracerColors.TextColor3       = Color3.fromRGB(255, 255, 255)
GunTracerColors.TextScaled       = true
GunTracerColors.TextSize         = 60
GunTracerColors.TextWrapped      = true

UICorner_2.Parent = MainFrame

LogoContainer.Name                  = "LogoContainer"
LogoContainer.Parent                = MainFrame
LogoContainer.BackgroundTransparency = 1
LogoContainer.BorderSizePixel       = 0
LogoContainer.ClipsDescendants      = true
LogoContainer.Position              = UDim2.new(0.852941155, 0, 0.0106100794, 0)
LogoContainer.Size                  = UDim2.new(0, 61, 0, 53)

Title.Name                  = "Title"
Title.Parent                = MainFrame
Title.BackgroundTransparency = 1
Title.BorderSizePixel       = 0
Title.Position              = UDim2.new(0.0183824319, 0, 0.0212201923, 0)
Title.Size                  = UDim2.new(0, 258, 0, 55)
Title.Image                 = "rbxassetid://101582543475607"

LoadSettings.Name             = "LoadSettings"
LoadSettings.Parent           = MainFrame
LoadSettings.Active           = false
LoadSettings.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
LoadSettings.BorderSizePixel  = 0
LoadSettings.ClipsDescendants = true
LoadSettings.Position         = UDim2.new(0.580484807, 0, 0.915675461, 0)
LoadSettings.Selectable       = false
LoadSettings.Size             = UDim2.new(0, 105, 0, 20)
LoadSettings.Font             = Enum.Font.Sarpanch
LoadSettings.Text             = "Load Settings"
LoadSettings.TextColor3       = Color3.fromRGB(255, 255, 255)
LoadSettings.TextScaled       = true
LoadSettings.TextSize         = 60
LoadSettings.TextWrapped      = true

SaveSettings.Name             = "SaveSettings"
SaveSettings.Parent           = MainFrame
SaveSettings.Active           = false
SaveSettings.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
SaveSettings.BorderSizePixel  = 0
SaveSettings.ClipsDescendants = true
SaveSettings.Position         = UDim2.new(0.0253388584, 0, 0.917216182, 0)
SaveSettings.Selectable       = false
SaveSettings.Size             = UDim2.new(0, 105, 0, 20)
SaveSettings.Font             = Enum.Font.Sarpanch
SaveSettings.Text             = "Save Settings"
SaveSettings.TextColor3       = Color3.fromRGB(255, 255, 255)
SaveSettings.TextScaled       = true
SaveSettings.TextSize         = 60
SaveSettings.TextWrapped      = true

SecondFrame.Name              = "SecondFrame"
SecondFrame.Parent            = Holder
SecondFrame.BackgroundColor3  = Color3.fromRGB(40, 40, 40)
SecondFrame.BorderSizePixel   = 0
SecondFrame.ClipsDescendants  = true
SecondFrame.Position          = UDim2.new(0.934407532, 0, 0, 0)
SecondFrame.Size              = UDim2.new(0, 17, 0, 400)
SecondFrame.ZIndex            = 0

CursorID.Name              = "CursorID"
CursorID.Parent            = SecondFrame
CursorID.BackgroundColor3  = Color3.fromRGB(27, 27, 27)
CursorID.BorderSizePixel   = 0
CursorID.Position          = UDim2.new(0.15, 0, 0.2, 0)
CursorID.Size              = UDim2.new(0, 143, 0, 28)
CursorID.Font              = Enum.Font.Sarpanch
CursorID.PlaceholderText   = "Cursor ID"
CursorID.Text              = ""
CursorID.TextColor3        = Color3.fromRGB(255, 255, 255)
CursorID.TextScaled        = true
CursorID.TextSize          = 14
CursorID.TextWrapped       = true

HitmarkerID.Name            = "HitmarkerID"
HitmarkerID.Parent          = SecondFrame
HitmarkerID.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
HitmarkerID.BorderSizePixel = 0
HitmarkerID.Position        = UDim2.new(0.151, 0, 0.275, 0)
HitmarkerID.Size            = UDim2.new(0, 143, 0, 28)
HitmarkerID.Font            = Enum.Font.Sarpanch
HitmarkerID.PlaceholderText = "Hitmarker ID"
HitmarkerID.Text            = ""
HitmarkerID.TextColor3      = Color3.fromRGB(255, 255, 255)
HitmarkerID.TextScaled      = true
HitmarkerID.TextSize        = 14
HitmarkerID.TextWrapped     = true

SoundID.Name            = "SoundID"
SoundID.Parent          = SecondFrame
SoundID.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
SoundID.BorderSizePixel = 0
SoundID.Position        = UDim2.new(0.151, 0, 0.35, 0)
SoundID.Size            = UDim2.new(0, 143, 0, 28)
SoundID.Font            = Enum.Font.Sarpanch
SoundID.PlaceholderText = "Sound ID"
SoundID.Text            = ""
SoundID.TextColor3      = Color3.fromRGB(255, 255, 255)
SoundID.TextScaled      = true
SoundID.TextSize        = 14
SoundID.TextWrapped     = true

UICorner_3.Parent = SecondFrame

Nutella.Name                  = "Nutella"
Nutella.Parent                = SecondFrame
Nutella.BackgroundTransparency = 1
Nutella.BorderSizePixel       = 0
Nutella.Position              = UDim2.new(0.13992627, 0, 0.908026874, 0)
Nutella.Size                  = UDim2.new(0, 147, 0, 27)
Nutella.Image                 = "rbxassetid://87572503322570"

Back.Name                  = "Back"
Back.Parent                = SecondFrame
Back.Active                = false
Back.BackgroundTransparency = 1
Back.Position              = UDim2.new(0.825136602, 0, 0, 0)
Back.Selectable            = false
Back.Size                  = UDim2.new(0.174863428, 0, 0.0756756738, 0)
Back.Image                 = "rbxassetid://4370337241"
Back.ScaleType             = Enum.ScaleType.Fit

CursorSize.Name            = "CursorSize"
CursorSize.Parent          = SecondFrame
CursorSize.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
CursorSize.BorderSizePixel = 0
CursorSize.Position        = UDim2.new(0.15, 0, 0.44, 0)
CursorSize.Size            = UDim2.new(0, 143, 0, 28)
CursorSize.Font            = Enum.Font.Sarpanch
CursorSize.PlaceholderText = "Cursor Size"
CursorSize.Text            = ""
CursorSize.TextColor3      = Color3.fromRGB(255, 255, 255)
CursorSize.TextScaled      = true
CursorSize.TextSize        = 14
CursorSize.TextWrapped     = true

HitmarkerSize.Name            = "HitmarkerSize"
HitmarkerSize.Parent          = SecondFrame
HitmarkerSize.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
HitmarkerSize.BorderSizePixel = 0
HitmarkerSize.Position        = UDim2.new(0.15, 0, 0.515, 0)
HitmarkerSize.Size            = UDim2.new(0, 143, 0, 28)
HitmarkerSize.Font            = Enum.Font.Sarpanch
HitmarkerSize.PlaceholderText = "Hitmarker Size"
HitmarkerSize.Text            = ""
HitmarkerSize.TextColor3      = Color3.fromRGB(255, 255, 255)
HitmarkerSize.TextScaled      = true
HitmarkerSize.TextSize        = 14
HitmarkerSize.TextWrapped     = true

SoundVolume.Name            = "SoundVolume"
SoundVolume.Parent          = SecondFrame
SoundVolume.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
SoundVolume.BorderSizePixel = 0
SoundVolume.Position        = UDim2.new(0.15, 0, 0.59, 0)
SoundVolume.Size            = UDim2.new(0, 143, 0, 28)
SoundVolume.Font            = Enum.Font.Sarpanch
SoundVolume.PlaceholderText = "Sound Volume"
SoundVolume.Text            = ""
SoundVolume.TextColor3      = Color3.fromRGB(255, 255, 255)
SoundVolume.TextScaled      = true
SoundVolume.TextSize        = 14
SoundVolume.TextWrapped     = true

OpenBackpackKey.Name            = "OpenBackpackKey"
OpenBackpackKey.Parent          = SecondFrame
OpenBackpackKey.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
OpenBackpackKey.BorderSizePixel = 0
OpenBackpackKey.Position        = UDim2.new(0.15, 0, 0.6675, 0)
OpenBackpackKey.Size            = UDim2.new(0, 143, 0, 28)
OpenBackpackKey.Font            = Enum.Font.Sarpanch
OpenBackpackKey.PlaceholderText = "Backpack Key"
OpenBackpackKey.Text            = ""
OpenBackpackKey.TextColor3      = Color3.fromRGB(255, 255, 255)
OpenBackpackKey.TextScaled      = true
OpenBackpackKey.TextSize        = 14
OpenBackpackKey.TextWrapped     = true

GunVolume.Name            = "GunVolume"
GunVolume.Parent          = SecondFrame
GunVolume.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
GunVolume.BorderSizePixel = 0
GunVolume.Position        = UDim2.new(0.15, 0, 0.7575, 0)
GunVolume.Size            = UDim2.new(0, 143, 0, 28)
GunVolume.Font            = Enum.Font.Sarpanch
GunVolume.PlaceholderText = "Gun Volume"
GunVolume.Text            = ""
GunVolume.TextColor3      = Color3.fromRGB(255, 255, 255)
GunVolume.TextScaled      = true
GunVolume.TextSize        = 14
GunVolume.TextWrapped     = true

Applier.Name             = "Applier"
Applier.Parent           = GunVolume
Applier.Active           = false
Applier.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Applier.BorderSizePixel  = 0
Applier.ClipsDescendants = true
Applier.Position         = UDim2.new(0.00414654939, 0, 0.970356524, 0)
Applier.Selectable       = false
Applier.Size             = UDim2.new(0, 142, 0, 17)
Applier.Font             = Enum.Font.Sarpanch
Applier.Text             = "Apply to All"
Applier.TextColor3       = Color3.fromRGB(255, 255, 255)
Applier.TextScaled       = true
Applier.TextSize         = 60
Applier.TextWrapped      = true

Logo.Name                  = "Logo"
Logo.Parent                = SecondFrame
Logo.BackgroundTransparency = 1
Logo.BorderSizePixel       = 0
Logo.Position              = UDim2.new(0.364174426, 0, 0.00770659558, 0)
Logo.Size                  = UDim2.new(0, 64, 0, 64)
Logo.Image                 = "rbxassetid://116957729492323"

LoaderFrame.Name             = "Loader"
LoaderFrame.Parent           = CycleWare
LoaderFrame.AnchorPoint      = Vector2.new(0.5, 0.5)
LoaderFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
LoaderFrame.BorderSizePixel  = 0
LoaderFrame.ClipsDescendants = true
LoaderFrame.Position         = UDim2.new(0.5, 0, 0.5, 0)
LoaderFrame.Size             = UDim2.new(0, 474, 0, 369)
LoaderFrame.Visible          = true
LoaderFrame.ZIndex           = 0

UICorner_4.Parent = LoaderFrame

Logo_2.Name                  = "Logo"
Logo_2.Parent                = LoaderFrame
Logo_2.BackgroundTransparency = 1
Logo_2.BorderSizePixel       = 0
Logo_2.Position              = UDim2.new(0.3325288, 0, -0.000423524441, 0)
Logo_2.Size                  = UDim2.new(0, 168, 0, 169)
Logo_2.Image                 = "rbxassetid://116957729492323"

Nutella_2.Name                  = "Nutella"
Nutella_2.Parent                = LoaderFrame
Nutella_2.BackgroundTransparency = 1
Nutella_2.BorderSizePixel       = 0
Nutella_2.Position              = UDim2.new(0.281276524, 0, 0.625592828, 0)
Nutella_2.Size                  = UDim2.new(0, 215, 0, 41)
Nutella_2.Image                 = "rbxassetid://87572503322570"

CycleWare_2.Name                  = "CycleWare"
CycleWare_2.Parent                = LoaderFrame
CycleWare_2.BackgroundTransparency = 1
CycleWare_2.BorderSizePixel       = 0
CycleWare_2.Position              = UDim2.new(0.16313307, 0, 0.449440986, 0)
CycleWare_2.Size                  = UDim2.new(0, 328, 0, 66)
CycleWare_2.Image                 = "rbxassetid://101582543475607"

ProgressBar.Name             = "ProgressBar"
ProgressBar.Parent           = LoaderFrame
ProgressBar.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
ProgressBar.BorderSizePixel  = 0
ProgressBar.Position         = UDim2.new(0, 14, 0, 334)
ProgressBar.Size             = UDim2.new(0, 446, 0, 4)

Bar.Name             = "Bar"
Bar.Parent           = ProgressBar
Bar.BackgroundColor3 = Color3.fromRGB(61, 143, 220)
Bar.BorderSizePixel  = 0
Bar.Size             = UDim2.new(0, 0, 1, 0)

ImageLabel.Parent               = ProgressBar
ImageLabel.BackgroundTransparency = 1
ImageLabel.Size                 = UDim2.new(1, 0, 1, 0)
ImageLabel.Image                = "rbxassetid://2764171053"
ImageLabel.ImageColor3          = Color3.fromRGB(45, 45, 45)
ImageLabel.ScaleType            = Enum.ScaleType.Slice
ImageLabel.SliceCenter          = Rect.new(2, 2, 254, 254)

StatusText.Name                  = "StatusText"
StatusText.Parent                = LoaderFrame
StatusText.BackgroundTransparency = 1
StatusText.Position              = UDim2.new(0, 146, 0, 299)
StatusText.Size                  = UDim2.new(0, 180, 0, 25)
StatusText.Font                  = Enum.Font.SourceSans
StatusText.Text                  = "Loading..."
StatusText.TextColor3            = Color3.fromRGB(255, 255, 255)
StatusText.TextSize              = 14

Outlines.Name                  = "Outlines"
Outlines.Parent                = LoaderFrame
Outlines.BackgroundTransparency = 1
Outlines.BorderSizePixel       = 0
Outlines.Size                  = UDim2.new(0.978902876, 10, 0.972899735, 10)
Outlines.Image                 = "rbxassetid://1427967925"
Outlines.ScaleType             = Enum.ScaleType.Slice
Outlines.SliceCenter           = Rect.new(6, 6, 25, 25)
Outlines.TileSize              = UDim2.new(0, 20, 0, 20)

UIGradient.Rotation    = -30
UIGradient.Transparency = NumberSequence.new{
    NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.5, 0),
    NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 0),
}
UIGradient.Parent = Outlines

Version.Name                  = "Version"
Version.Parent                = LoaderFrame
Version.BackgroundTransparency = 1
Version.Position              = UDim2.new(1.14345992, -110, 1.04065049, -35)
Version.Size                  = UDim2.new(0, 35, 0, 20)
Version.Font                  = Enum.Font.SourceSans
Version.Text                  = "V1.5.2"
Version.TextColor3            = Color3.fromRGB(255, 255, 255)
Version.TextSize              = 14
Version.TextXAlignment        = Enum.TextXAlignment.Right

UIGradient_2.Transparency = NumberSequence.new{
    NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0, 1),
    NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 0),
}
UIGradient_2.Parent = Version

-- ===================== GuiResize (inline module) =====================
local GuiResize
do
    local uis         = game:GetService("UserInputService")
    local textService = game:GetService("TextService")

    GuiResize = {}

    function GuiResize.makeDraggable(frame)
        local dragging, dragInput, dragStart, startPos

        local function update(input)
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(
                startPos.X.Scale, startPos.X.Offset + delta.X,
                startPos.Y.Scale, startPos.Y.Offset + delta.Y
            )
        end

        frame.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1
                or input.UserInputType == Enum.UserInputType.Touch then
                dragging  = true
                dragStart = input.Position
                startPos  = frame.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end
        end)

        frame.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement
                or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)

        uis.InputChanged:Connect(function(input)
            if input == dragInput and dragging then update(input) end
        end)
    end
end

-- Activate dragging on the main holder
GuiResize.makeDraggable(Holder)

-- ===================== Structured return table =====================
return {
    ScreenGui   = CycleWare,
    Holder      = Holder,
    MainFrame   = MainFrame,
    SecondFrame = SecondFrame,
    TitleLabel  = Title,
    LoaderFrame = LoaderFrame,
    ProgressBar = Bar,
    StatusText  = StatusText,

    Buttons = {
        Hitmarker        = Hitmarker,
        ShiftToggle      = ShiftToggle,
        ChatToggle       = ChatToggle,
        AutoReload       = AutoReload,
        InfiniteStamina  = InfiniteStamina,
        GunTracers       = GunTracers,
        GunTracerColors  = GunTracerColors,
        GunVolumeApplier = Applier,
        SaveSettings     = SaveSettings,
        LoadSettings     = LoadSettings,
        Back             = Back,
    },

    TextBoxes = {
        CursorID        = CursorID,
        HitmarkerID     = HitmarkerID,
        SoundID         = SoundID,
        CursorSize      = CursorSize,
        HitmarkerSize   = HitmarkerSize,
        SoundVolume     = SoundVolume,
        OpenBackpackKey = OpenBackpackKey,
        GunVolume       = GunVolume,
    },
}
