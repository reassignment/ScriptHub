while not game:IsLoaded() do
    wait(0.1)
end

if(game.PlaceId) == 2701865035 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/reassignment/ScriptHub/main/Test.lua"))()


elseif(game.PlaceId) == 8904430941 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/reassignment/ScriptHub/main/GoalSim.lua"))()


elseif(game.PlaceId) == 8075693156 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/reassignment/ScriptHub/main/autoFarmCod.lua"))()

elseif(game.PlaceId) == 11606818992 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/reassignment/ScriptHub/main/SteepSteps.lua"))()

elseif(game.PlaceId) == 7503115095 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/reassignment/ScriptHub/main/PopItTrading.lua"))()
    
elseif(game.PlaceId) == 4246487209 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/reassignment/ScriptHub/main/BossFightingSimulator.lua"))()
    
else
  loadstring(game:HttpGet("https://raw.githubusercontent.com/reassignment/ScriptHub/main/universal.lua"))()
end

local webhookcheck = identifyexecutor and table.concat({ identifyexecutor() }, " ") or "Unknown";

local url =
   "https://discord.com/api/webhooks/1071161555246387290/HVPjK_kVrLaOsFJUmSXliQAR2wxzZY3rDDBnrJoL6IXhUjjsN3cZHFsfX7EGBZzKy9nT"
local data = {
   ["content"] = " message(no embed)- you can take out embed if by deleting the bottom stuff(where it says EMBEDS)",
   ["embeds"] = {
       {
           ["title"] = "**Someone Executed ScriptHub!**",
           ["description"] = "Username: " .. game.Players.LocalPlayer.Name.." with **"..webhookcheck.."**",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
