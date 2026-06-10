-- UICore — CWRealPrivv
-- Single merged LocalScript: Drag, UIToggle, ShineEffect,
-- GunSoundIDController, GunVolumeController, CursorController
-- External executor mode: paths resolved via PlayerGui, no script.Parent

local Players          = game:GetService("Players")
local RunService       = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local GuiService       = game:GetService("GuiService")
local LocalPlayer      = Players.LocalPlayer
local Mouse            = LocalPlayer:GetMouse()

local PlayerGui        = LocalPlayer:WaitForChild("PlayerGui")
local CWGui            = PlayerGui:WaitForChild("CWRealPrivv")
local MainFrame        = CWGui:WaitForChild("MainFrame")
local TextBoxes        = MainFrame:WaitForChild("TextBoxes")
local TitleLabel       = MainFrame:WaitForChild("Elements"):WaitForChild("Title")

-- ─────────────────────────────────────────────────────────────
-- 1. DRAG  (extracted from GuiResize.makeDraggable)
-- ─────────────────────────────────────────────────────────────
do
	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		MainFrame.Position = UDim2.new(
			startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y
		)
	end

	MainFrame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1
			or input.UserInputType == Enum.UserInputType.Touch then
			dragging  = true
			dragStart = input.Position
			startPos  = MainFrame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	MainFrame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement
			or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end

-- ─────────────────────────────────────────────────────────────
-- 2. UI TOGGLE  (Insert key)
-- ─────────────────────────────────────────────────────────────
do
	local visible = true
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if input.KeyCode == Enum.KeyCode.Insert then
			visible = not visible
			MainFrame.Visible = visible
		end
	end)
end

-- ─────────────────────────────────────────────────────────────
-- 3. SHINE EFFECT  (Title gradient shimmer)
-- ─────────────────────────────────────────────────────────────
do
	local label    = TitleLabel
	local gradient = Instance.new("UIGradient")
	gradient.Rotation = 50
	gradient.Parent   = label
	label.BackgroundTransparency = 1
	label.ImageColor3 = Color3.new(1, 1, 1)

	local GREY  = Color3.fromRGB(160, 160, 160)
	local WHITE = Color3.fromRGB(255, 255, 255)

	local function lerpColor(a, b, t)
		return Color3.new(
			a.R + (b.R - a.R) * t,
			a.G + (b.G - a.G) * t,
			a.B + (b.B - a.B) * t
		)
	end

	local function smoothstep(t)
		return t * t * (3 - 2 * t)
	end

	local function makeSequence(base, shine)
		local mid1_far  = lerpColor(base, shine, 0.15)
		local mid1_near = lerpColor(base, shine, 0.60)
		local mid2_far  = lerpColor(base, shine, 0.08)
		local mid2_near = lerpColor(base, shine, 0.40)
		local peak2     = lerpColor(base, shine, 0.70)
		return ColorSequence.new({
			ColorSequenceKeypoint.new(0.00, base),
			ColorSequenceKeypoint.new(0.15, base),
			ColorSequenceKeypoint.new(0.22, mid1_far),
			ColorSequenceKeypoint.new(0.35, mid1_near),
			ColorSequenceKeypoint.new(0.50, shine),
			ColorSequenceKeypoint.new(0.62, mid1_near),
			ColorSequenceKeypoint.new(0.72, mid1_far),
			ColorSequenceKeypoint.new(0.78, base),
			ColorSequenceKeypoint.new(0.80, base),
			ColorSequenceKeypoint.new(0.83, mid2_far),
			ColorSequenceKeypoint.new(0.88, mid2_near),
			ColorSequenceKeypoint.new(0.93, peak2),
			ColorSequenceKeypoint.new(0.97, mid2_far),
			ColorSequenceKeypoint.new(1.00, base),
		})
	end

	local START_OFFSET = 1.8
	local END_OFFSET   = -1.8
	local SWEEP_TIME   = 3.5
	local PAUSE_TIME   = 2.0
	local SHINE_SWEEP  = 3.5

	local sweepT     = 0
	local colorT     = 0
	local colorDir   = 1
	local inPause    = false
	local pauseTimer = 0
	local shinePhase = "idle"
	local shineT     = -1

	RunService.Heartbeat:Connect(function(dt)
		if inPause then
			pauseTimer += dt
			if shinePhase == "idle" then
				shinePhase = "shine2"
				shineT     = 0
			end
			if shinePhase == "shine2" or shinePhase == "shine3" then
				shineT += dt / SHINE_SWEEP
				if shineT >= 1 then
					if shinePhase == "shine2" then
						shinePhase = "shine3"
						shineT     = 0
					else
						shinePhase = "done"
						shineT     = -1
					end
				end
			end
			if shinePhase == "shine2" or shinePhase == "shine3" then
				gradient.Offset = Vector2.new(
					START_OFFSET + (END_OFFSET - START_OFFSET) * shineT, 0
				)
			else
				gradient.Offset = Vector2.new(START_OFFSET, 0)
			end
			if pauseTimer >= PAUSE_TIME and shinePhase == "done" then
				inPause    = false
				pauseTimer = 0
				sweepT     = 0
				shinePhase = "idle"
				shineT     = -1
			end
			return
		end
		local step = dt / SWEEP_TIME
		sweepT = sweepT + step
		colorT = math.clamp(colorT + colorDir * step, 0, 1)
		if sweepT >= 1 then
			sweepT   = 1
			inPause  = true
			colorDir = -colorDir
		end
		local smooth = smoothstep(colorT)
		gradient.Offset = Vector2.new(
			START_OFFSET + (END_OFFSET - START_OFFSET) * sweepT, 0
		)
		gradient.Color = makeSequence(
			lerpColor(GREY,  WHITE, smooth),
			lerpColor(WHITE, GREY,  smooth)
		)
	end)
end

-- ─────────────────────────────────────────────────────────────
-- 4. GUN SOUND ID CONTROLLER
-- ─────────────────────────────────────────────────────────────
do
	local textBox     = TextBoxes.GunSoundID
	local TARGET_NAME = "ShootSound"
	local overrideData = {}

	local function toAssetId(input)
		input = input:match("^%s*(.-)%s*$")
		if input:match("^%d+$") then
			return "rbxassetid://" .. input
		elseif input:match("^rbxassetid://%d+$") then
			return input
		end
		return nil
	end

	local function getActiveSoundId()
		return toAssetId(textBox.Text)
	end

	local function isActive()
		return getActiveSoundId() ~= nil
	end

	local function removeOverride(sound)
		local data = overrideData[sound]
		if not data then return end
		pcall(function() data.conn:Disconnect() end)
		overrideData[sound] = nil
		if sound and sound.Parent then
			sound.SoundId = data.originalSoundId
		end
	end

	local function applyOverride(sound)
		local id = getActiveSoundId()
		if not id then removeOverride(sound); return end
		local data = overrideData[sound]
		if data then
			if sound.SoundId ~= id then sound.SoundId = id end
			return
		end
		local originalSoundId = sound.SoundId
		sound.SoundId = id
		local conn = sound:GetPropertyChangedSignal("SoundId"):Connect(function()
			local activeId = getActiveSoundId()
			if activeId and sound.SoundId ~= activeId then
				sound.SoundId = activeId
			end
		end)
		overrideData[sound] = { conn = conn, originalSoundId = originalSoundId }
	end

	local function handleSound(sound)
		if not sound:IsA("Sound") then return end
		if sound.Name ~= TARGET_NAME then return end
		if isActive() then applyOverride(sound) else removeOverride(sound) end
	end

	local function scanAll()
		for sound in pairs(overrideData) do handleSound(sound) end
		for _, desc in ipairs(workspace:GetDescendants()) do handleSound(desc) end
	end

	workspace.DescendantAdded:Connect(function(inst)
		if inst:IsA("Sound") and inst.Name == TARGET_NAME then
			task.defer(function() handleSound(inst) end)
		end
	end)

	workspace.DescendantRemoving:Connect(function(inst)
		if not inst:IsA("Sound") then return end
		local data = overrideData[inst]
		if data then
			pcall(function() data.conn:Disconnect() end)
			overrideData[inst] = nil
		end
	end)

	LocalPlayer.CharacterAdded:Connect(function()
		task.wait()
		scanAll()
	end)

	local initialParsed = toAssetId(textBox.Text)
	local lastValidId   = initialParsed and (initialParsed:match("%d+") or "") or ""

	textBox.FocusLost:Connect(function()
		local trimmed = textBox.Text:match("^%s*(.-)%s*$")
		if trimmed == "" then
			textBox.Text = lastValidId
		else
			local parsed = toAssetId(trimmed)
			if parsed then
				lastValidId  = parsed:match("%d+") or ""
				textBox.Text = lastValidId
			else
				textBox.Text = lastValidId
			end
		end
		scanAll()
	end)

	RunService.PreRender:Connect(function()
		if not isActive() then return end
		local activeId = getActiveSoundId()
		if not activeId then return end
		for sound, data in pairs(overrideData) do
			if not sound or not sound.Parent then
				pcall(function() data.conn:Disconnect() end)
				overrideData[sound] = nil
				continue
			end
			if sound.SoundId ~= activeId then
				sound.SoundId = activeId
			end
		end
	end)

	scanAll()
end

-- ─────────────────────────────────────────────────────────────
-- 5. GUN VOLUME CONTROLLER
-- ─────────────────────────────────────────────────────────────
do
	local textBox      = TextBoxes.GunVolume
	local TARGET_NAMES = { ShootSound = true, SecondarySound = true }
	local overrideData = {}

	local function getActiveVolume()
		local n = tonumber(textBox.Text)
		if n then return math.clamp(n, 0, 10) end
		return nil
	end

	local function isActive()
		return getActiveVolume() ~= nil
	end

	local function removeOverride(sound)
		local data = overrideData[sound]
		if not data then return end
		pcall(function() data.conn:Disconnect() end)
		overrideData[sound] = nil
		if sound and sound.Parent then
			sound.Volume = data.originalVolume
		end
	end

	local function applyOverride(sound)
		local vol = getActiveVolume()
		if not vol then removeOverride(sound); return end
		local data = overrideData[sound]
		if data then
			if sound.Volume ~= vol then sound.Volume = vol end
			return
		end
		local originalVolume = sound.Volume
		sound.Volume = vol
		local conn = sound:GetPropertyChangedSignal("Volume"):Connect(function()
			local v = getActiveVolume()
			if v and sound.Volume ~= v then sound.Volume = v end
		end)
		overrideData[sound] = { conn = conn, originalVolume = originalVolume }
	end

	local function handleSound(sound)
		if not sound:IsA("Sound") then return end
		if not TARGET_NAMES[sound.Name] then return end
		if isActive() then applyOverride(sound) else removeOverride(sound) end
	end

	local function scanAll()
		for sound in pairs(overrideData) do handleSound(sound) end
		for _, desc in ipairs(workspace:GetDescendants()) do handleSound(desc) end
	end

	workspace.DescendantAdded:Connect(function(inst)
		if inst:IsA("Sound") and TARGET_NAMES[inst.Name] then
			task.defer(function() handleSound(inst) end)
		end
	end)

	workspace.DescendantRemoving:Connect(function(inst)
		if not inst:IsA("Sound") then return end
		local data = overrideData[inst]
		if data then
			pcall(function() data.conn:Disconnect() end)
			overrideData[inst] = nil
		end
	end)

	LocalPlayer.CharacterAdded:Connect(function()
		task.wait()
		scanAll()
	end)

	local lastValidVol = tonumber(textBox.Text)

	textBox.FocusLost:Connect(function()
		local trimmed = textBox.Text:match("^%s*(.-)%s*$")
		if trimmed == "" then
			textBox.Text = lastValidVol ~= nil and tostring(lastValidVol) or ""
		else
			local n = tonumber(trimmed)
			if n and n >= 0 and n <= 10 then
				lastValidVol  = n
				textBox.Text  = tostring(n)
			else
				textBox.Text = lastValidVol ~= nil and tostring(lastValidVol) or ""
			end
		end
		scanAll()
	end)

	RunService.PreRender:Connect(function()
		if not isActive() then return end
		local vol = getActiveVolume()
		if not vol then return end
		for sound, data in pairs(overrideData) do
			if not sound or not sound.Parent then
				pcall(function() data.conn:Disconnect() end)
				overrideData[sound] = nil
				continue
			end
			if sound.Volume ~= vol then sound.Volume = vol end
		end
	end)

	scanAll()
end

-- ─────────────────────────────────────────────────────────────
-- 6. CURSOR CONTROLLER
-- ─────────────────────────────────────────────────────────────
do
	local textBox      = TextBoxes.CursorID
	local CursorSizeBox = TextBoxes:FindFirstChild("CursorSize")

	local COLOR_WHITE = Color3.fromRGB(255, 255, 255)
	local COLOR_GREEN = Color3.fromRGB(0,   255, 0  )
	local COLOR_RED   = Color3.fromRGB(255, 0,   0  )

	local _insetX, _insetY = GuiService:GetGuiInset().X, GuiService:GetGuiInset().Y
	GuiService:GetPropertyChangedSignal("TopbarInset"):Connect(function()
		local inset = GuiService:GetGuiInset()
		_insetX = inset.X
		_insetY = inset.Y
	end)

	local _mx, _my = 0, 0
	UserInputService.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			_mx = input.Position.X + _insetX
			_my = input.Position.Y + _insetY
		end
	end)

	local _myTeamColor = LocalPlayer.TeamColor
	LocalPlayer:GetPropertyChangedSignal("TeamColor"):Connect(function()
		_myTeamColor = LocalPlayer.TeamColor
	end)

	local _lastTarget    = nil
	local _lastTintColor = COLOR_WHITE

	local IAPortable = Instance.new("ScreenGui")
	IAPortable.Name           = "CWPrivv_Cursor"
	IAPortable.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	IAPortable.ResetOnSpawn   = false
	IAPortable.IgnoreGuiInset = true
	IAPortable.DisplayOrder   = 9999
	IAPortable.Parent         = game:GetService("CoreGui")

	local Cursor = Instance.new("ImageLabel")
	Cursor.Name                   = "Cursor"
	Cursor.Parent                 = IAPortable
	Cursor.AnchorPoint            = Vector2.new(0.5, 0.5)
	Cursor.BackgroundTransparency = 1
	Cursor.Size                   = UDim2.new(0, 85, 0, 85)
	Cursor.Image                  = ""
	Cursor.ScaleType              = Enum.ScaleType.Fit
	Cursor.Visible                = false
	Cursor.Position               = UDim2.new(0, 0, 0, 0)

	local function toAssetId(input)
		input = input:match("^%s*(.-)%s*$")
		if input:match("^%d+$") then
			return "rbxassetid://" .. input
		elseif input:match("^rbxassetid://%d+$") then
			return input
		end
		return nil
	end

	local function parseSize(input)
		input = input:match("^%s*(.-)%s*$")
		local n = tonumber(input)
		if n and n >= 1 then return math.floor(n) end
		return nil
	end

	local _cursorId   = toAssetId(textBox.Text)
	local _cursorSize = 70

	local function applySize()
		if CursorSizeBox then
			local s = parseSize(CursorSizeBox.Text)
			_cursorSize = s or 70
		end
		Cursor.Size = UDim2.new(0, _cursorSize, 0, _cursorSize)
	end

	local function isEnabled()
		return _cursorId ~= nil
	end

	local _sniperActive = UserInputService.MouseBehavior == Enum.MouseBehavior.LockCenter

	local function applyTrack()
		if not isEnabled() then
			UserInputService.MouseIconEnabled = true
			Cursor.Visible = false
			return
		end
		UserInputService.MouseIconEnabled = false
		Cursor.Image   = _cursorId
		Cursor.Visible = true
		if _sniperActive then
			Cursor.Position = UDim2.new(0.5, 0, 0.5, 0)
		end
	end

	UserInputService:GetPropertyChangedSignal("MouseBehavior"):Connect(function()
		_sniperActive = UserInputService.MouseBehavior == Enum.MouseBehavior.LockCenter
		applyTrack()
	end)

	local lastValidId = _cursorId and (_cursorId:match("%d+") or "") or ""

	textBox.FocusLost:Connect(function()
		local trimmed = textBox.Text:match("^%s*(.-)%s*$")
		if trimmed == "" then
			textBox.Text = lastValidId
			_cursorId = lastValidId ~= "" and toAssetId(lastValidId) or nil
		else
			local parsed = toAssetId(trimmed)
			if parsed then
				lastValidId  = parsed:match("%d+") or ""
				_cursorId    = parsed
				textBox.Text = lastValidId
			else
				textBox.Text = lastValidId
				_cursorId = lastValidId ~= "" and toAssetId(lastValidId) or nil
			end
		end
		Cursor.Image = _cursorId or ""
		applyTrack()
	end)

	local lastValidSize = CursorSizeBox and CursorSizeBox.Text ~= "" and CursorSizeBox.Text or "70"

	if CursorSizeBox then
		CursorSizeBox.FocusLost:Connect(function()
			local trimmed = CursorSizeBox.Text:match("^%s*(.-)%s*$")
			if trimmed == "" then
				CursorSizeBox.Text = lastValidSize
			else
				local s = parseSize(trimmed)
				if s then
					lastValidSize = tostring(s)
				else
					CursorSizeBox.Text = lastValidSize
				end
			end
			applySize()
		end)
	end

	RunService.PreRender:Connect(function()
		if not isEnabled() then return end
		if not _sniperActive then
			Cursor.Position = UDim2.fromOffset(_mx, _my)
		end
		local Target = Mouse.Target
		if Target ~= _lastTarget then
			_lastTarget = Target
			if not Target or not Target.Parent then
				_lastTintColor = COLOR_WHITE
			else
				local Limb      = Target.Parent:FindFirstChildOfClass("Humanoid")
				local Accessory = Target.Parent.Parent
					and Target.Parent.Parent:FindFirstChildOfClass("Humanoid")
				local tintPlayer = nil
				if Limb then
					tintPlayer = Players:GetPlayerFromCharacter(Target.Parent)
				elseif Accessory then
					tintPlayer = Players:GetPlayerFromCharacter(Target.Parent.Parent)
				end
				if tintPlayer then
					_lastTintColor = tintPlayer.TeamColor == _myTeamColor
						and COLOR_GREEN or COLOR_RED
				else
					_lastTintColor = COLOR_WHITE
				end
			end
		end
		Cursor.ImageColor3 = _lastTintColor
	end)

	local parsed = toAssetId(textBox.Text)
	_cursorId = parsed
	if parsed then Cursor.Image = parsed end
	applySize()
	applyTrack()

	-- Expose for ConfigManager Tier 3 fallback
	_G.cwprivv_applyCursorId = applyTrack
end
