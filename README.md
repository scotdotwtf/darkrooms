# Darkrooms
## Customize and theme roblox's topbar buttons.

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/specowos/darkrooms/main/script.lua"))()
```

### Description
#### Darkrooms is a script that allows you to change the images, colors and transparency of the topbar icons in roblox.

### Updates
- #### v.1a | Script made, everything works. | I need to add last theme on load and sum more stuff

### Support
#### Darkrooms was made for synapse & scriptware but will work with the following executors:
- ##### Synapse V2
- ##### Synapse V3
- ##### Script-ware
- ##### Krnl
- ##### Any executor with `getsynasset` or `getcustomasset` and `writefile`, `makefolder` and `isfolder` will work.

#### Darkrooms was not made for mobile and might not have full support for mobile (support may come soon)

### Theme guide
#### ⚠ CUSTOM THEMING COMING SOON ⚠
#### Themeing is quite easy but looks pretty big.

#### Things to know
- ##### Themedata is just what shows up in the presets menu. It wont effect the topbar or anything like that. 
- ##### The backgrounds of icons are white by defualt, so to make it black you have to set the icons `bg_color` to black (`Color3.fromRGB(0, 0, 0) or Color3.fromHex("#000000"`)  

#### Here is the defualt theme, it makes it look like stock roblox
```lua
theme({
    ["themedata"] = {
        ["name"] = "defualt",
        ["text_color"] = Color3.fromRGB(255, 255, 255),
        ["bg_color"] = Color3.fromRGB(0, 0, 0)
    },

    ["rbx_ico"] = {
        ["icon"] = getasset("darkrooms/ColorableLogo.png"), --// getasset("darkrooms/ColorableLogo.png") / "robloxid"
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
        ["icon"] = getasset("darkrooms/Moon.png"), --// getasset("darkrooms/Moon.png") / "robloxid"
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
})
```

### Credits
- #### I litterally made everything lol (fontawesome for the moon icon ig)
