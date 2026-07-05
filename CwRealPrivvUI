-- ═══════════════════════════════════════════════════════════════════════
-- CWRealPrivv · GUI Creation Script
-- Designed for external execution via loadstring(game:HttpGet("..."))()
-- Creates the CWRealPrivv ScreenGui in PlayerGui so that CWRealPrivvFeatures
-- (the companion features script) can locate it via WaitForChild.
--
-- NOTE on gethui(): the cursor and hitmarker overlay ScreenGuis are parented
-- to gethui() inside CWRealPrivvFeatures — not here. The main CWRealPrivv GUI
-- lives in PlayerGui so the features script finds it reliably via WaitForChild.
-- ═══════════════════════════════════════════════════════════════════════

local Players     = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui   = LocalPlayer:WaitForChild("PlayerGui")

-- ── Duplicate prevention ───────────────────────────────────────────────
-- Safe to re-execute: destroys any previous instance before rebuilding.
local prev = PlayerGui:FindFirstChild("CWRealPrivv")
if prev then prev:Destroy() end

-- ── ScreenGui ──────────────────────────────────────────────────────────
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name           = "CWRealPrivv"
ScreenGui.IgnoreGuiInset = true
ScreenGui.ScreenInsets   = Enum.ScreenInsets.DeviceSafeInsets
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn   = false
ScreenGui.Parent         = PlayerGui

-- ── MainFrame ──────────────────────────────────────────────────────────
local MainFrame = Instance.new("ImageLabel")
MainFrame.Name             = "MainFrame"
MainFrame.BorderSizePixel  = 0
MainFrame.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
MainFrame.Image            = "rbxassetid://121279561804698"
MainFrame.Size             = UDim2.new(0, 245, 0, 257)
MainFrame.Position         = UDim2.new(0.42682, 0, 0.36264, 0)
MainFrame.BorderColor3     = Color3.fromRGB(0, 0, 0)
MainFrame.Parent           = ScreenGui

Instance.new("UICorner", MainFrame)

-- ── Elements folder ────────────────────────────────────────────────────
local Elements = Instance.new("Folder")
Elements.Name   = "Elements"
Elements.Parent = MainFrame

local function makeImage(name, image, size, position)
	local img                   = Instance.new("ImageLabel")
	img.Name                    = name
	img.BorderSizePixel         = 0
	img.BackgroundColor3        = Color3.fromRGB(255, 255, 255)
	img.BackgroundTransparency  = 1
	img.Image                   = image
	img.Size                    = size
	img.Position                = position
	img.BorderColor3            = Color3.fromRGB(0, 0, 0)
	img.Parent                  = Elements
	return img
end

makeImage("RealPrivv",
	"rbxassetid://116830707628945",
	UDim2.new(0, 148, 0, 19),
	UDim2.new(0.214,   0, 0.26,    0))

makeImage("Nutella",
	"rbxassetid://87572503322570",
	UDim2.new(0, 97, 0, 17),
	UDim2.new(0.41042, 0, 0.18697, 0))

makeImage("Title",
	"rbxassetid://106022980722219",
	UDim2.new(0, 153, 0, 62),
	UDim2.new(0.17737, 0, 0.03268, 0))

-- ── TextBoxes folder ───────────────────────────────────────────────────
local TextBoxes = Instance.new("Folder")
TextBoxes.Name   = "TextBoxes"
TextBoxes.Parent = MainFrame

local FONT = Font.new(
	"rbxasset://fonts/families/Sarpanch.json",
	Enum.FontWeight.Regular,
	Enum.FontStyle.Normal
)

local function makeTextBox(name, placeholder, defaultText, position)
	local tb                 = Instance.new("TextBox")
	tb.Name                  = name
	tb.BorderSizePixel       = 0
	tb.TextWrapped           = true
	tb.TextSize              = 14
	tb.TextColor3            = Color3.fromRGB(255, 255, 255)
	tb.TextScaled            = true
	tb.BackgroundColor3      = Color3.fromRGB(28, 28, 28)
	tb.FontFace              = FONT
	tb.PlaceholderText       = placeholder
	tb.Size                  = UDim2.new(0, 224, 0, 21)
	tb.Position              = position
	tb.BorderColor3          = Color3.fromRGB(21, 21, 21)
	tb.Text                  = defaultText
	tb.Parent                = TextBoxes
	return tb
end

--                name              placeholder             default text      Y-position
makeTextBox("CursorID",      "Cursor ID",            "2025732283",    UDim2.new(0.04299, 0, 0.34763, 0))
makeTextBox("CursorSize",    "Cursor Size",          "70",            UDim2.new(0.0426,  0, 0.42245, 0))
makeTextBox("HitmarkerID",   "Hitmarker ID",         "",              UDim2.new(0.0426,  0, 0.54004, 0))
makeTextBox("HitmarkerSize", "Hitmarker Size",       "",              UDim2.new(0.0426,  0, 0.60838, 0))
makeTextBox("HitSoundID",    "Hit Sound ID",         "",              UDim2.new(0.0426,  0, 0.68135, 0))
makeTextBox("GunSoundID",    "Gun Sound Changer ID", "125838762216299", UDim2.new(0.04228, 0, 0.81326, 0))
makeTextBox("GunVolume",     "Gun Volume",           "",              UDim2.new(0.04228, 0, 0.8869,  0))
