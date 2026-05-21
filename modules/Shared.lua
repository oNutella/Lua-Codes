-- modules/Shared.lua
-- Returns a table of constants shared across all CycleWare modules.

return {
        -- Button toggle colors
        COLOR_ON     = Color3.fromRGB(0,   140, 140),
        COLOR_OFF    = Color3.fromRGB(100, 100, 100),
        COLOR_YELLOW = Color3.fromRGB(180, 140, 0),

        -- SecondFrame slide sizes & tween
        SF_EXPANDED  = UDim2.new(0, 183, 0, 400),
        SF_COLLAPSED = UDim2.new(0, 17,  0, 400),
        SF_TWEEN     = TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),

        -- GunTracerColors cycle (index 1 = off/default)
        TRACER_COLORS = {
            Color3.fromRGB(100, 100, 100), -- off
            Color3.fromRGB(112, 0,   112), -- purple
            Color3.fromRGB(255, 0,   0),   -- red
            Color3.fromRGB(0,   0,   255), -- blue
            Color3.fromRGB(0,   200, 0),   -- green
            Color3.fromRGB(0,   0,   0),   -- black
            Color3.fromRGB(255, 255, 255), -- white
        },

        -- GunVolumeApplier states
        APPLIER_STATES = {
            all    = { color = Color3.fromRGB(100, 100, 100), text = "Apply to All"    },
            me     = { color = Color3.fromRGB(180, 140, 0),   text = "Apply to Me"     },
            others = { color = Color3.fromRGB(0,   140, 140), text = "Apply to Others" },
        },

        -- GunTracers three-state definitions
        TRACER_STATES = {
            none   = { color = Color3.fromRGB(100, 100, 100), text = "Gun Tracers: ON"        },
            others = { color = Color3.fromRGB(180, 140, 0),   text = "Other Gun Tracers: OFF" },
            all    = { color = Color3.fromRGB(0,   140, 140), text = "All Gun Tracers: OFF"   },
        },
    }
end
