# Darkrooms
## Customize and theme roblox's topbar buttons.

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/scotdotwtf/darkrooms/main/rewrite.lua"))()
```

### Description
#### Darkrooms is a script that allows you to change the images, colors and transparency of the topbar icons in roblox.

### Updates
- #### v.1b | Soft rewrite. Adds custom theming, last used theme and reworked file and theme system. | I'm prob gonna add more theme options or something in the future.
- #### v.1a | Script made. Everything works. | I need to add last theme on load and sum more stuff

### Support
#### Darkrooms was made for synapse & scriptware but will work with the following executors:
- ##### Synapse V2 (v1.a built on)
- ##### Synapse V3 (v1.b built on)
- ##### Script-ware
- ##### Krnl
- ##### Any executor with `getsynasset` or `getcustomasset` and `writefile`, `makefolder` and `isfolder` will work.

#### Darkrooms was not made for mobile and might not have full support for mobile (support may come soon)

### Theme guide
#### Themeing is quite easy but looks pretty big.

#### Things to know
- ##### Themedata is just what shows up in the presets menu. It wont effect the topbar or anything like that. 
- ##### The backgrounds of icons are white by defualt, so to make it black you have to set the icons `bg_color` to black (`Color3.fromRGB(0, 0, 0) or Color3.fromHex("#000000"`) 
- ##### You **HAVE** to include the first 2 lines (getasset & colorable) or the theme **WILL NOT WORK**
- ##### **The theme is in props = {} so just edit that if u want to make a custom theme** 

#### How to import a custom theme
- ##### First go to your executor workspace folder, then go to darkrooms/themes.
- ##### Second (A) if you have a .lua file already made just drag it in there.
- ##### Second (B) if you have a code snippet, make a new file with the end as .lua (example: `custom.lua`) and open it in a text editor. then paste the code into there. 
- ##### When you done (make sure you save if you are following second b) and you can find it in the gui.

#### How to make a custom theme
- ##### First go to your executor workspace folder, then go to darkrooms/themes.
- ##### Second make a new file with the end as .lua (example: `mytheme.lua`) and open it in a text editor.
- ##### Third paste the defualt theme below. Then change the values in `props`. When you done make sure you save and you can find it in the gui.

#### Here is the defualt theme, it makes it look like stock roblox
```lua
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
```

### Credits
- #### I litterally made everything lol (fontawesome for the moon icon ig)
