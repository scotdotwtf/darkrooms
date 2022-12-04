writefile("darkrooms/themes/defualt.lua", [[
local getasset = getsynasset or getcustomasset
local colorable = getasset("darkrooms/images/ColorableIconBase.png")

local props = {
    ["themedata"] = {
        ["name"] = "defualt",
        ["text_color"] = Color3.fromRGB(255, 255, 255),
        ["bg_color"] = Color3.fromRGB(0, 0, 0)
    },

    ["rbx_ico"] = {
        ["icon"] = getasset("darkrooms/images/ColorableLogo.png"), --// getasset("darkrooms/images/ColorableLogo.png") / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromRGB(255, 255, 255),
        ["bg_color"] = Color3.fromRGB(0, 0, 0),
        
        ["bg_transparency"] = 0
    },

    ["chat_ico"] = {
        ["icon"] = "rbxasset://textures/ui/TopBar/chatOn.png", --// "rbxasset://textures/ui/TopBar/chatOn.png" / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromRGB(255, 255, 255),
        ["bg_color"] = Color3.fromRGB(0, 0, 0),
        
        ["bg_transparency"] = 0
    },

    ["dark_ico"] = {
        ["icon"] = getasset("darkrooms/images/Moon.png"), --// getasset("darkrooms/images/Moon.png") / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromRGB(255, 255, 255),
        ["bg_color"] = Color3.fromRGB(0, 0, 0),
        
        ["bg_transparency"] = 0
    },

    ["other_ico"] = {
        ["icon"] = "rbxasset://textures/ui/TopBar/moreOff.png", --// "rbxasset://textures/ui/TopBar/moreOff.png" / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromRGB(255, 255, 255),
        ["bg_color"] = Color3.fromRGB(0, 0, 0),
        
        ["bg_transparency"] = 0
    }
}

return props
]])

writefile("darkrooms/themes/light.lua", [[
local getasset = getsynasset or getcustomasset
local colorable = getasset("darkrooms/images/ColorableIconBase.png")

local props = {
    ["themedata"] = {
        ["name"] = "light",
        ["text_color"] = Color3.fromRGB(0, 0, 0),
        ["bg_color"] = Color3.fromRGB(255, 255, 255)
    },

    ["rbx_ico"] = {
        ["icon"] = getasset("darkrooms/images/ColorableLogo.png"), --// getasset("darkrooms/images/ColorableLogo.png") / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromRGB(0, 0, 0),
        ["bg_color"] = Color3.fromRGB(255, 255, 255),
        
        ["bg_transparency"] = 0
    },

    ["chat_ico"] = {
        ["icon"] = "rbxasset://textures/ui/TopBar/chatOn.png", --// "rbxasset://textures/ui/TopBar/chatOn.png" / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromRGB(0, 0, 0),
        ["bg_color"] = Color3.fromRGB(255, 255, 255),
        
        ["bg_transparency"] = 0
    },

    ["dark_ico"] = {
        ["icon"] = getasset("darkrooms/images/Moon.png"), --// getasset("darkrooms/images/Moon.png") / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromRGB(0, 0, 0),
        ["bg_color"] = Color3.fromRGB(255, 255, 255),
        
        ["bg_transparency"] = 0
    },

    ["other_ico"] = {
        ["icon"] = "rbxasset://textures/ui/TopBar/moreOff.png", --// "rbxasset://textures/ui/TopBar/moreOff.png" / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromRGB(0, 0, 0),
        ["bg_color"] = Color3.fromRGB(255, 255, 255),
        
        ["bg_transparency"] = 0
    }
}

return props
]])

writefile("darkrooms/themes/multicolor.lua", [[
local getasset = getsynasset or getcustomasset
local colorable = getasset("darkrooms/images/ColorableIconBase.png")

local props = {
    ["themedata"] = {
        ["name"] = "multicolor",
        ["text_color"] = Color3.fromHex("#ffffff"),
        ["bg_color"] = Color3.fromHex("#f75454")
    },

    ["rbx_ico"] = {
        ["icon"] = getasset("darkrooms/images/ColorableLogo.png"), --// getasset("darkrooms/images/ColorableLogo.png") / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#ffffff"),
        ["bg_color"] = Color3.fromHex("#dd1616"),
        
        ["bg_transparency"] = 0
    },

    ["chat_ico"] = {
        ["icon"] = "rbxasset://textures/ui/TopBar/chatOn.png", --// "rbxasset://textures/ui/TopBar/chatOn.png" / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#ffffff"),
        ["bg_color"] = Color3.fromHex("#1cdd16"),
        
        ["bg_transparency"] = 0
    },

    ["dark_ico"] = {
        ["icon"] = getasset("darkrooms/images/Moon.png"), --// getasset("darkrooms/images/Moon.png") / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#ffffff"),
        ["bg_color"] = Color3.fromHex("#164edd"),
        
        ["bg_transparency"] = 0
    },

    ["other_ico"] = {
        ["icon"] = "rbxasset://textures/ui/TopBar/moreOff.png", --// "rbxasset://textures/ui/TopBar/moreOff.png" / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#ffffff"),
        ["bg_color"] = Color3.fromHex("#da16dd"),
        
        ["bg_transparency"] = 0
    }
}

return props
]])

writefile("darkrooms/themes/halloween.lua", [[
local getasset = getsynasset or getcustomasset
local colorable = getasset("darkrooms/images/ColorableIconBase.png")

local props = {
    ["themedata"] = {
        ["name"] = "halloween",
        ["text_color"] = Color3.fromHex("#FB904B"),
        ["bg_color"] = Color3.fromHex("#8860e0")
    },

    ["rbx_ico"] = {
        ["icon"] = getasset("darkrooms/images/ColorableLogo.png"), --// getasset("darkrooms/images/ColorableLogo.png") / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#FB904B"),
        ["bg_color"] = Color3.fromHex("#8860e0"),
        
        ["bg_transparency"] = 0
    },

    ["chat_ico"] = {
        ["icon"] = "rbxasset://textures/ui/TopBar/chatOn.png", --// "rbxasset://textures/ui/TopBar/chatOn.png" / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#FB904B"),
        ["bg_color"] = Color3.fromHex("#8860e0"),
        
        ["bg_transparency"] = 0
    },

    ["dark_ico"] = {
        ["icon"] = getasset("darkrooms/images/Moon.png"), --// getasset("darkrooms/images/Moon.png") / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#FB904B"),
        ["bg_color"] = Color3.fromHex("#8860e0"),
        
        ["bg_transparency"] = 0
    },

    ["other_ico"] = {
        ["icon"] = "rbxasset://textures/ui/TopBar/moreOff.png", --// "rbxasset://textures/ui/TopBar/moreOff.png" / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#FB904B"),
        ["bg_color"] = Color3.fromHex("#8860e0"),
        
        ["bg_transparency"] = 0
    }
}

return props
]])

writefile("darkrooms/themes/discord.lua", [[
local getasset = getsynasset or getcustomasset
local colorable = getasset("darkrooms/images/ColorableIconBase.png")

local props = {
    ["themedata"] = {
        ["name"] = "discord",
        ["text_color"] = Color3.fromHex("#7289DA"),
        ["bg_color"] = Color3.fromHex("#36393E")
    },

    ["rbx_ico"] = {
        ["icon"] = getasset("darkrooms/images/ColorableLogo.png"), --// getasset("darkrooms/images/ColorableLogo.png") / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"

        ["icon_color"] = Color3.fromHex("#36393E"),
        ["bg_color"] = Color3.fromHex("#7289DA"),

        ["bg_transparency"] = 0
    },

    ["chat_ico"] = {
        ["icon"] = "rbxasset://textures/ui/TopBar/chatOn.png", --// "rbxasset://textures/ui/TopBar/chatOn.png" / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"

        ["icon_color"] = Color3.fromHex("#36393E"),
        ["bg_color"] = Color3.fromHex("#7289DA"),

        ["bg_transparency"] = 0
    },

    ["dark_ico"] = {
        ["icon"] = getasset("darkrooms/images/Moon.png"), --// getasset("darkrooms/images/Moon.png") / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"

        ["icon_color"] = Color3.fromHex("#36393E"),
        ["bg_color"] = Color3.fromHex("#7289DA"),

        ["bg_transparency"] = 0
    },

    ["other_ico"] = {
        ["icon"] = "rbxasset://textures/ui/TopBar/moreOff.png", --// "rbxasset://textures/ui/TopBar/moreOff.png" / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"

        ["icon_color"] = Color3.fromHex("#36393E"),
        ["bg_color"] = Color3.fromHex("#7289DA"),

        ["bg_transparency"] = 0
    }
}

return props
]])

writefile("darkrooms/themes/fatality.lua", [[
local getasset = getsynasset or getcustomasset
local colorable = getasset("darkrooms/images/ColorableIconBase.png")

local props = {
    ["themedata"] = {
        ["name"] = "fatality",
        ["text_color"] = Color3.fromHex("#e54e9c"),
        ["bg_color"] = Color3.fromHex("#1D1243")
    },

    ["rbx_ico"] = {
        ["icon"] = getasset("darkrooms/images/ColorableLogo.png"), --// getasset("darkrooms/images/ColorableLogo.png") / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#e54e9c"),
        ["bg_color"] = Color3.fromHex("#1D1243"),
        
        ["bg_transparency"] = 0
    },

    ["chat_ico"] = {
        ["icon"] = "rbxasset://textures/ui/TopBar/chatOn.png", --// "rbxasset://textures/ui/TopBar/chatOn.png" / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#e54e9c"),
        ["bg_color"] = Color3.fromHex("#1D1243"),
        
        ["bg_transparency"] = 0
    },

    ["dark_ico"] = {
        ["icon"] = getasset("darkrooms/images/Moon.png"), --// getasset("darkrooms/images/Moon.png") / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#e54e9c"),
        ["bg_color"] = Color3.fromHex("#1D1243"),
        
        ["bg_transparency"] = 0
    },

    ["other_ico"] = {
        ["icon"] = "rbxasset://textures/ui/TopBar/moreOff.png", --// "rbxasset://textures/ui/TopBar/moreOff.png" / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#e54e9c"),
        ["bg_color"] = Color3.fromHex("#1D1243"),
        
        ["bg_transparency"] = 0
    }
}

return props
]])

writefile("darkrooms/themes/darkplus.lua", [[
local getasset = getsynasset or getcustomasset
local colorable = getasset("darkrooms/images/ColorableIconBase.png")

local props = {
    ["themedata"] = {
        ["name"] = "dark plus",
        ["text_color"] = Color3.fromHex("#ffffff"),
        ["bg_color"] = Color3.fromHex("#202020")
    },

    ["rbx_ico"] = {
        ["icon"] = getasset("darkrooms/images/ColorableLogo.png"), --// getasset("darkrooms/images/ColorableLogo.png") / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#3d3d3d"),
        ["bg_color"] = Color3.fromHex("#ffffff"),
        
        ["bg_transparency"] = 1
    },

    ["chat_ico"] = {
        ["icon"] = "rbxasset://textures/ui/TopBar/chatOn.png", --// "rbxasset://textures/ui/TopBar/chatOn.png" / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#3d3d3d"),
        ["bg_color"] = Color3.fromHex("#ffffff"),
        
        ["bg_transparency"] = 1
    },

    ["dark_ico"] = {
        ["icon"] = getasset("darkrooms/images/Moon.png"), --// getasset("darkrooms/images/Moon.png") / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#3d3d3d"),
        ["bg_color"] = Color3.fromHex("#ffffff"),
        
        ["bg_transparency"] = 1
    },

    ["other_ico"] = {
        ["icon"] = "rbxasset://textures/ui/TopBar/moreOff.png", --// "rbxasset://textures/ui/TopBar/moreOff.png" / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#3d3d3d"),
        ["bg_color"] = Color3.fromHex("#ffffff"),
        
        ["bg_transparency"] = 1
    }
}

return props
]])