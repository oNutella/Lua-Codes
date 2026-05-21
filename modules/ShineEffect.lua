-- modules/ShineEffect.lua
-- Animates a sweeping shine gradient on the title ImageLabel.

return function(GUI, S)
    local RunService = game:GetService("RunService")
    local label      = GUI.TitleLabel

    local gradient    = Instance.new("UIGradient")
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

    local SWEEP_TIME  = 3.5
    local PAUSE_TIME  = 2.0
    local SHINE_SWEEP = 3.5

    local sweepT      = 0
    local colorT      = 0
    local colorDir    = 1
    local inPause     = false
    local pauseTimer  = 0
    local shine2T     = -1
    local shine3T     = -1
    local shine2Fired = false
    local shine3Fired = false

    RunService.Heartbeat:Connect(function(dt)
        if inPause then
            pauseTimer += dt

            if not shine2Fired and pauseTimer >= 0 then
                shine2Fired = true
                shine2T     = 0
            end
            if not shine3Fired and pauseTimer >= 0.1 then
                shine3Fired = true
                shine3T     = 0
            end

            if shine2T >= 0 then
                shine2T += dt / SHINE_SWEEP
                if shine2T >= 1 then shine2T = -1 end
            end
            if shine3T >= 0 then
                shine3T += dt / SHINE_SWEEP
                if shine3T >= 1 then shine3T = -1 end
            end

            local activeT
            if shine3T >= 0 then
                activeT = shine3T
            elseif shine2T >= 0 then
                activeT = shine2T
            end

            if activeT then
                gradient.Offset = Vector2.new(1.5 + (-3.0) * activeT, 0)
            else
                gradient.Offset = Vector2.new(1.5, 0)
            end

            local shinesDone = shine2T < 0 and shine3T < 0 and shine2Fired and shine3Fired
            if pauseTimer >= PAUSE_TIME and shinesDone then
                inPause     = false
                pauseTimer  = 0
                sweepT      = 0
                shine2T     = -1
                shine3T     = -1
                shine2Fired = false
                shine3Fired = false
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
        gradient.Offset = Vector2.new(1.5 + (-3.0) * sweepT, 0)
        gradient.Color  = makeSequence(
            lerpColor(GREY,  WHITE, smooth),
            lerpColor(WHITE, GREY,  smooth)
        )
    end)
end
