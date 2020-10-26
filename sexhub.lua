--[[ init
local library = loadstring(game:HttpGet("https://pastebin.com/raw/qwdPKKDN"))()
local venyx = library.new("SexHub", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Test", 5012544693)
local section1 = page:addSection("Section 1")
local section2 = page:addSection("Section 2")

section1:addToggle("Toggle", nil, function(value)
print("Toggled", value)
end)
section1:addButton("Button", function()
print("Clicked")
end)
section1:addTextbox("Notification", "Default", function(value, focusLost)
print("Input", value)

if focusLost then
venyx:Notify("Title", value)
end
end)

section2:addKeybind("Toggle Keybind", Enum.KeyCode.One, function()
print("Activated Keybind")
venyx:toggle()
end, function()
print("Changed Keybind")
end)
section2:addColorPicker("ColorPicker", Color3.fromRGB(50, 50, 50))
section2:addColorPicker("ColorPicker2")
section2:addSlider("Slider", 0, -100, 100, function(value)
print("Dragged", value)
end)
section2:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3})
section2:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3}, function(text)
   print("Selected", text)
end)
section2:addButton("Button")

-- second page
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end

-- load
venyx:SelectPage(venyx.pages[1], true) -- no default for more freedom
--]]
local library = loadstring(game:HttpGet("https://pastebin.com/raw/SCv93XDK"))()
local venyx = library.new("SexHub", 5013109572)
wait(2)
local Namez = "SexHubSettings.sex"
Settings = game:service'HttpService':JSONDecode(readfile(Namez))
local function Save()
    writefile(Namez,game:service'HttpService':JSONEncode(Settings))
    end    
local player = game.Players.LocalPlayer
local mission = player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild("Missionstory")
local bodyvelocityenabled = true

local Imput = game:GetService("UserInputService")
local Plr = game.Players.LocalPlayer
local Mouse = Plr:GetMouse()

function To(position)
local Chr = Plr.Character
if Chr ~= nil then
local ts = game:GetService("TweenService")
local char = game.Players.LocalPlayer.Character
local hm = char.HumanoidRootPart
local dist = (hm.Position - Mouse.Hit.p).magnitude
local tweenspeed = dist/tonumber(140)
local ti = TweenInfo.new(tonumber(tweenspeed), Enum.EasingStyle.Linear)
local tp = {CFrame = CFrame.new(position)}
ts:Create(hm, ti, tp):Play()
if bodyvelocityenabled == true then
local bv = Instance.new("BodyVelocity")
bv.Parent = hm
bv.MaxForce = Vector3.new(100000,100000,100000)
bv.Velocity = Vector3.new(0,0,0)
wait(tonumber(tweenspeed))
bv:Destroy()
end
end
end

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}
local AutoFarmPage = venyx:addPage("Autofarm", 5012544693)
local ServerhopPage = venyx:addPage("Serverhop", 5012544693)
local Snipepage = venyx:addPage("Sniper", 5012544693)
local Extra = venyx:addPage("Extra", 5012544693)
local ExtraSection = Extra:addSection("Extras")
ExtraSection:addButton("No Skillcooldown", function()
    local update = game.Players.LocalPlayer.Character.combat.update
    local chatbox = game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar 
    if game.Players.LocalPlayer.Character.combat.KG.currentmode.Value == "" then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Read Instructions RETARD";
            Text = "Must Have A JIN AWAKENED";
            Icon = "";
            Duration = 30;
            })
        else
    chatbox.Text = "!beserk" -- Must have a JIN activated
    
    for i,v in pairs(getconnections(chatbox.FocusLost)) do
        v.Function(true)
    end
    
    wait(1)
    local a = Instance.new("Model", game.Players.LocalPlayer.Character) -- No more jin room
    a.Name = "stayonground"
    wait(1)
    game.Players.LocalPlayer.Character.beserk:Destroy() -- So you're not stunned 
    wait(0.5)
    a:Destroy()
    -- idk what this nigger does but whatever
        game.StarterGui:SetCore("SendNotification", {
            Title = "Credits:";
            Text = "Senpai daddy, Senpai.#4900";
            Icon = "";
            Duration = 30;
            })
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do -- No black screen
        if v.Name == "Frame" then
            v:Destroy()
        end 
    end
    end
end)
ExtraSection:addButton("Hide Name", function()
    local chatbox = game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar 
    chatbox.Text = "!name hi \n \n \n \n"
    for i,v in pairs(getconnections(chatbox.FocusLost)) do
        v.Function(true)
    end
end)
local section1 = Snipepage:addSection("Snipes")
local autosniper
section1:addToggle("Auto Sniper", nil, function(value)
    autosniper = value
end)
spawn(function()
while wait() do
    spawn(function()
        while wait() do
    if autosniper then
        wait(0.5)
for i,v in pairs(game.workspace.GLOBALTIME:GetChildren()) do
       if v:IsA("Model") and v:FindFirstChild("sh") and v.sh.Position.Y > -1000 then
       warn("real scroll found")
       warn(v.sh.Position)
       warn(v.Name)
       To(v.sh.Position)
    end
end
end
end
end)
end
end)
section1:addButton("Snipe everything", function()
for i,v in pairs(game.workspace.GLOBALTIME:GetChildren()) do
       if v:IsA("Model") and v:FindFirstChild("sh") and v.sh.Position.Y > -1000 then
       warn("real scroll found")
       warn(v.sh.Position)
       warn(v.Name)
       To(v.sh.Position)
end
end
end)
local AutofarmSection = AutoFarmPage:addSection("Autofarm")
if game.PlaceId == 5824792748 then
AutofarmSection:addButton("Round:" .. game:GetService"Workspace".warserver.round.Value, function()
end)
end
local jinkill
AutofarmSection:addToggle("Auto Kill Jins", nil, function(value)
    jinkill = value 
end)
local autofarm
AutofarmSection:addToggle("Autofarmer/AutoQuest", nil, function(value)
    autofarm = value
end)
local warfarm1
AutofarmSection:addToggle("AutoWar Killaura", nil, function(value)
    warfarm1 = value
end)

local Serverhopper = ServerhopPage:addSection("Auto ServerHopper")
local serverhopmist
Serverhopper:addToggle("MistTp", nil, function(value)
    serverhopmist = value
end)
spawn(function()
    while wait() do 
    spawn(function()
if serverhopmist then
    Settings.PlaceTp = mist
    Save()
end
end)
end
end)
local serverhopcloud
Serverhopper:addToggle("CloudTP", nil, function(value)
    serverhopcloud = value 
end)

local serverhoprock
Serverhopper:addToggle("RockTP", nil, function(value)
    serverhoprock = value 
end)

local serverhopsand
Serverhopper:addToggle("SandTP", nil, function(value)
    serverhopsand = value 
end)

local serverhopleaf
Serverhopper:addToggle("LeafTP", nil, function(value)
    serverhopleaf = value
end)

local serverhopforest
Serverhopper:addToggle("Forest Of Death TP", nil, function(value)
    serverhopforest = value
end)

local serverhoptraining
Serverhopper:addToggle("Training Grounds TP", nil, function(value)
    serverhoptraining = value
end)

local serverhopakat
Serverhopper:addToggle("Akatsuki Base", nil, function(value)
    serverhopakat = value
end)

local serverhoprain
Serverhopper:addToggle("Rain", nil, function(value)
    serverhoprain = value
end)
local Normal = ServerhopPage:addSection("Single PrivateTP, Wait 2-4 seconds")
Normal:addButton("Mist", function()
    game.Players.LocalPlayer:WaitForChild("startevent"):FireServer("createprivateserver", 4601350760)
end)
Normal:addButton("Cloud", function()
    game.Players.LocalPlayer:WaitForChild("startevent"):FireServer("createprivateserver", 4601350656)
end)
Normal:addButton("Rock", function()
    game.Players.LocalPlayer:WaitForChild("startevent"):FireServer("createprivateserver", 4601350809)
end)
Normal:addButton("Sand", function()
    game.Players.LocalPlayer:WaitForChild("startevent"):FireServer("createprivateserver", 4601350394)
end)
Normal:addButton("Leaf", function()
    game.Players.LocalPlayer:WaitForChild("startevent"):FireServer("createprivateserver", 4601350214)
end)
Normal:addButton("Forest Of Death", function()
    game.Players.LocalPlayer:WaitForChild("startevent"):FireServer("createprivateserver", 5447073001)
end)
Normal:addButton("Training Grounds", function()
    game.Players.LocalPlayer:WaitForChild("startevent"):FireServer("createprivateserver", 5431071837)
end)
Normal:addButton("Akatsuki Base", function()
    game.Players.LocalPlayer:WaitForChild("startevent"):FireServer("createprivateserver", 5431069982)
end)
Normal:addButton("Rain", function()
    game.Players.LocalPlayer:WaitForChild("startevent"):FireServer("createprivateserver", 5084678830)
end)
Normal:addButton("War Mode", function()
    game.Players.LocalPlayer:WaitForChild("startevent"):FireServer("createprivateserver", 5824792748)
end)
spawn(function()
    while wait() do 
    spawn(function()
        while wait() do
            if jinkill then
                for i,v in pairs(game:GetService("Workspace").npc:GetChildren()) do
                    if v.Name == "npc1" and v:FindFirstChild("HumanoidRootPart") and v.HumanoidRootPart.Position.Y > -1000 then
                        repeat wait()
                            pcall(function()
                                To()
                                wait(.5)
                                v.Humanoid.Health = 0
                            end)
                        until v.Humanoid.Health == 0
                    end
                end
            end   
        end
    end)
    end
    end)
spawn(function()
    while wait() do 
     spawn(function()
        while wait() do
if warfarm1 then
    for i,v in pairs(game.workspace.npc:GetChildren()) do 
        if v:IsA("Model") and v.HumanoidRootPart.Position.Y > -1000 then
            v.Humanoid.Health = 0 
            wait(0.6)
                        end
                    end
                end
            end
        end)
    end
end)
