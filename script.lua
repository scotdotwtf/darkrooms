--[[

    // Darkrooms by spec | v.1a

    - theme roblox however you want
    ~ ignore the 600+ lines of code, blame theming lol

    defualt theme/theme guide: at https://github.com/specowos/darkrooms/blob/main/README.md

]]

--// wait for game to load
if not game:IsLoaded() then
    repeat wait() until game:IsLoaded() 
end

--// quick vars
local topbarframe = game:GetService("CoreGui").ThemeProvider.TopBarFrame
local menubtn = topbarframe.LeftFrame.MenuIcon
local chatbtn = topbarframe.LeftFrame.ChatIcon
local otherbtn = topbarframe.RightFrame.MoreMenu

--// notif function
local function notify(text)
    local notifgui = Instance.new("ScreenGui")
    notifgui.Name = "notifgui"
    notifgui.Parent = game:GetService("CoreGui")

    local notif = Instance.new("TextLabel")
    notif.Parent = notifgui
    notif.Name = "notif"
    notif.FontFace = Font.fromEnum(Enum.Font.Gotham)
    notif.Text = text
    notif.TextColor3 = Color3.fromHex("#FFFFFF")
    notif.TextSize = 16
    notif.TextWrapped = true
    notif.AnchorPoint = Vector2.new(0.5, 0)
    notif.BackgroundColor3 = Color3.fromHex("#729CFF")
    notif.Position = UDim2.new(0.5, 0, 1, 200)
    notif.Size = UDim2.new(0, 100, 0, 35)
    
    local round3 = Instance.new("UICorner")
    round3.Name = "round3"
    round3.CornerRadius = UDim.new(0, 6)
    round3.Parent = notif

    spawn(function()
        notif:TweenPosition(UDim2.new(0.5, 0, 1, -200),"Out","Quint",.5)
        wait(3)
        notif:TweenPosition(UDim2.new(0.5, 0, 1, 0),"In","Quint",.5)
        wait(0.5)
        notifgui:Destroy()
    end)
end

--// reset if executed multiple times
if game:GetService("CoreGui"):FindFirstChild("darkroom") then
    game:GetService("CoreGui").darkroom.bg:TweenPosition(UDim2.new(0, 0, -1, -36),"In","Quint",.5)
    wait(0.5)
    game:GetService("CoreGui").darkroom.bg.Visible = false
    game:GetService("CoreGui").darkroom.Close.Visible = false
    game:GetService("CoreGui").darkroom.DarkToggle.Visible = true
    topbarframe.Visible = true
    game:GetService("CoreGui").PlayerList.Enabled = true
    game:GetService("CoreGui").darkroom:Destroy()
    notify("refreshed!")
end

--// ui
local darkroom = Instance.new("ScreenGui")
darkroom.Name = "darkroom"
darkroom.Parent = game:GetService("CoreGui")

local bg = Instance.new("Frame")
bg.Name = "bg"
bg.BackgroundColor3 = Color3.fromHex("#0A0A0C")
bg.BackgroundTransparency = 0.25
bg.ClipsDescendants = true
bg.Position = UDim2.new(0, 0, -1, -36)
bg.Size = UDim2.new(1, 0, 1, 36)
bg.ZIndex = -5
bg.Visible = false

local displayname = Instance.new("TextLabel")
displayname.Name = "displayname"
displayname.FontFace = Font.fromEnum(Enum.Font.JosefinSans)
displayname.RichText = true
displayname.Text = "<b>dark</b>rooms"
displayname.TextColor3 = Color3.fromHex("#FFFFFF")
displayname.TextSize = 24
displayname.TextWrapped = true
displayname.AnchorPoint = Vector2.new(0.5, 0)
displayname.BackgroundColor3 = Color3.fromHex("#FFFFFF")
displayname.BackgroundTransparency = 1
displayname.Position = UDim2.new(0.5, 0, 0, 100)
displayname.Size = UDim2.fromOffset(150, 45)
displayname.Parent = bg

local middleholder = Instance.new("Frame")
middleholder.Name = "middleholder"
middleholder.AnchorPoint = Vector2.new(0.5, 0.5)
middleholder.BackgroundColor3 = Color3.fromHex("#0F0F0F")
middleholder.BackgroundTransparency = 0.5
middleholder.Position = UDim2.fromScale(0.5, 0.5)
middleholder.Size = UDim2.fromOffset(300, 280)
middleholder.ZIndex = 0

local round1 = Instance.new("UICorner")
round1.Name = "round1"
round1.Parent = middleholder

local preset_display = Instance.new("TextLabel")
preset_display.Name = "preset_display"
preset_display.FontFace = Font.fromEnum(Enum.Font.GothamMedium)
preset_display.Text = "Presets"
preset_display.TextColor3 = Color3.fromHex("#FFFFFF")
preset_display.TextSize = 14
preset_display.TextXAlignment = Enum.TextXAlignment.Left
preset_display.Active = true
preset_display.BackgroundColor3 = Color3.fromHex("#000000")
preset_display.BackgroundTransparency = 1
preset_display.BorderColor3 = Color3.fromHex("#1B2A35")
preset_display.Position = UDim2.fromOffset(10, 10)
preset_display.Selectable = true
preset_display.Size = UDim2.new(1, -10, 0, 24)

local pad = Instance.new("UIPadding")
pad.Name = "pad"
pad.PaddingLeft = UDim.new(0, 5)
pad.Parent = preset_display

preset_display.Parent = middleholder

local scroll = Instance.new("ScrollingFrame")
scroll.Name = "scroll"
scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
scroll.CanvasSize = UDim2.new(0, 0, 1, 12)
scroll.ScrollBarImageColor3 = Color3.fromHex("#000000")
scroll.ScrollBarThickness = 0
scroll.Active = true
scroll.BackgroundColor3 = Color3.fromHex("#FFFFFF")
scroll.BackgroundTransparency = 1
scroll.BorderSizePixel = 0
scroll.Position = UDim2.fromOffset(0, 40)
scroll.Size = UDim2.new(1, 0, 1, -48)

local list = Instance.new("UIListLayout")
list.Name = "list"
list.Padding = UDim.new(0, 6)
list.HorizontalAlignment = Enum.HorizontalAlignment.Center
list.SortOrder = Enum.SortOrder.LayoutOrder
list.Parent = scroll

scroll.Parent = middleholder

middleholder.Parent = bg

bg.Parent = darkroom

--// customimg
local getasset = getcustomasset or getsynasset
if not isfolder("darkrooms") then
    makefolder("darkrooms")
    writefile("darkrooms/ColorableLogo.png", game:HttpGet("https://raw.githubusercontent.com/specowos/darkrooms/main/images/ColorableLogo.png"))
    writefile("darkrooms/ColorableIconBase.png", game:HttpGet("https://raw.githubusercontent.com/specowos/darkrooms/main/images/ColorableIconBase.png"))
    writefile("darkrooms/Moon.png", game:HttpGet("https://raw.githubusercontent.com/specowos/darkrooms/main/images/moon.png"))
    writefile("darkrooms/LastUsed.lua", [[--// Last used theme func here]])
end

--// close ico
local CloseBtn = Instance.new("ImageButton")
CloseBtn.Parent = darkroom
CloseBtn.Name = "Close"
CloseBtn.Size = UDim2.new(0, 32, 0, 32)
CloseBtn.Position = UDim2.new(0, 104, 0, -32)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Image = "rbxasset://textures/ui/TopBar/close.png"
CloseBtn.Visible = false

--// toggle ico
local Holder = Instance.new("Frame")
Holder.Parent = darkroom
Holder.Name = "DarkToggle"
Holder.Size = UDim2.new(0, 32, 0, 32)
Holder.Position = UDim2.new(0, 104, 0, -32)
Holder.ZIndex = 5

Holder.BackgroundTransparency = 1

local Background = Instance.new("ImageButton")
Background.Parent = Holder
Background.Name = "Background"
Background.Size = UDim2.new(0, 32, 0, 32)
Background.Position = UDim2.new(0, 0, 1, 0)
Background.AnchorPoint = Vector2.new(0, 1)
Background.BackgroundTransparency = 1
Background.Image = "rbxasset://textures/ui/TopBar/iconBase.png"
Background.ZIndex = 6

local Icon = Instance.new("ImageLabel")
Icon.Parent = Background
Icon.Name = "Icon"
Icon.AnchorPoint = Vector2.new(0.5, 0.5)
Icon.Size = UDim2.new(0, 24, 0, 24)
Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
Icon.BackgroundTransparency = 1
Icon.Image = getasset("darkrooms/Moon.png")
Icon.ZIndex = 7

Background.MouseButton1Click:Connect(function()
    bg.Visible = true
    CloseBtn.Visible = true
    bg:TweenPosition(UDim2.new(0, 0, 0, -36),"Out","Quint",.5)
    darkroom.DarkToggle.Visible = false
    topbarframe.Visible = false
    game:GetService("CoreGui").PlayerList.Enabled = false
end)

CloseBtn.MouseButton1Click:Connect(function()
    bg:TweenPosition(UDim2.new(0, 0, -1, -36),"In","Quint",.5)
    wait(0.5)
    bg.Visible = false
    CloseBtn.Visible = false
    darkroom.DarkToggle.Visible = true
    topbarframe.Visible = true
    game:GetService("CoreGui").PlayerList.Enabled = true
end)

--// theme func
local function theme(props)
    local themename = Instance.new("TextButton")
    themename.Name = props.themedata.name
    themename.FontFace = Font.fromEnum(Enum.Font.GothamMedium)
    themename.Text = props.themedata.name
    themename.TextColor3 = Color3.fromHex("#FFFFFF")
    themename.TextSize = 14
    themename.TextColor3 = props.themedata.text_color
    themename.BackgroundColor3 = props.themedata.bg_color
    themename.BackgroundTransparency = 0.75
    themename.Size = UDim2.new(1, -15, 0, 32)

    local round2 = Instance.new("UICorner")
    round2.Name = "round2"
    round2.CornerRadius = UDim.new(0, 4)
    round2.Parent = themename

    themename.Parent = scroll

    themename.MouseButton1Click:Connect(function()
        spawn(function()
            bg:TweenPosition(UDim2.new(0, 0, -1, -36),"In","Quint",.5)
            wait(0.5)
            bg.Visible = false
            CloseBtn.Visible = false
            darkroom.DarkToggle.Visible = true
            topbarframe.Visible = true
            game:GetService("CoreGui").PlayerList.Enabled = true
        end)
        
        --// notif
        notify("applied!")

        --// icon images
        menubtn.Background.Icon.Image = props.rbx_ico.icon
        chatbtn.Background.Icon.Image = props.chat_ico.icon
        Icon.Image = props.dark_ico.icon
        otherbtn.OpenButton.Icon.Image = props.other_ico.icon

        --// background images
        menubtn.Background.Image = props.rbx_ico.background
        chatbtn.Background.Image = props.chat_ico.background
        Background.Image = props.dark_ico.background
        otherbtn.OpenButton.Image = props.other_ico.background

        --// icon coloring
        menubtn.Background.Icon.ImageColor3 = props.rbx_ico.icon_color
        chatbtn.Background.Icon.ImageColor3 = props.chat_ico.icon_color
        Icon.ImageColor3 = props.dark_ico.icon_color
        otherbtn.OpenButton.Icon.ImageColor3 = props.other_ico.icon_color

        --// bg coloring
        menubtn.Background.ImageColor3 = props.rbx_ico.bg_color
        chatbtn.Background.ImageColor3 = props.chat_ico.bg_color
        Background.ImageColor3 = props.dark_ico.bg_color
        otherbtn.OpenButton.ImageColor3 = props.other_ico.bg_color

        --// bg transparency
        menubtn.Background.ImageTransparency = props.rbx_ico.bg_transparency
        chatbtn.Background.ImageTransparency = props.chat_ico.bg_transparency
        Background.ImageTransparency = props.dark_ico.bg_transparency
        otherbtn.OpenButton.ImageTransparency = props.other_ico.bg_transparency
    end)
end

local colorable = getasset("darkrooms/ColorableIconBase.png")

--// presets

--// themes
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

theme({
    ["themedata"] = {
        ["name"] = "light",
        ["text_color"] = Color3.fromRGB(0, 0, 0),
        ["bg_color"] = Color3.fromRGB(255, 255, 255)
    },

    ["rbx_ico"] = {
        ["icon"] = getasset("darkrooms/ColorableLogo.png"), --// getasset("darkrooms/ColorableLogo.png") / "robloxid"
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
        ["icon"] = getasset("darkrooms/Moon.png"), --// getasset("darkrooms/Moon.png") / "robloxid"
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
})

theme({
    ["themedata"] = {
        ["name"] = "halloween",
        ["text_color"] = Color3.fromHex("#FB904B"),
        ["bg_color"] = Color3.fromHex("#8860e0")
    },

    ["rbx_ico"] = {
        ["icon"] = getasset("darkrooms/ColorableLogo.png"), --// getasset("darkrooms/ColorableLogo.png") / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#fcecba"),
        ["bg_color"] = Color3.fromHex("#8860e0"),
        
        ["bg_transparency"] = 0
    },

    ["chat_ico"] = {
        ["icon"] = "rbxasset://textures/ui/TopBar/chatOn.png", --// "rbxasset://textures/ui/TopBar/chatOn.png" / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#fcecba"),
        ["bg_color"] = Color3.fromHex("#8860e0"),
        
        ["bg_transparency"] = 0
    },

    ["dark_ico"] = {
        ["icon"] = getasset("darkrooms/Moon.png"), --// getasset("darkrooms/Moon.png") / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#fcecba"),
        ["bg_color"] = Color3.fromHex("#8860e0"),
        
        ["bg_transparency"] = 0
    },

    ["other_ico"] = {
        ["icon"] = "rbxasset://textures/ui/TopBar/moreOff.png", --// "rbxasset://textures/ui/TopBar/moreOff.png" / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#fcecba"),
        ["bg_color"] = Color3.fromHex("#8860e0"),
        
        ["bg_transparency"] = 0
    }
})

theme({
    ["themedata"] = {
        ["name"] = "fatality.win",
        ["text_color"] = Color3.fromHex("#e54e9c"),
        ["bg_color"] = Color3.fromHex("#1D1243")
    },

    ["rbx_ico"] = {
        ["icon"] = getasset("darkrooms/ColorableLogo.png"), --// getasset("darkrooms/ColorableLogo.png") / "robloxid"
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
        ["icon"] = getasset("darkrooms/Moon.png"), --// getasset("darkrooms/Moon.png") / "robloxid"
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
})

theme({
    ["themedata"] = {
        ["name"] = "discord",
        ["text_color"] = Color3.fromHex("#7289DA"),
        ["bg_color"] = Color3.fromHex("#36393E")
    },

    ["rbx_ico"] = {
        ["icon"] = getasset("darkrooms/ColorableLogo.png"), --// getasset("darkrooms/ColorableLogo.png") / "robloxid"
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
        ["icon"] = getasset("darkrooms/Moon.png"), --// getasset("darkrooms/Moon.png") / "robloxid"
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
})

theme({
    ["themedata"] = {
        ["name"] = "dark plus",
        ["text_color"] = Color3.fromHex("#ffffff"),
        ["bg_color"] = Color3.fromHex("#202020")
    },

    ["rbx_ico"] = {
        ["icon"] = getasset("darkrooms/ColorableLogo.png"), --// getasset("darkrooms/ColorableLogo.png") / "robloxid"
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
        ["icon"] = getasset("darkrooms/Moon.png"), --// getasset("darkrooms/Moon.png") / "robloxid"
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
})

theme({
    ["themedata"] = {
        ["name"] = "halloween multicolor plus",
        ["text_color"] = Color3.fromHex("#fcc82d"),
        ["bg_color"] = Color3.fromHex("#8860e0")
    },

    ["rbx_ico"] = {
        ["icon"] = getasset("darkrooms/ColorableLogo.png"), --// getasset("darkrooms/ColorableLogo.png") / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#8860e0"),
        ["bg_color"] = Color3.fromHex("#ffffff"),
        
        ["bg_transparency"] = 1
    },

    ["chat_ico"] = {
        ["icon"] = "rbxasset://textures/ui/TopBar/chatOn.png", --// "rbxasset://textures/ui/TopBar/chatOn.png" / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#fcc82d"),
        ["bg_color"] = Color3.fromHex("#ffffff"),
        
        ["bg_transparency"] = 1
    },

    ["dark_ico"] = {
        ["icon"] = getasset("darkrooms/Moon.png"), --// getasset("darkrooms/Moon.png") / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#8860e0"),
        ["bg_color"] = Color3.fromHex("#ffffff"),
        
        ["bg_transparency"] = 1
    },

    ["other_ico"] = {
        ["icon"] = "rbxasset://textures/ui/TopBar/moreOff.png", --// "rbxasset://textures/ui/TopBar/moreOff.png" / "robloxid"
        ["background"] = colorable, --// colorable / "robloxid"
        
        ["icon_color"] = Color3.fromHex("#fcc82d"),
        ["bg_color"] = Color3.fromHex("#ffffff"),
        
        ["bg_transparency"] = 1
    }
})

theme({
    ["themedata"] = {
        ["name"] = "multicolor",
        ["text_color"] = Color3.fromHex("#ffffff"),
        ["bg_color"] = Color3.fromHex("#f75454")
    },

    ["rbx_ico"] = {
        ["icon"] = getasset("darkrooms/ColorableLogo.png"), --// getasset("darkrooms/ColorableLogo.png") / "robloxid"
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
        ["icon"] = getasset("darkrooms/Moon.png"), --// getasset("darkrooms/Moon.png") / "robloxid"
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
})
