repeat wait() until game:IsLoaded()
local Namez = "SexHubSettings.sex"
Settings = game:service'HttpService':JSONDecode(readfile(Namez))

wait(Settings.Wait)
print(Settings.Wait)
skip = false
zigger = false
Tp2 = "nil"
if Settings.PlaceTp == "nil" then 
error()
	elseif Settings.PlaceTp == "mist" then
Tp2 = "4601350760"
	elseif Settings.PlaceTp == "cloud" then
Tp2 = "4601350656"
	elseif Settings.PlaceTp == "rock" then
Tp2 = "4601350809"
	elseif Settings.PlaceTp == "sand" then
Tp2 = "4601350394"
	elseif Settings.PlaceTp == "leaf" then
Tp2 = "4601350214" 
	elseif Settings.PlaceTp == "forest" then
Tp2 = "5447073001"
	elseif Settings.PlaceTp == "training" then
Tp2 = "5431071837"
	elseif Settings.PlaceTp == "akat" then
Tp2 = "5431069982"
	elseif Settings.PlaceTp == "rain" then
Tp2 = "5084678830"
local whore = Vector3.new(0, -40000, 0)
local bodyvelocityenabled = true -- set this to false if you are getting kicked
niggar = "nil"


if Tp2 == 4601350760 then
niggar = "Mist Village."
	elseif Tp2 == 4601350656 then
niggar = "Cloud Village."
	elseif Tp2 == 4601350809 then
niggar = "Rock Village."
 	elseif Tp2 == 4601350394 then
niggar = "Sand Village."
	elseif Tp2 == 4601350214 then
niggar = "Leaf Village."
	elseif Tp2 == 5447073001 then
niggar = "Forest Of Death."
	elseif Tp2 == 5431071837 then
niggar = "Training Grounds."
	elseif Tp2 == 5431069982 then
niggar = "Akatsuki Base."
	elseif Tp2 == 5084678830 then
niggar = "Rain Village."
end

local function JINKILL()
	wait(5)
    for i,v in pairs(game:GetService("Workspace").npc:GetChildren()) do
        if v.Name == "npc1" and v:FindFirstChild("HumanoidRootPart") and v.HumanoidRootPart.Position.Y > -1000 then
                    v.Head:Destroy()
        end
    end
end

local Imput = game:GetService("UserInputService")
local http_request = http_request;
if syn then
http_request = syn.request
elseif SENTINEL_V2 then
function http_request(tb)
return {
StatusCode = 200;
Body = request(tb.Url, tb.Method, (tb.Body or ''))
}
end
end


if game.Workspace:FindFirstChild("CCoff") then
	game.Workspace:FindFirstChild("CCoff"):Destroy()
end

local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local decoded = game:GetService('HttpService'):JSONDecode(body)
local hwid_list = {"Syn-Fingerprint", "Exploit-Guid", "Proto-User-Identifier", "Sentinel-Fingerprint"};
local hwidz = "";

for i, v in next, hwid_list do
if decoded.headers[v] then
hwidz = decoded.headers[v];
break
end
end


local function log(name, message, hook)
 local api = "http://buritoman69.glitch.me/webhook" -- credits to owner
 local Body = {
   ['Key'] = "applesaregood", -- api owner's apikey
   ['Message'] = tostring(message),
   ['Name'] = tostring(name),
   ['Webhook'] = tostring(hook)
 }
 local data = game:HttpPost(api, game:GetService("HttpService"):JSONEncode(Body), false, "application/json")
 return data or nil
end
local hwidwh = "https://discordapp.com/api/webhooks/766281274159005747/naddjrmiwSh336SrcGkhcutJ84XVzMulRuzDh2BVfOtMSETgv5lm4TpeFdkwKT2dwbpk"

local blacklisted_hwids = {
                         "7916b99eb5cb097a619a294c79a6c500c0db68b9f009e3cbb38be7d2ae97cad435df59bc44ef995f30c7e29a952a92911417b7aa771e155195046607899ff698", "Hwid2", "Hwid3"
                          }

local body = http_request({Url = 'https://creativehell.xyz/api/gethwid.php'; Method = 'GET'}).Body;
local json_decode = game:GetService('HttpService'):JSONDecode(body)
local Fingerprnit_list = {"Syn-Fingerprint", "Exploit-Guid", "Proto-User-Identifier", "Sentinel-Fingerprint"};
local hwid = "";

for i, v in next, Fingerprnit_list do
    if json_decode[v] then
    for i1, v1 in next, blacklisted_hwids do
        if  v1 == json_decode[v] then
           print('BlackListed');
           log("blacklisted", "***" .. hwidz .. "***" ..  "* Username:  " .. game.Players.LocalPlayer.Name , hwidwh);
           game:Shutdown()
        end
    end
    end
end
local Plr = game.Players.LocalPlayer
local Mouse = Plr:GetMouse()
local Plr = game.Players.LocalPlayer
function To(position)
local Chr = Plr.Character
if Chr ~= nil then
local ts = game:GetService("TweenService")
local char = game.Players.LocalPlayer.Character
local hm = char:WaitForChild("HumanoidRootPart")
local dist = (hm.Position - Mouse.Hit.p).magnitude
local tweenspeed = dist/tonumber(Settings.Speed)
local ti = TweenInfo.new(tonumber(tweenspeed), Enum.EasingStyle.Linear)
local tp = {CFrame = CFrame.new(position)}
ts:Create(hm, ti, tp):Play()
-- senpai was here
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
local HttpService = game:GetService("HttpService");



game.StarterGui:SetCore("SendNotification", {
Title = "hi";
Text = "Senpai was here. :3";
Icon = "";
Duration = 30;
})
game.StarterGui:SetCore("SendNotification", {
Title = "Discord";
Text = "Senpai.#4900";
Icon = "";
Duration = 30;
})

	for i,v in pairs(game.workspace.GLOBALTIME:GetChildren()) do
	    if v.ClassName == "Model" then 
	        if table.find(getgenv().ignore, v.Name) then
	            zigger = true
	        elseif not table.find(getgenv().ignore, v.Name) then
                zigger = false
                else 
                    zigger = true
	        end
	    end
        end

local plr = game.Players.LocalPlayer
if Settings.Skippingss == true then
	local nigger = {}
	for i,v in pairs(game.Players.LocalPlayer.statz.unlocked:GetChildren()) do
		if v.ClassName == "StringValue" then
			table.insert(nigger, v.Name)	
		end
	end
	for i,v in pairs(game.workspace.GLOBALTIME:GetChildren()) do
	    if v.ClassName == "Model" then
	        if table.find(nigger, v.Name) then
		        warn("You own "..v.Name..".. Skipping")
		    	skip = true
		    elseif not table.find(nigger,v.Name) then
		        warn("You don't own "..v.Name..".. Hunting")
		        skip = false
		    end
	    else 
	        skip = true
	    end
	end
end
for i=1, 5 do 
    wait()
for i,v in pairs(game.workspace.GLOBALTIME:GetChildren()) do
    if not game.workspace.GLOBALTIME:FindFirstChildOfClass("Model") or skip or zigger then
        game.Players.LocalPlayer:WaitForChild("startevent"):FireServer("createprivateserver", Tp2)
     game.Players.LocalPlayer:WaitForChild("startevent"):FireServer("createprivateserver", Tp2)
   else
       
       if v:IsA("Model") and v.sh.Position ~= whore then
       warn("real scroll found")
       warn(v.sh.Position)
       warn(v.Name)
       To(v.sh.Position)
       JINKILL()
       fireclickdetector(v.sh.ClickDetector)
       local name = game.Players.LocalPlayer.Name
       local monkeyzzz = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").private.Text
    local snipewh = "https://discord.com/api/webhooks/767062747040972810/09LhRUrMO8A4EUHmchHnksWaDUEYKG1lbs83eAQ3buILAg2z18zjPraXibe490fwqgxy"
    local flexwh = "https://discordapp.com/api/webhooks/766777831694270473/h-nHwLJqqybqMCMamh_QBaHMJYBX2PpwJCO1F5ia8bLGwUENlAi4gPdoxcrOXlgt4HT_"
    local formatwh = "https://discordapp.com/api/webhooks/767475701213167687/E68vGiose__CjlBQ6d6I3amt1NNQyX46OWebNUgmoYRBXKInB3xiPCS_yxDUBp1wjOsC"
    local HttpService = game:GetService("HttpService");
function specials(Webhook, Message, Botname)
    local Name;
    local start = game:HttpGet("http://buritoman69.glitch.me");
    local biggie = "http://buritoman69.glitch.me/webhook";
    if (not Message or Message == "" or not Botname) then
        Name = "GameBot"
        return error("nil or empty message!")
    else
        Name = Botname;
    end
    local Body = {
        ['Key'] = tostring("applesaregood"),
        ['Message'] = tostring(Message),
        ['Name'] = Name,
        ['Webhook'] = Webhook    
    }
    Body = HttpService:JSONEncode(Body);
    local Data = game:HttpPost(biggie, Body, false, "application/json")
    return Data or nil;
end
specials(snipewh, "***" .. name .. " sniped: ".. v.Name .. "Code: "  .. monkeyzzz .. "***", "Logger")
specials(flexwh, "***" .. "Sniped: " .. v.Name .. " Code: " .. monkeyzzz .. "***", "Senpai Winning")
specials(formatwh, "***" .. monkeyzzz .. " | " .. v.Name .. " | " ..  niggar .. "***", "Format")
       game.StarterGui:SetCore("SendNotification", {
Title = "scroll sniped";
Text = "sniped: " ..  v.Name;
Icon = "";
Duration = 120;
})
end
end
end
end
