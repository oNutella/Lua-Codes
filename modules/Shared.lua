return {
    COLOR_ON     = Color3.fromRGB(61, 143, 220),
    COLOR_OFF    = Color3.fromRGB(100, 100, 100),
    COLOR_YELLOW = Color3.fromRGB(255, 170, 0),

    SF_EXPANDED  = UDim2.new(0, 170, 0, 400),
    SF_COLLAPSED = UDim2.new(0, 17, 0, 400),

    SF_TWEEN = TweenInfo.new(
        0.25,
        Enum.EasingStyle.Quad,
        Enum.EasingDirection.Out
    ),

    TRACER_COLORS = {
        Color3.fromRGB(255, 0, 0),
        Color3.fromRGB(0, 255, 0),
        Color3.fromRGB(0, 170, 255),
        Color3.fromRGB(255, 255, 255),
        Color3.fromRGB(0, 0, 0),
    },

    TRACER_STATES = {
        none = {
            color = Color3.fromRGB(100, 100, 100),
            text  = "Gun Tracers: OFF",
        },

        others = {
            color = Color3.fromRGB(255, 170, 0),
            text  = "Gun Tracers: Others",
        },

        all = {
            color = Color3.fromRGB(61, 143, 220),
            text  = "Gun Tracers: ALL",
        },
    },

    APPLIER_STATES = {
        all = {
            color = Color3.fromRGB(100, 100, 100),
            text  = "Apply to All",
        },

        me = {
            color = Color3.fromRGB(255, 170, 0),
            text  = "Apply to Me",
        },

        others = {
            color = Color3.fromRGB(61, 143, 220),
            text  = "Apply to Others",
        },
    },

    NamecallHooks = {},
}

local Shared = {
    COLOR_ON     = Color3.fromRGB(61, 143, 220),
    COLOR_OFF    = Color3.fromRGB(100, 100, 100),
    COLOR_YELLOW = Color3.fromRGB(255, 170, 0),

    SF_EXPANDED  = UDim2.new(0, 170, 0, 400),
    SF_COLLAPSED = UDim2.new(0, 17, 0, 400),

    SF_TWEEN = TweenInfo.new(
        0.25,
        Enum.EasingStyle.Quad,
        Enum.EasingDirection.Out
    ),

    TRACER_COLORS = {
        Color3.fromRGB(255, 0, 0),
        Color3.fromRGB(0, 255, 0),
        Color3.fromRGB(0, 170, 255),
        Color3.fromRGB(255, 255, 255),
        Color3.fromRGB(0, 0, 0),
    },

    TRACER_STATES = {
        none = {
            color = Color3.fromRGB(100, 100, 100),
            text  = "Gun Tracers: OFF",
        },

        others = {
            color = Color3.fromRGB(255, 170, 0),
            text  = "Gun Tracers: Others",
        },

        all = {
            color = Color3.fromRGB(61, 143, 220),
            text  = "Gun Tracers: ALL",
        },
    },

    APPLIER_STATES = {
        all = {
            color = Color3.fromRGB(100, 100, 100),
            text  = "Apply to All",
        },

        me = {
            color = Color3.fromRGB(255, 170, 0),
            text  = "Apply to Me",
        },

        others = {
            color = Color3.fromRGB(61, 143, 220),
            text  = "Apply to Others",
        },
    },

    NamecallHooks = {},
}

local old
old = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()

    for _, callback in ipairs(Shared.NamecallHooks) do
        callback(self, method, ...)
    end

    return old(self, ...)
end)

return Shared
