local G2L = {};

-- StarterGui.CWRealPrivv
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[CWRealPrivv]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.CWRealPrivv.MainFrame
G2L["2"] = Instance.new("ImageLabel", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["2"]["Size"] = UDim2.new(0, 236, 0, 300);
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
G2L["7"]["Size"] = UDim2.new(0, 164, 0, 22);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["Name"] = [[RealPrivv]];
G2L["7"]["Position"] = UDim2.new(0.15184, 0, 0.25895, 0);


-- StarterGui.CWRealPrivv.MainFrame.Elements.Title
G2L["8"] = Instance.new("ImageLabel", G2L["6"]);
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["Image"] = [[rbxassetid://106022980722219]];
G2L["8"]["Size"] = UDim2.new(0, 164, 0, 62);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["BackgroundTransparency"] = 1;
G2L["8"]["Name"] = [[Title]];
G2L["8"]["Position"] = UDim2.new(0.13297, 0, 0.02895, 0);


-- StarterGui.CWRealPrivv.MainFrame.Elements.Title.ShineEffect
G2L["9"] = Instance.new("LocalScript", G2L["8"]);
G2L["9"]["Name"] = [[ShineEffect]];


-- StarterGui.CWRealPrivv.MainFrame.Elements.Nutella
G2L["a"] = Instance.new("ImageLabel", G2L["6"]);
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["Image"] = [[rbxassetid://87572503322570]];
G2L["a"]["Size"] = UDim2.new(0, 110, 0, 20);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["Name"] = [[Nutella]];
G2L["a"]["Position"] = UDim2.new(0.37873, 0, 0.16895, 0);


-- StarterGui.CWRealPrivv.MainFrame.TextBoxes
G2L["b"] = Instance.new("Folder", G2L["2"]);
G2L["b"]["Name"] = [[TextBoxes]];


-- StarterGui.CWRealPrivv.MainFrame.TextBoxes.GunSoundID
G2L["c"] = Instance.new("TextBox", G2L["b"]);
G2L["c"]["CursorPosition"] = -1;
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
G2L["c"]["Position"] = UDim2.new(0.018, 0, 0.6, 0);
G2L["c"]["BorderColor3"] = Color3.fromRGB(21, 21, 21);
G2L["c"]["Text"] = [[]];


-- StarterGui.CWRealPrivv.MainFrame.TextBoxes.GunSoundID.GunSoundIDController
G2L["d"] = Instance.new("LocalScript", G2L["c"]);
G2L["d"]["Name"] = [[GunSoundIDController]];


-- StarterGui.CWRealPrivv.MainFrame.TextBoxes.CursorID
G2L["e"] = Instance.new("TextBox", G2L["b"]);
G2L["e"]["CursorPosition"] = -1;
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
G2L["e"]["Position"] = UDim2.new(0.022, 0, 0.4, 0);
G2L["e"]["BorderColor3"] = Color3.fromRGB(21, 21, 21);
G2L["e"]["Text"] = [[]];


-- StarterGui.CWRealPrivv.MainFrame.TextBoxes.CursorID.CursorController
G2L["f"] = Instance.new("LocalScript", G2L["e"]);
G2L["f"]["Name"] = [[CursorController]];


-- StarterGui.CWRealPrivv.MainFrame.TextBoxes.CursorSize
G2L["10"] = Instance.new("TextBox", G2L["b"]);
G2L["10"]["CursorPosition"] = -1;
G2L["10"]["Name"] = [[CursorSize]];
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["TextWrapped"] = true;
G2L["10"]["TextSize"] = 14;
G2L["10"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["TextScaled"] = true;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28);
G2L["10"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["10"]["PlaceholderText"] = [[Cursor Size]];
G2L["10"]["Size"] = UDim2.new(0, 224, 0, 21);
G2L["10"]["Position"] = UDim2.new(0.022, 0, 0.5, 0);
G2L["10"]["BorderColor3"] = Color3.fromRGB(21, 21, 21);
G2L["10"]["Text"] = [[]];


-- StarterGui.CWRealPrivv.MainFrame.TextBoxes.GunVolume
G2L["11"] = Instance.new("TextBox", G2L["b"]);
G2L["11"]["Name"] = [[GunVolume]];
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["TextWrapped"] = true;
G2L["11"]["TextSize"] = 14;
G2L["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["TextScaled"] = true;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28);
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11"]["PlaceholderText"] = [[Gun Volume]];
G2L["11"]["Size"] = UDim2.new(0, 224, 0, 21);
G2L["11"]["Position"] = UDim2.new(0.018, 0, 0.7, 0);
G2L["11"]["BorderColor3"] = Color3.fromRGB(21, 21, 21);
G2L["11"]["Text"] = [[]];


-- StarterGui.CWRealPrivv.MainFrame.TextBoxes.GunVolume.GunVolumeController
G2L["12"] = Instance.new("LocalScript", G2L["11"]);
G2L["12"]["Name"] = [[GunVolumeController]];


-- StarterGui.CWRealPrivv.MainFrame.Buttons
G2L["13"] = Instance.new("Folder", G2L["2"]);
G2L["13"]["Name"] = [[Buttons]];


-- StarterGui.CWRealPrivv.MainFrame.Buttons.ConfigManager
G2L["14"] = Instance.new("LocalScript", G2L["13"]);
G2L["14"]["Name"] = [[ConfigManager]];


-- StarterGui.CWRealPrivv.MainFrame.Buttons.SaveSettings
G2L["15"] = Instance.new("TextButton", G2L["13"]);
G2L["15"]["TextWrapped"] = true;
G2L["15"]["Active"] = false;
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["TextSize"] = 60;
G2L["15"]["TextScaled"] = true;
G2L["15"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["15"]["Selectable"] = false;
G2L["15"]["Size"] = UDim2.new(0, 224, 0, 20);
G2L["15"]["ClipsDescendants"] = true;
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Text"] = [[Save Settings]];
G2L["15"]["Name"] = [[SaveSettings]];
G2L["15"]["Position"] = UDim2.new(0.02194, 0, 0.81055, 0);


-- StarterGui.CWRealPrivv.MainFrame.Buttons.LoadSettings
G2L["16"] = Instance.new("TextButton", G2L["13"]);
G2L["16"]["TextWrapped"] = true;
G2L["16"]["Active"] = false;
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["TextSize"] = 60;
G2L["16"]["TextScaled"] = true;
G2L["16"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["16"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["16"]["Selectable"] = false;
G2L["16"]["Size"] = UDim2.new(0, 224, 0, 20);
G2L["16"]["ClipsDescendants"] = true;
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["Text"] = [[Load Settings]];
G2L["16"]["Name"] = [[LoadSettings]];
G2L["16"]["Position"] = UDim2.new(0.02194, 0, 0.89901, 0);


-- StarterGui.CWRealPrivv.MainFrame.UICorner
G2L["17"] = Instance.new("UICorner", G2L["2"]);



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
local function C_9()
local script = G2L["9"];
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
task.spawn(C_9);
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
	
	textBox.FocusLost:Connect(function()
		local parsed = toAssetId(textBox.Text)
		if not parsed and textBox.Text ~= "" then
			textBox.Text = ""
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
	
	-- Initial scan
	scanAll()
	
end;
task.spawn(C_d);
-- StarterGui.CWRealPrivv.MainFrame.TextBoxes.CursorID.CursorController
local function C_f()
local script = G2L["f"];
	-- Cursor Changer — CWRealPrivv
	-- CursorID   → custom cursor image asset ID
	-- CursorSize → size in pixels (default 85, min 1)
	-- Both empty = native cursor restored.
	
	local textBox     = script.Parent
	local TextBoxes   = textBox.Parent
	local CursorSizeBox = TextBoxes:WaitForChild("CursorSize")
	
	local Players          = game:GetService("Players")
	local RunService       = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")
	local LocalPlayer      = Players.LocalPlayer
	local Mouse            = LocalPlayer:GetMouse()
	
	local DEFAULT_SIZE = 85
	
	-- Build overlay ScreenGui in CoreGui
	local IAPortable = Instance.new("ScreenGui")
	IAPortable.Name           = "CWPrivv_Cursor"
	IAPortable.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	IAPortable.ResetOnSpawn   = false
	IAPortable.Parent         = game:GetService("CoreGui")
	
	local Cursor = Instance.new("ImageLabel")
	Cursor.Name                   = "Cursor"
	Cursor.Parent                 = IAPortable
	Cursor.AnchorPoint            = Vector2.new(0.5, 0.5)
	Cursor.BackgroundTransparency = 1
	Cursor.Size                   = UDim2.new(0, DEFAULT_SIZE, 0, DEFAULT_SIZE)
	Cursor.Image                  = ""
	Cursor.ScaleType              = Enum.ScaleType.Fit
	Cursor.Visible                = false
	
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
	
	local function getActiveSize()
		local n = tonumber(CursorSizeBox.Text)
		if n and n >= 1 then
			return math.floor(n)
		end
		return DEFAULT_SIZE
	end
	
	local function isEnabled()
		return toAssetId(textBox.Text) ~= nil
	end
	
	local function getActiveCursorId()
		return toAssetId(textBox.Text)
	end
	
	-- ── Apply size immediately ────────────────────────────────────────────────
	
	local function applySize()
		local s = getActiveSize()
		Cursor.Size = UDim2.new(0, s, 0, s)
	end
	
	-- ── TextBox handlers ──────────────────────────────────────────────────────
	
	textBox.FocusLost:Connect(function()
		local parsed = toAssetId(textBox.Text)
		if parsed then
			Cursor.Image = parsed
		elseif textBox.Text ~= "" then
			textBox.Text = ""
		end
	end)
	
	CursorSizeBox.FocusLost:Connect(function()
		local n = tonumber(CursorSizeBox.Text)
		if n and n >= 1 then
			CursorSizeBox.Text = tostring(math.floor(n))
		else
			CursorSizeBox.Text = ""
		end
		applySize()
	end)
	
	-- ── RenderStepped: position + color tinting ───────────────────────────────
	
	RunService.RenderStepped:Connect(function()
		if not isEnabled() then
			UserInputService.MouseIconEnabled = true
			Cursor.Visible = false
			return
		end
	
		-- Keep image and size current (handles auto-load setting Text directly)
		local id = getActiveCursorId()
		if id and Cursor.Image ~= id then
			Cursor.Image = id
		end
		applySize()
	
		UserInputService.MouseIconEnabled = false
		Cursor.Visible  = true
		Cursor.Position = UDim2.new(0, Mouse.X, 0, Mouse.Y)
	
		local Target = Mouse.Target
		if not Target or not Target.Parent then
			Cursor.ImageColor3 = Color3.fromRGB(255, 255, 255)
			return
		end
	
		local Limb      = Target.Parent:FindFirstChildOfClass("Humanoid")
		local Accessory = Target.Parent.Parent
			and Target.Parent.Parent:FindFirstChildOfClass("Humanoid")
	
		if Limb then
			local Player = Players:GetPlayerFromCharacter(Target.Parent)
			if Player then
				Cursor.ImageColor3 = Player.TeamColor == LocalPlayer.TeamColor
					and Color3.fromRGB(0, 255, 0)
					or  Color3.fromRGB(255, 0, 0)
			else
				Cursor.ImageColor3 = Color3.fromRGB(255, 255, 255)
			end
		elseif Accessory then
			local Player = Players:GetPlayerFromCharacter(Target.Parent.Parent)
			if Player then
				Cursor.ImageColor3 = Player.TeamColor == LocalPlayer.TeamColor
					and Color3.fromRGB(0, 255, 0)
					or  Color3.fromRGB(255, 0, 0)
			else
				Cursor.ImageColor3 = Color3.fromRGB(255, 255, 255)
			end
		else
			Cursor.ImageColor3 = Color3.fromRGB(255, 255, 255)
		end
	end)
	
	-- Expose applySize globally so ConfigManager can trigger cursor size update without firesignal
	_G.cwprivv_applyCursorSize = applySize
	
end;
task.spawn(C_f);
-- StarterGui.CWRealPrivv.MainFrame.TextBoxes.GunVolume.GunVolumeController
local function C_12()
local script = G2L["12"];
	-- Gun Volume Controller — CWRealPrivv
	-- Overrides the volume of every ShootSound and ReloadSound in workspace.
	-- Empty/invalid = all sounds restored to their original volume.
	-- Applies to ALL players (own + others). Range: 0–10.
	
	local textBox     = script.Parent
	local Players     = game:GetService("Players")
	local RunService  = game:GetService("RunService")
	local LocalPlayer = Players.LocalPlayer
	
	local TARGET_NAMES = { ShootSound = true, ReloadSound = true }
	
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
	
	textBox.FocusLost:Connect(function()
		local n = tonumber(textBox.Text)
		if n then
			textBox.Text = tostring(math.clamp(n, 0, 10))
		elseif textBox.Text ~= "" then
			textBox.Text = ""
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
task.spawn(C_12);
-- StarterGui.CWRealPrivv.MainFrame.Buttons.ConfigManager
local function C_14()
local script = G2L["14"];
	-- ConfigManager — CWRealPrivv
	-- SaveSettings  → writefile("CWRealPrivv.json", ...)
	-- LoadSettings  → readfile + apply
	-- Auto-load     → runs immediately on startup, silently applies saved config if file exists
	
	local HttpService = game:GetService("HttpService")
	local Players     = game:GetService("Players")
	
	local player    = Players.LocalPlayer
	local PlayerGui = player:WaitForChild("PlayerGui")
	local Root      = PlayerGui:WaitForChild("CWRealPrivv")
	local MainFrame = Root:WaitForChild("MainFrame")
	
	local TextBoxes = MainFrame:WaitForChild("TextBoxes")
	local Buttons   = MainFrame:WaitForChild("Buttons")
	
	local CursorIDBox  = TextBoxes:WaitForChild("CursorID")
	local GunSoundIDBox = TextBoxes:WaitForChild("GunSoundID")
	
	local CursorSizeBox  = TextBoxes:WaitForChild("CursorSize")
	local GunVolumeBox   = TextBoxes:WaitForChild("GunVolume")
	local SaveBtn = Buttons:WaitForChild("SaveSettings")
	local LoadBtn = Buttons:WaitForChild("LoadSettings")
	
	local CONFIG_PATH = "CWRealPrivv.json"
	
	-- ── Helpers ───────────────────────────────────────────────────────────────
	
	-- Three-tier FocusLost trigger — no firesignal required.
	-- Tier 1: firesignal (best, most executors)
	-- Tier 2: CaptureFocus + ReleaseFocus (Roblox native)
	-- Tier 3: _G scan functions (always works, executor-independent)
	local function triggerFocusLost(textBox)
		-- Tier 1: firesignal
		local ok = pcall(function()
			firesignal(textBox.FocusLost, false)
		end)
		if ok then return end
	
		-- Tier 2: CaptureFocus + ReleaseFocus
		ok = pcall(function()
			textBox:CaptureFocus()
			textBox:ReleaseFocus(false)
		end)
		if ok then return end
	
		-- Tier 3: _G scan functions — directly call the feature script's
		-- scanAll/applySize so it reacts to the new Text value immediately
		if textBox == CursorIDBox then
			pcall(function() if _G.cwprivv_applyCursorSize then _G.cwprivv_applyCursorSize() end end)
		elseif textBox == CursorSizeBox then
			pcall(function() if _G.cwprivv_applyCursorSize then _G.cwprivv_applyCursorSize() end end)
		elseif textBox == GunSoundIDBox then
			pcall(function() if _G.cwprivv_scanGunSound then _G.cwprivv_scanGunSound() end end)
		elseif textBox == GunVolumeBox then
			pcall(function() if _G.cwprivv_scanGunVolume then _G.cwprivv_scanGunVolume() end end)
		end
	end
	
	local function setBox(textBox, value)
		if value and value ~= "" then
			textBox.Text = tostring(value)
			triggerFocusLost(textBox)
		end
	end
	
	-- ── Save ──────────────────────────────────────────────────────────────────
	
	local function saveConfig()
		local config = {
			cursorID   = CursorIDBox.Text,
			cursorSize = CursorSizeBox.Text,
			gunSoundID = GunSoundIDBox.Text,
			gunVolume  = GunVolumeBox.Text,
		}
		local ok, err = pcall(writefile, CONFIG_PATH, HttpService:JSONEncode(config))
		if ok then
			print("[CWRealPrivv] Config saved to " .. CONFIG_PATH)
			-- Brief visual feedback on the button
			local orig = SaveBtn.Text
			SaveBtn.Text = "Saved!"
			task.delay(1.2, function() SaveBtn.Text = orig end)
		else
			warn("[CWRealPrivv] Save failed: " .. tostring(err))
			SaveBtn.Text = "Save Failed"
			task.delay(1.5, function() SaveBtn.Text = "Save Settings" end)
		end
	end
	
	-- ── Apply config data ─────────────────────────────────────────────────────
	
	local function applyConfig(data)
		if type(data) ~= "table" then return end
		setBox(CursorIDBox,   data.cursorID)
		setBox(CursorSizeBox, data.cursorSize)
		setBox(GunSoundIDBox, data.gunSoundID)
		setBox(GunVolumeBox,  data.gunVolume)
	end
	
	-- ── Load (manual) ─────────────────────────────────────────────────────────
	
	local function loadConfig()
		local fileExists = pcall(function()
			assert(isfile(CONFIG_PATH))
		end)
		if not fileExists then
			warn("[CWRealPrivv] No config file found.")
			LoadBtn.Text = "No File Found"
			task.delay(1.5, function() LoadBtn.Text = "Load Settings" end)
			return
		end
	
		local ok, data = pcall(function()
			return HttpService:JSONDecode(readfile(CONFIG_PATH))
		end)
	
		if not ok or type(data) ~= "table" then
			warn("[CWRealPrivv] Failed to parse config.")
			LoadBtn.Text = "Parse Error"
			task.delay(1.5, function() LoadBtn.Text = "Load Settings" end)
			return
		end
	
		applyConfig(data)
		print("[CWRealPrivv] Config loaded from " .. CONFIG_PATH)
		local orig = LoadBtn.Text
		LoadBtn.Text = "Loaded!"
		task.delay(1.2, function() LoadBtn.Text = orig end)
	end
	
	-- ── Auto-load on startup ──────────────────────────────────────────────────
	-- Runs immediately — no loading animation to wait for.
	-- Silently checks for the file and applies if found.
	
	task.spawn(function()
		-- Small yield so all feature scripts (CursorController, GunSoundIDController)
		-- have time to initialize their FocusLost connections before we trigger them
		task.wait(1)
	
		local fileExists = false
		pcall(function()
			fileExists = isfile(CONFIG_PATH)
		end)
	
		if not fileExists then
			print("[CWRealPrivv] No saved config found, starting fresh.")
			return
		end
	
		local ok, data = pcall(function()
			return HttpService:JSONDecode(readfile(CONFIG_PATH))
		end)
	
		if not ok or type(data) ~= "table" then
			warn("[CWRealPrivv] Auto-load: failed to parse config.")
			return
		end
	
		applyConfig(data)
		print("[CWRealPrivv] Auto-loaded config from " .. CONFIG_PATH)
	end)
	
	-- ── Button wires ──────────────────────────────────────────────────────────
	
	SaveBtn.MouseButton1Click:Connect(saveConfig)
	LoadBtn.MouseButton1Click:Connect(loadConfig)
	
end;
task.spawn(C_14);

return G2L["1"], require;
