local farm 		= "forest"		--"leaf", "sand", "cloud", "mist", "rock", "rain", "forest", "akatsuki", "training"
local SkipOwned = false			--false or true

-------------------EDIT-------------------
if farm == "leaf" then
	code1 = "1CAoQg"
	code2 = "SGUXQw"
	code3 = "C2FNbq"
end

if farm == "cloud" then
	code1 = "3yYztV"
	code2 = "L-mK4J"
	code3 = "ana1vb"
end

if farm == "mist" then
	code1 = "kX3Iub"
	code2 = "jxVqdr"
	code3 = "IjMopU"
end
if farm == "rock" then
	code1 = "Zz5y8S"
	code2 = "ownqx2"
	code3 = "opSCJc"
end
if farm == "sand" then
    code1 = "S2IoFt"
	code2 = "Zu_jZu"
	code3 = "KUvinm"
end
if farm == "rain" then
    code1 = "01ucce"
	code2 = "pwMhfT"
	code3 = "UHJNJc"
end
if farm == "forest" then
    code1 = "QiltvG"
	code2 = "48t3z5"
	code3 = "Y8KN9g"
end
if farm == "training" then
    code1 = "eE_y9b"
	code2 = "3ubiUl"
	code3 = "i6KDi_"
end
if farm == "akatsuki" then
    code1 = "hwn9-A"
	code2 = "hIs0t8"
	code3 = "aG-oPK"
end
-------------------STOP EDIT-------------------
repeat wait() until game:IsLoaded()
wait(10)
hookfunction(getrenv().print, function()
	return wait(1e17)
end)
function toTarget(pos, targetPos, targetCFrame)
    local tween_s = game:service"TweenService"
    local info = TweenInfo.new((targetPos - pos).Magnitude/500, Enum.EasingStyle.Linear)
    local tween, err = pcall(function()
        local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = targetCFrame * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(90))})
        tween:Play()
    end)
    if not tween then return err end
end
local function SCROLLFARM()
    for i,v in pairs(game.workspace.GLOBALTIME:GetChildren()) do
        if v.ClassName == "Model" and v:FindFirstChild("sh") and v.sh.Position.Y > -1000 then
            pcall(function()
                toTarget(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position,v.sh.Position,CFrame.new(v.sh.Position))
			end)
            fireclickdetector(v.sh.ClickDetector)
        end
    end
end
local function JINFARM()
    for i,v in pairs(game:GetService("Workspace").npc:GetChildren()) do
        if v.Name == "npc1" and v:FindFirstChild("HumanoidRootPart") then
			repeat wait()
                pcall(function()
                    v.Humanoid.Health = 0
                    toTarget(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position,v.Head.Position,CFrame.new(v.Head.Position))
				end)
            until v.Humanoid.Health == 0 or not v
        end
    end
end
if game.Workspace:FindFirstChild("CCoff") then
	game.Workspace:FindFirstChild("CCoff"):Destroy()
end
game:GetService('RunService').Stepped:connect(function()
    pcall(function()
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end)
end)
local skip = false
local priv = game.Players.LocalPlayer:WaitForChild("statz"):WaitForChild("ps"):WaitForChild("mycode")
if SkipOwned then
	local unlocked = {}
	for i,v in pairs(game.Players.LocalPlayer.statz.unlocked:GetChildren()) do
		if v.ClassName == "StringValue" then
			table.insert(unlocked, v.Name)	
		end
	end
	for i,v in pairs(game.workspace.GLOBALTIME:GetChildren()) do
	    if v.ClassName == "Model" then
	        if table.find(unlocked, v.Name) then
		        warn("You own "..v.Name..".. Skipping")
		    	skip = true
		    elseif not table.find(unlocked, v.Name) then
		        warn("You don't own "..v.Name..".. Hunting")
		        skip = false
		    end
	    else 
	        skip = true
	    end
	end
end
if not game.workspace.GLOBALTIME:FindFirstChildOfClass("Model") or skip then
	warn("No Scroll!!! ServerHoppinGG!")
	if priv.Value == code3 then
		game.Players.LocalPlayer.startevent:FireServer("teleporttoprivate", code1)
		warn("tp to: "..code1)
	elseif priv.Value == code1 then
		game.Players.LocalPlayer.startevent:FireServer("teleporttoprivate", code2)
		warn("tp to: "..code2)
	elseif priv.Value == code2 then
		game.Players.LocalPlayer.startevent:FireServer("teleporttoprivate", code3)
		warn("tp to: "..code3)
	elseif priv.Value == code3 then
		game.Players.LocalPlayer.startevent:FireServer("teleporttoprivate", code1)
		warn("tp to: "..code3)
	elseif priv.Value ~= code1 or priv.Value ~= code2 or priv.Value ~= code3 then
		game.Players.LocalPlayer.startevent:FireServer("teleporttoprivate", code3)
		warn("tp to: "..code3)
	end
else
	warn("Scroll FOUND!!!")
    spawn(function()
        while wait() do
            JINFARM()
		SCROLLFARM()
	    end
	end)
end
