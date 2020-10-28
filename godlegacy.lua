_G.ToggleColor = Color3.fromRGB(255,0,0)
_G.ButtonColor = Color3.fromRGB(0,255,0)
_G.SliderColor = Color3.fromRGB(0,0,255)

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)

local w = library:CreateWindow("God's Legacy GUI")

local b = w:CreateFolder("AutoFarms")

b:Label("May Give Epilepsy",Color3.fromRGB(38,38,38),Color3.fromRGB(255,255,255)) --BgColor,TextColor

local Meditate
b:Toggle("Auto-Meditate",function(bool)
Meditate = bool
end)
spawn(function()
while wait() do
  if Meditate then
    game.ReplicatedStorage.Remotes.Carrying:FireServer("", "Meditate")
    game.ReplicatedStorage.Remotes.Carrying:FireServer("Passed", "MeditateEnd")
    game.ReplicatedStorage.Remotes.Carrying:FireServer("", "Meditate")
    game:GetService("Players").LocalPlayer.PlayerGui.Meditate.Enabled = false
  end
end
end)
b:Button("+5M Cash",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace['Mira Yoo'].HumanoidRootPart.CFrame
wait(0.8)
for i=1,5000 do
  game.ReplicatedStorage.Quest:FireServer("MiraYooQuest", game.Workspace['Mira Yoo'])
end
wait(0.8)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace['Meshes/untitled_Cube'].CFrame
wait(0.8)
fireclickdetector(game.workspace['Meshes/untitled_Cube'].ClickDetector)
wait(0.8)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace['Mira Yoo'].HumanoidRootPart.CFrame
wait(3)
game.ReplicatedStorage.Quest:FireServer("MiraYooQuestDone", game.Workspace['Mira Yoo'])
end)
b:Button("+1M Cash",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace['Mira Yoo'].HumanoidRootPart.CFrame
wait(0.8)
for i=1,1000 do
  game.ReplicatedStorage.Quest:FireServer("MiraYooQuest", game.Workspace['Mira Yoo'])
end
wait(0.8)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace['Meshes/untitled_Cube'].CFrame
wait(0.8)
fireclickdetector(game.workspace['Meshes/untitled_Cube'].ClickDetector)
wait(0.8)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace['Mira Yoo'].HumanoidRootPart.CFrame
wait(3)
game.ReplicatedStorage.Quest:FireServer("MiraYooQuestDone", game.Workspace['Mira Yoo'])
end)

local z = w:CreateFolder("Stats")
local refresha = z:Label("Stats Counter",{
  TextSize = 34;
  TextColor = Color3.fromRGB(255,255,255);
  BgColor = Color3.fromRGB(247, 95, 28);
})
local refreshlvl = z:Label("Strength: ",{
  TextSize = 14;
  TextColor = Color3.fromRGB(139, 0, 0);
  BgColor = Color3.fromRGB(247, 95, 28);
})
local refreshGP = z:Label("GP:",{
  TextSize = 14;
  TextColor = Color3.fromRGB(173, 216, 230);
  BgColor = Color3.fromRGB(247, 95, 28);
})
local refreshSTR = z:Label("STR:",{
  TextSize = 14;
  TextColor = Color3.fromRGB(255,140,0);
  BgColor = Color3.fromRGB(247, 95, 28);
})
local refreshEND = z:Label("END:",{
  TextSize = 14;
  TextColor = Color3.fromRGB(148,0,211);
  BgColor = Color3.fromRGB(247, 95, 28);
})
spawn(function()
while wait() do
  refreshlvl:Refresh("Level :" .. game.Players.LocalPlayer.Data.Level.Value)
  refreshGP:Refresh("GP : " .. game.Players.LocalPlayer.Data.GP.Value)
  refreshSTR:Refresh("Strength : " .. game.Players.LocalPlayer.Data.Power.Value)
  refreshEND:Refresh("Endurance : " .. game.Players.LocalPlayer.Data.Endurance.Value)
end
end)

local f = w:CreateFolder("Misc")
f:Button("Hide name", function()
game.Players.LocalPlayer.Character.Head.NameTag:Destroy()
end)
f:Button("Reset Character", function()
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)
f:Button("Remove Jump CD", function()
game.Players.LocalPlayer.Character.Movement['Jump Cooldown']:Destroy()
end)
b:DestroyGUI()


local y = w:CreateFolder("Credits")
y:Label("D4rknessDev1l",{
  TextSize = 15;
  TextColor = Color3.fromRGB(255,255,255);
  BgColor = Color3.fromRGB(247, 95, 28);

})
y:Label("Senpai.#4900",{
  TextSize = 15;
  TextColor = Color3.fromRGB(255,255,255);
  BgColor = Color3.fromRGB(247, 95, 28);

})
