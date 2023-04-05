--[[

    // Darkrooms [soft rewrite] v.1b3

    ~ Thme your roblox however you want!
      - You may ask, why the hell did u re-write? I re-wrote because the original source kinda suck'd.

    Theme guide at: https://github.com/scotdotwtf/darkrooms

]]

--// wait for game to load *for autoexc*
if not game:IsLoaded() then
    repeat wait() until game:IsLoaded() 
end

--// custom assets
local getasset = getcustomasset or getsynasset

local function iffolder(folder)
    if not isfolder(folder) then
        makefolder(folder)
    end
end

local function iffile(file, thing)
    if not isfile(file) then
        writefile(file, thing)
    end
end

iffolder("darkrooms")
iffolder("darkrooms/images")
iffolder("darkrooms/themes")

iffile("darkrooms/images/ColorableLogo.png", game:HttpGet("https://raw.githubusercontent.com/scotdotwtf/darkrooms/main/images/ColorableLogo.png"))
iffile("darkrooms/images/ColorableIconBase.png", game:HttpGet("https://raw.githubusercontent.com/scotdotwtf/darkrooms/main/images/ColorableIconBase.png"))
iffile("darkrooms/images/Moon.png", game:HttpGet("https://raw.githubusercontent.com/scotdotwtf/darkrooms/main/images/moon.png"))

loadstring(game:HttpGet("https://raw.githubusercontent.com/scotdotwtf/darkrooms/main/writethemes.lua"))()

iffile("darkrooms/lastused.lua", [[darkrooms/themes/defualt.lua]])

--// notif function
local function notify(text, bgcolor, textcolor)
    local notifgui = Instance.new("ScreenGui")
    notifgui.Name = "notifgui"
    notifgui.Parent = game:GetService("CoreGui")

    local notif = Instance.new("TextLabel")
    notif.Parent = notifgui
    notif.Name = "notif"
    notif.FontFace = Font.fromEnum(Enum.Font.Gotham)
    notif.Text = text
    notif.TextColor3 = textcolor
    notif.TextSize = 16
    notif.TextWrapped = true
    notif.AnchorPoint = Vector2.new(0.5, 0)
    notif.BackgroundColor3 = bgcolor
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

--// quick vars
local topbarframe = game:GetService("CoreGui").TopBarApp.TopBarFrame
local menubtn = topbarframe.LeftFrame.MenuIcon
local chatbtn = topbarframe.LeftFrame.ChatIcon
local otherbtn = topbarframe.RightFrame.MoreMenu

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
    notify("refreshed!", Color3.fromHex("#729CFF"), Color3.fromHex("#FFFFFF"))
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

--// open ico
local DarkToggleBg = Instance.new("ImageButton")
DarkToggleBg.Parent = darkroom
DarkToggleBg.Name = "DarkToggle"
DarkToggleBg.Size = UDim2.new(0, 32, 0, 32)
DarkToggleBg.Position = UDim2.new(0, 104, 0, 0)
DarkToggleBg.AnchorPoint = Vector2.new(0, 1)
DarkToggleBg.BackgroundTransparency = 1
DarkToggleBg.Image = "rbxasset://textures/ui/TopBar/iconBase.png"
DarkToggleBg.ZIndex = 6

local DarkToggleIcon = Instance.new("ImageLabel")
DarkToggleIcon.Parent = DarkToggleBg
DarkToggleIcon.Name = "Icon"
DarkToggleIcon.AnchorPoint = Vector2.new(0.5, 0.5)
DarkToggleIcon.Size = UDim2.new(0, 24, 0, 24)
DarkToggleIcon.Position = UDim2.new(0.5, 0, 0.5, 0)
DarkToggleIcon.BackgroundTransparency = 1
DarkToggleIcon.Image = getasset("darkrooms/images/Moon.png")
DarkToggleIcon.ZIndex = 7

--// close ico
local CloseBtn = Instance.new("ImageButton")
CloseBtn.Parent = darkroom
CloseBtn.Name = "Close"
CloseBtn.Size = UDim2.new(0, 32, 0, 32)
CloseBtn.Position = UDim2.new(0, 104, 0, -32)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Image = "rbxasset://textures/ui/TopBar/close.png"
CloseBtn.Visible = false

--// scripting for open/close buttons
DarkToggleBg.MouseButton1Click:Connect(function()
    bg.Visible = true
    CloseBtn.Visible = true
    bg:TweenPosition(UDim2.new(0, 0, 0, -36),"Out","Quint",.5)
    DarkToggleBg.Visible = false
    topbarframe.Visible = false
    game:GetService("CoreGui").PlayerList.Enabled = false
end)

CloseBtn.MouseButton1Click:Connect(function()
    bg:TweenPosition(UDim2.new(0, 0, -1, -36),"In","Quint",.5)
    wait(0.5)
    bg.Visible = false
    CloseBtn.Visible = false
    DarkToggleBg.Visible = true
    topbarframe.Visible = true
    game:GetService("CoreGui").PlayerList.Enabled = true
end)

--// theme patch function
local function theme(path)
    props = loadfile(path)()

    --// icon images
    menubtn.Background.Icon.Image = props.rbx_ico.icon
    chatbtn.Background.Icon.Image = props.chat_ico.icon
    DarkToggleIcon.Image = props.dark_ico.icon
    otherbtn.OpenButton.Icon.Image = props.other_ico.icon

    --// background images
    menubtn.Background.Image = props.rbx_ico.background
    chatbtn.Background.Image = props.chat_ico.background
    DarkToggleBg.Image = props.dark_ico.background
    otherbtn.OpenButton.Image = props.other_ico.background

    --// icon coloring
    menubtn.Background.Icon.ImageColor3 = props.rbx_ico.icon_color
    chatbtn.Background.Icon.ImageColor3 = props.chat_ico.icon_color
    DarkToggleIcon.ImageColor3 = props.dark_ico.icon_color
    otherbtn.OpenButton.Icon.ImageColor3 = props.other_ico.icon_color

    --// bg coloring
    menubtn.Background.ImageColor3 = props.rbx_ico.bg_color
    chatbtn.Background.ImageColor3 = props.chat_ico.bg_color
    DarkToggleBg.ImageColor3 = props.dark_ico.bg_color
    otherbtn.OpenButton.ImageColor3 = props.other_ico.bg_color

    --// bg transparency
    menubtn.Background.ImageTransparency = props.rbx_ico.bg_transparency
    chatbtn.Background.ImageTransparency = props.chat_ico.bg_transparency
    DarkToggleBg.ImageTransparency = props.dark_ico.bg_transparency
    otherbtn.OpenButton.ImageTransparency = props.other_ico.bg_transparency
end

--// make theme btn function
local function addbutton(path)
    local data = loadfile(path)()

    local themename = Instance.new("TextButton")
    themename.Name = data.themedata.name
    themename.FontFace = Font.fromEnum(Enum.Font.GothamMedium)
    themename.Text = data.themedata.name
    themename.TextSize = 14
    themename.TextColor3 = data.themedata.text_color
    themename.BackgroundColor3 = data.themedata.bg_color
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
        
        theme(path)
        writefile("darkrooms/lastused.lua", path)

        notify("applied!", data.themedata.bg_color, data.themedata.text_color)
    end)
end

--// add themes
for i, v in pairs(listfiles("darkrooms/themes")) do
    addbutton(v)
end

--// extra wait just so themes can download
wait(0.5)

--// load last used
theme(readfile("darkrooms/lastused.lua"))
