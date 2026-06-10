local G2L = {};

-- StarterGui.CWRealPrivv
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[CWRealPrivv]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.CWRealPrivv.MainFrame
G2L["2"] = Instance.new("ImageLabel", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["2"]["Image"] = [[rbxassetid://121279561804698]];
G2L["2"]["Size"] = UDim2.new(0, 246, 0, 247);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[MainFrame]];
G2L["2"]["Position"] = UDim2.new(0.42682, 0, 0.36264, 0);


-- StarterGui.CWRealPrivv.MainFrame.Resizer
G2L["3"] = Instance.new("LocalScript", G2L["2"]);
G2L["3"]["Name"] = [[Resizer]];


-- StarterGui.CWRealPrivv.MainFrame.Resizer.GuiResize
G2L["4"] = Instance.new("ModuleScript", G2L["3"]);
G2L["4"]["Name"] = [[GuiResize]];


-- StarterGui.CWRealPrivv.MainFrame.UIToggle
G2L["5"] = Instance.new("LocalScript", G2L["2"]);
G2L["5"]["Name"] = [[UIToggle]];


-- StarterGui.CWRealPrivv.MainFrame.Elements
G2L["6"] = Instance.new("Folder", G2L["2"]);
G2L["6"]["Name"] = [[Elements]];


-- StarterGui.CWRealPrivv.MainFrame.Elements.RealPrivv
G2L["7"] = Instance.new("ImageLabel", G2L["6"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["Image"] = [[rbxassetid://116830707628945]];
G2L["7"]["Size"] = UDim2.new(0, 148, 0, 19);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["Name"] = [[RealPrivv]];
G2L["7"]["Position"] = UDim2.new(0.18436, 0, 0.31563, 0);


-- StarterGui.CWRealPrivv.MainFrame.Elements.Nutella
G2L["8"] = Instance.new("ImageLabel", G2L["6"]);
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["Image"] = [[rbxassetid://87572503322570]];
G2L["8"]["Size"] = UDim2.new(0, 97, 0, 17);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["BackgroundTransparency"] = 1;
G2L["8"]["Name"] = [[Nutella]];
G2L["8"]["Position"] = UDim2.new(0.39923, 0, 0.17919, 0);


-- StarterGui.CWRealPrivv.MainFrame.Elements.Title
G2L["9"] = Instance.new("ImageLabel", G2L["6"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["Image"] = [[rbxassetid://106022980722219]];
G2L["9"]["Size"] = UDim2.new(0, 153, 0, 62);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["Name"] = [[Title]];
G2L["9"]["Position"] = UDim2.new(0.16618, 0, 0.0249, 0);


-- StarterGui.CWRealPrivv.MainFrame.Elements.Title.ShineEffect
G2L["a"] = Instance.new("LocalScript", G2L["9"]);
G2L["a"]["Name"] = [[ShineEffect]];


-- StarterGui.CWRealPrivv.MainFrame.TextBoxes
G2L["b"] = Instance.new("Folder", G2L["2"]);
G2L["b"]["Name"] = [[TextBoxes]];


-- StarterGui.CWRealPrivv.MainFrame.TextBoxes.GunSoundID
G2L["c"] = Instance.new("TextBox", G2L["b"]);
G2L["c"]["Name"] = [[GunSoundID]];
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["TextWrapped"] = true;
G2L["c"]["TextSize"] = 14;
G2L["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["TextScaled"] = true;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28);
G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c"]["PlaceholderText"] = [[Gun Sound Changer ID]];
G2L["c"]["Size"] = UDim2.new(0, 224, 0, 21);
G2L["c"]["Position"] = UDim2.new(0.042, 0, 0.66883, 0);
G2L["c"]["BorderColor3"] = Color3.fromRGB(21, 21, 21);
G2L["c"]["Text"] = [[125838762216299]];


-- StarterGui.CWRealPrivv.MainFrame.TextBoxes.GunSoundID.GunSoundIDController
G2L["d"] = Instance.new("LocalScript", G2L["c"]);
G2L["d"]["Name"] = [[GunSoundIDController]];


-- StarterGui.CWRealPrivv.MainFrame.TextBoxes.CursorID
G2L["e"] = Instance.new("TextBox", G2L["b"]);
G2L["e"]["Name"] = [[CursorID]];
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["TextWrapped"] = true;
G2L["e"]["TextSize"] = 14;
G2L["e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["TextScaled"] = true;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28);
G2L["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e"]["PlaceholderText"] = [[Cursor ID]];
G2L["e"]["Size"] = UDim2.new(0, 224, 0, 21);
G2L["e"]["Position"] = UDim2.new(0.04639, 0, 0.46883, 0);
G2L["e"]["BorderColor3"] = Color3.fromRGB(21, 21, 21);
G2L["e"]["Text"] = [[2025732283]];


-- StarterGui.CWRealPrivv.MainFrame.TextBoxes.CursorID.CursorController
G2L["f"] = Instance.new("LocalScript", G2L["e"]);
G2L["f"]["Name"] = [[CursorController]];


-- StarterGui.CWRealPrivv.MainFrame.TextBoxes.GunVolume
G2L["10"] = Instance.new("TextBox", G2L["b"]);
G2L["10"]["Name"] = [[GunVolume]];
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["TextWrapped"] = true;
G2L["10"]["TextSize"] = 14;
G2L["10"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["TextScaled"] = true;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28);
G2L["10"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["10"]["PlaceholderText"] = [[Gun Volume]];
G2L["10"]["Size"] = UDim2.new(0, 224, 0, 21);
G2L["10"]["Position"] = UDim2.new(0.042, 0, 0.76883, 0);
G2L["10"]["BorderColor3"] = Color3.fromRGB(21, 21, 21);
G2L["10"]["Text"] = [[]];


-- StarterGui.CWRealPrivv.MainFrame.TextBoxes.GunVolume.GunVolumeController
G2L["11"] = Instance.new("LocalScript", G2L["10"]);
G2L["11"]["Name"] = [[GunVolumeController]];


-- StarterGui.CWRealPrivv.MainFrame.TextBoxes.CursorSize
G2L["12"] = Instance.new("TextBox", G2L["b"]);
G2L["12"]["Name"] = [[CursorSize]];
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["TextWrapped"] = true;
G2L["12"]["TextSize"] = 14;
G2L["12"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["TextScaled"] = true;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28);
G2L["12"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["12"]["PlaceholderText"] = [[Cursor Size]];
G2L["12"]["Size"] = UDim2.new(0, 224, 0, 21);
G2L["12"]["Position"] = UDim2.new(0.046, 0, 0.56883, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(21, 21, 21);
G2L["12"]["Text"] = [[70]];


-- StarterGui.CWRealPrivv.MainFrame.UICorner
G2L["13"] = Instance.new("UICorner", G2L["2"]);



-- Require G2L wrapper
local G2L_REQUIRE = require;
local G2L_MODULES = {};
local function require(Module:ModuleScript)
    local ModuleState = G2L_MODULES[Module];
    if ModuleState then
        if not ModuleState.Required then
            ModuleState.Required = true;
            ModuleState.Value = ModuleState.Closure();
        end
        return ModuleState.Value;
    end;
    return G2L_REQUIRE(Module);
end

G2L_MODULES[G2L["4"]] = {
Closure = function()
    local script = G2L["4"];local gui = {}

local uis = game:GetService("UserInputService")
local textService = game:GetService("TextService")

function gui.makeDraggable(frame)
	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	uis.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end

function gui.makeResizable(frame: Frame, minX, minY)
	-- South and East buttons as you defined them
	local south, east = Instance.new("TextButton"), Instance.new("TextButton")
	local buttonParent = Instance.new("Folder", frame)
	local mouse = game.Players.LocalPlayer:GetMouse()
	local MaxX, MaxY = math.huge, math.huge
	local s, e = false, false
	local resizing = false

	-- Internal UI References
	local chatScrollingFrame = frame:FindFirstChild("Chat")
	local listLayout = chatScrollingFrame and chatScrollingFrame:FindFirstChildOfClass("UIListLayout")

	-- Store original layout info
	local originalChatPos = chatScrollingFrame and chatScrollingFrame.Position or UDim2.new(0,0,0,0)
	local heightOffset = chatScrollingFrame and (frame.AbsoluteSize.Y - chatScrollingFrame.AbsoluteSize.Y) or 30

	-- --- Button Configuration (Restored your style) ---
	south.Parent = buttonParent
	south.Position = UDim2.new(0, 0, 1, 0)
	south.Size = UDim2.new(1, 0, 0, 8)
	south.BackgroundColor3 = Color3.new(0, 0, 0)
	south.BorderSizePixel = 0
	south.BackgroundTransparency = 1
	south.Text = ""
	south.Name = "South"

	east.Parent = buttonParent
	east.Position = UDim2.new(1, 0, 0, 0)
	east.Size = UDim2.new(0, 8, 1, 0)
	east.BackgroundColor3 = Color3.new(0, 0, 0)
	east.BorderSizePixel = 0
	east.BackgroundTransparency = 1
	east.Text = ""
	east.Name = "East"

	-- --- Hover Effects (Restored your style) ---
	south.MouseEnter:Connect(function() if not frame:GetAttribute("ResizeDisabled") then south.BackgroundTransparency = 0.5 end end)
	east.MouseEnter:Connect(function() if not frame:GetAttribute("ResizeDisabled") then east.BackgroundTransparency = 0.5 end end)

	south.MouseLeave:Connect(function() south.BackgroundTransparency = 1 end)
	east.MouseLeave:Connect(function() east.BackgroundTransparency = 1 end)

	local function resizey(v, val)
		v.MouseButton1Down:Connect(function()
			if frame:GetAttribute("ResizeDisabled") then return end

			if val == "East" then
				s = false; e = true
			elseif val == "South" then
				s = true; e = false
			end

			resizing = true
		end)

		v.MouseButton1Up:Connect(function()
			s = false; e = false
			resizing = false
		end)
	end

	mouse.Move:Connect(function()
		if resizing then
			if not uis:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
				resizing = false
			end

			if e == true then
				local newWidth = math.clamp(mouse.X - frame.AbsolutePosition.X, minX, MaxX)
				frame.Size = UDim2.fromOffset(newWidth, frame.AbsoluteSize.Y)	
			elseif s == true then
				local newHeight = math.clamp(mouse.Y - frame.AbsolutePosition.Y, minY, MaxY)
				frame.Size = UDim2.fromOffset(frame.AbsoluteSize.X, newHeight)
			end

			-- Adapt Internal Chat Layout
			if chatScrollingFrame then
				chatScrollingFrame.Position = originalChatPos
				chatScrollingFrame.Size = UDim2.new(1, 0, 1, -heightOffset)

				-- Fix text wrapping overlap
				local maxWidth = chatScrollingFrame.AbsoluteSize.X - 25
				for _, child in ipairs(chatScrollingFrame:GetChildren()) do
					if child.Name == "MessageLog" and child:IsA("TextLabel") then
						local bounds = textService:GetTextSize(
							child.ContentText,
							child.TextSize,
							child.Font,
							Vector2.new(maxWidth, math.huge)
						)
						child.Size = UDim2.new(1, -10, 0, bounds.Y)
					end
				end

				if listLayout then
					chatScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, listLayout.AbsoluteContentSize.Y)
				end
			end
		end
	end)

	resizey(east, "East")
	resizey(south, "South")

	buttonParent.Name = "resizeControls"
end

return gui
end;
};
-- StarterGui.CWRealPrivv.MainFrame.Resizer
local function C_3()
local script = G2L["3"];
	local GuiResize = require(script.GuiResize)
	local mainFrame = script.Parent
	GuiResize.makeDraggable(mainFrame)
end;
task.spawn(C_3);
-- StarterGui.CWRealPrivv.MainFrame.UIToggle
local function C_5()
local script = G2L["5"];
	local UserInputService = game:GetService("UserInputService")
	
	local frame = script.Parent
	local visible = true
	
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
	
		local isToggleKey =
			input.KeyCode == Enum.KeyCode.Insert
	
		if isToggleKey then
			visible = not visible
			frame.Visible = visible
		end
	end)
end;
task.spawn(C_5);
-- StarterGui.CWRealPrivv.MainFrame.Elements.Title.ShineEffect
local function C_a()
local script = G2L["a"];
	local RunService = game:GetService("RunService")
	local label    = script.Parent
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
	
	-- Sweep the gradient offset from START_OFFSET to END_OFFSET
	local START_OFFSET = 1.8
	local END_OFFSET   = -1.8
	
	local SWEEP_TIME  = 3.5
	local PAUSE_TIME  = 2.0
	local SHINE_SWEEP = 3.5
	
	local sweepT     = 0
	local colorT     = 0
	local colorDir   = 1
	local inPause    = false
	local pauseTimer = 0
	
	-- Shine state machine: idle → shine2 playing → shine3 playing → done
	-- Replaced the two simultaneous timers with a single sequential state.
	local shinePhase  = "idle"  -- "idle" | "shine2" | "shine3" | "done"
	local shineT      = -1
	
	RunService.Heartbeat:Connect(function(dt)
		if inPause then
			pauseTimer += dt
	
			-- Kick off shine2 immediately on the first frame of pause
			if shinePhase == "idle" then
				shinePhase = "shine2"
				shineT     = 0
			end
	
			-- Advance the active shine
			if shinePhase == "shine2" or shinePhase == "shine3" then
				shineT += dt / SHINE_SWEEP
				if shineT >= 1 then
					-- This shine finished — move to next or mark done
					if shinePhase == "shine2" then
						shinePhase = "shine3"
						shineT     = 0
					else
						shinePhase = "done"
						shineT     = -1
					end
				end
			end
	
			-- Update offset while a shine is active
			if shinePhase == "shine2" or shinePhase == "shine3" then
				gradient.Offset = Vector2.new(
					START_OFFSET + (END_OFFSET - START_OFFSET) * shineT,
					0
				)
			else
				-- Park the gradient off-screen when no shine is running
				gradient.Offset = Vector2.new(START_OFFSET, 0)
			end
	
			-- Exit pause only after the timer elapsed AND both shines finished
			if pauseTimer >= PAUSE_TIME and shinePhase == "done" then
				inPause    = false
				pauseTimer = 0
				sweepT     = 0
				shinePhase = "idle"
				shineT     = -1
			end
	
			return
		end
	
		-- Normal sweep
		local step = dt / SWEEP_TIME
		sweepT = sweepT + step
		colorT = math.clamp(colorT + colorDir * step, 0, 1)
	
		if sweepT >= 1 then
			sweepT    = 1
			inPause   = true
			colorDir  = -colorDir
		end
	
		local smooth = smoothstep(colorT)
		gradient.Offset = Vector2.new(
			START_OFFSET + (END_OFFSET - START_OFFSET) * sweepT,
			0
		)
		gradient.Color = makeSequence(
			lerpColor(GREY,  WHITE, smooth),
			lerpColor(WHITE, GREY,  smooth)
		)
	end)
end;
task.spawn(C_a);
-- StarterGui.CWRealPrivv.MainFrame.TextBoxes.GunSoundID.GunSoundIDController
local function C_d()
local script = G2L["d"];
	-- Gun Sound Changer — CWRealPrivv
	-- Replaces SoundId of every ShootSound in workspace with the user's input.
	-- Empty/invalid = all ShootSounds restored to their original SoundId.
	
	local textBox     = script.Parent
	local Players     = game:GetService("Players")
	local RunService  = game:GetService("RunService")
	local LocalPlayer = Players.LocalPlayer
	
	local TARGET_NAME = "ShootSound"
	
	-- overrideData[sound] = { conn, originalSoundId }
	local overrideData = {}
	
	-- ── Asset ID parsing ──────────────────────────────────────────────────────
	
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
	
	-- ── Per-sound apply / remove ──────────────────────────────────────────────
	
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
		if not id then
			removeOverride(sound)
			return
		end
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
		if isActive() then
			applyOverride(sound)
		else
			removeOverride(sound)
		end
	end
	
	-- ── Full rescan ───────────────────────────────────────────────────────────
	
	local function scanAll()
		for sound in pairs(overrideData) do
			handleSound(sound)
		end
		for _, desc in ipairs(workspace:GetDescendants()) do
			handleSound(desc)
		end
	end
	
	-- ── Live workspace tracking ───────────────────────────────────────────────
	
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
	
	-- ── TextBox handler ───────────────────────────────────────────────────────
	local initialParsed = toAssetId(textBox.Text)
	local lastValidId = initialParsed and (initialParsed:match("%d+") or "") or ""
	
	textBox.FocusLost:Connect(function()
		local trimmed = textBox.Text:match("^%s*(.-)%s*$")
		if trimmed == "" then
			-- Empty input — restore to last valid
			textBox.Text = lastValidId
		else
			local parsed = toAssetId(trimmed)
			if parsed then
				lastValidId = parsed:match("%d+") or ""
				textBox.Text = lastValidId
			else
				-- Garbage input — restore to last valid
				textBox.Text = lastValidId
			end
		end
		scanAll()
	end)
	
	-- ── PreRender enforcement ─────────────────────────────────────────────────
	
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
	
	-- Initial scan (auto-applies the pre-filled default GunSoundID)
	scanAll()
	
end;
task.spawn(C_d);
-- StarterGui.CWRealPrivv.MainFrame.TextBoxes.CursorID.CursorController
local function C_f()
local script = G2L["f"];
	-- Cursor Changer V2 — CWRealPrivv  (minimum-latency ImageLabel variant)
	-- CursorID   → custom cursor image asset ID
	-- CursorSize → size in pixels (default 85)
	-- Both empty = native cursor restored.
	--
	-- Architecture: TWO-TRACK + ImageLabel always follows cursor
	--
	--   TRACK A — Normal play:
	--             UserInputService.MouseIconEnabled = false  (cheapest suppression)
	--             ImageLabel positioned every PreRender via InputChanged cache.
	--             Mouse position cached on every InputChanged — PreRender writes
	--             UDim2 once per frame using the freshest available coordinate.
	--             GuiInset cached once at startup (updated via signal if it ever changes).
	--
	--   TRACK B — Sniper scoped (LockCenter):
	--             ImageLabel pinned at UDim2.new(0.5, 0, 0.5, 0) — screen center.
	--             Position write skipped entirely (no mouse movement during lock).
	--
	-- Per-frame PreRender cost (steady state, cursor not over new target):
	--   • ONE UDim2.fromOffset write  (Track A only)
	--   • ONE Mouse.Target read (cached — skips all FindFirstChildOfClass work if unchanged)
	--   • ZERO Color3 allocations (pre-allocated constants)
	--   • ZERO GuiInset calls (cached at startup, +inset added in InputChanged)
	--   • ZERO TeamColor reads (cached via signal)
	
	local textBox          = script.Parent
	local TextBoxes        = textBox.Parent
	local Players          = game:GetService("Players")
	local RunService       = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")
	local GuiService       = game:GetService("GuiService")
	local LocalPlayer      = Players.LocalPlayer
	local Mouse            = LocalPlayer:GetMouse()
	
	-- ── Pre-allocated Color3 constants — zero allocations per frame ───────────
	local COLOR_WHITE = Color3.fromRGB(255, 255, 255)
	local COLOR_GREEN = Color3.fromRGB(0,   255, 0  )
	local COLOR_RED   = Color3.fromRGB(255, 0,   0  )
	
	-- ── GuiInset — cached once, updated via signal ────────────────────────────
	-- input.Position (MouseMovement) = inset-space: origin is BELOW the topbar.
	-- IgnoreGuiInset=true ScreenGui = viewport-space: origin at absolute top-left.
	-- Conversion: ScreenGui position = input.Position + GuiInset.
	local _insetX, _insetY = GuiService:GetGuiInset().X, GuiService:GetGuiInset().Y
	GuiService:GetPropertyChangedSignal("TopbarInset"):Connect(function()
		local inset = GuiService:GetGuiInset()
		_insetX = inset.X
		_insetY = inset.Y
	end)
	
	-- ── Mouse position cache — written on InputChanged, read in PreRender ─────
	local _mx, _my = 0, 0
	UserInputService.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			_mx = input.Position.X + _insetX
			_my = input.Position.Y + _insetY
		end
	end)
	
	-- ── TeamColor cache — updated via signal, read in PreRender ───────────────
	local _myTeamColor = LocalPlayer.TeamColor
	LocalPlayer:GetPropertyChangedSignal("TeamColor"):Connect(function()
		_myTeamColor = LocalPlayer.TeamColor
	end)
	
	-- ── Mouse.Target cache — only recompute tint when target changes ──────────
	local _lastTarget    = nil
	local _lastTintColor = COLOR_WHITE
	
	-- ── ScreenGui + ImageLabel — always on top, always visible in Track A ─────
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
	
	-- ── Parsing helpers ───────────────────────────────────────────────────────
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
	
	-- ── Cached config state ───────────────────────────────────────────────────
	local _cursorId   = toAssetId(textBox.Text)
	local _cursorSize = 70
	
	local CursorSizeBox = TextBoxes:FindFirstChild("CursorSize")
	
	local function applySize()
		if CursorSizeBox then
			local s = parseSize(CursorSizeBox.Text)
			if s then
				_cursorSize = s
			else
				_cursorSize = 70
			end
		end
		Cursor.Size = UDim2.new(0, _cursorSize, 0, _cursorSize)
	end
	
	local function isEnabled()
		return _cursorId ~= nil
	end
	
	-- ── Track switcher ────────────────────────────────────────────────────────
	local _sniperActive = UserInputService.MouseBehavior == Enum.MouseBehavior.LockCenter
	
	local function applyTrack()
		if not isEnabled() then
			UserInputService.MouseIconEnabled = true
			Cursor.Visible = false
			return
		end
	
		-- Both tracks: suppress the native OS cursor cheaply
		UserInputService.MouseIconEnabled = false
		Cursor.Image   = _cursorId
		Cursor.Visible = true
	
		if _sniperActive then
			-- Track B: pin to screen center, PreRender won't touch Position
			Cursor.Position = UDim2.new(0.5, 0, 0.5, 0)
		end
		-- Track A: PreRender will position on next frame via InputChanged cache
	end
	
	UserInputService:GetPropertyChangedSignal("MouseBehavior"):Connect(function()
		_sniperActive = UserInputService.MouseBehavior == Enum.MouseBehavior.LockCenter
		applyTrack()
	end)
	
	-- ── TextBox handlers ──────────────────────────────────────────────────────
	local lastValidId = _cursorId and (_cursorId:match("%d+") or "") or ""
	
	textBox.FocusLost:Connect(function()
		local trimmed = textBox.Text:match("^%s*(.-)%s*$")
		if trimmed == "" then
			-- Empty input — restore to last valid
			textBox.Text = lastValidId
			_cursorId = lastValidId ~= "" and toAssetId(lastValidId) or nil
		else
			local parsed = toAssetId(trimmed)
			if parsed then
				lastValidId = parsed:match("%d+") or ""
				_cursorId = parsed
				textBox.Text = lastValidId
			else
				-- Garbage input — restore to last valid
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
				-- Empty input — restore to last valid
				CursorSizeBox.Text = lastValidSize
			else
				local s = parseSize(trimmed)
				if s then
					lastValidSize = tostring(s)
				else
					-- Garbage input — restore to last valid
					CursorSizeBox.Text = lastValidSize
				end
			end
			applySize()
		end)
	end
	
	-- ── PreRender: position (Track A) + color tinting ────────────────────────
	-- This callback is the LAST Lua signal before the GPU draw call.
	-- Steady-state cost: 1 UDim2 write + 1 Target read. Everything else is cached.
	
	RunService.PreRender:Connect(function()
		if not isEnabled() then return end
	
		-- Track A: update ImageLabel position from InputChanged cache
		if not _sniperActive then
			Cursor.Position = UDim2.fromOffset(_mx, _my)
		end
	
		-- Color tinting — skip all work if Mouse.Target hasn't changed
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
						and COLOR_GREEN
						or  COLOR_RED
					else
						_lastTintColor = COLOR_WHITE
					end
			end
		end
	
		Cursor.ImageColor3 = _lastTintColor
	end)
	
	-- Apply initial state + auto-apply defaults on load
	local parsed = toAssetId(textBox.Text)
	_cursorId = parsed
	if parsed then
		Cursor.Image = parsed
	end
	applySize()
	applyTrack()
	
	-- Expose for ConfigManager Tier 3 fallback
	_G.cwprivv_applyCursorId = applyTrack
	
end;
task.spawn(C_f);
-- StarterGui.CWRealPrivv.MainFrame.TextBoxes.GunVolume.GunVolumeController
local function C_11()
local script = G2L["11"];
	-- Gun Volume Controller — CWRealPrivv
	-- Overrides the volume of ShootSound and SecondarySound (firing sounds only).
	-- Empty/invalid = all sounds restored to their original volume.
	-- Applies to ALL players (own + others). Range: 0–10.
	
	local textBox     = script.Parent
	local Players     = game:GetService("Players")
	local RunService  = game:GetService("RunService")
	local LocalPlayer = Players.LocalPlayer
	
	local TARGET_NAMES = { ShootSound = true, SecondarySound = true }
	
	-- overrideData[sound] = { conn, originalVolume }
	local overrideData = {}
	
	-- ── Parsing ───────────────────────────────────────────────────────────────
	
	local function getActiveVolume()
		local n = tonumber(textBox.Text)
		if n then return math.clamp(n, 0, 10) end
		return nil  -- nil = inactive, restore originals
	end
	
	local function isActive()
		return getActiveVolume() ~= nil
	end
	
	-- ── Per-sound apply / remove ──────────────────────────────────────────────
	
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
		if not vol then
			removeOverride(sound)
			return
		end
		local data = overrideData[sound]
		if data then
			if sound.Volume ~= vol then sound.Volume = vol end
			return
		end
		local originalVolume = sound.Volume
		sound.Volume = vol
		local conn = sound:GetPropertyChangedSignal("Volume"):Connect(function()
			local v = getActiveVolume()
			if v and sound.Volume ~= v then
				sound.Volume = v
			end
		end)
		overrideData[sound] = { conn = conn, originalVolume = originalVolume }
	end
	
	local function handleSound(sound)
		if not sound:IsA("Sound") then return end
		if not TARGET_NAMES[sound.Name] then return end
		if isActive() then
			applyOverride(sound)
		else
			removeOverride(sound)
		end
	end
	
	-- ── Full rescan ───────────────────────────────────────────────────────────
	
	local function scanAll()
		for sound in pairs(overrideData) do
			handleSound(sound)
		end
		for _, desc in ipairs(workspace:GetDescendants()) do
			handleSound(desc)
		end
	end
	
	-- ── Live workspace tracking ───────────────────────────────────────────────
	
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
	
	-- ── TextBox handler ───────────────────────────────────────────────────────
	local lastValidVol = tonumber(textBox.Text)
	
	textBox.FocusLost:Connect(function()
		local trimmed = textBox.Text:match("^%s*(.-)%s*$")
		if trimmed == "" then
			-- Empty input — restore to last valid
			if lastValidVol ~= nil then
				textBox.Text = tostring(lastValidVol)
			else
				textBox.Text = ""
			end
		else
			local n = tonumber(trimmed)
			if n and n >= 0 and n <= 10 then
				lastValidVol = n
				textBox.Text = tostring(n)
			else
				-- Garbage input — restore to last valid
				if lastValidVol ~= nil then
					textBox.Text = tostring(lastValidVol)
				else
					textBox.Text = ""
				end
			end
		end
		scanAll()
	end)
	
	-- ── PreRender enforcement ─────────────────────────────────────────────────
	
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
			if sound.Volume ~= vol then
				sound.Volume = vol
			end
		end
	end)
	
	-- Initial scan
	scanAll()
	
end;
task.spawn(C_11);

return G2L["1"], require;
