local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/insanedude59/UILib/main/source"))();

local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BoredStuff2/notify-lib/main/lib'),true))()
Lib.prompt('ScriptHub', 'Loaded Universal', 3)

lib:SetTitle("ScriptHub - Universal")

getgenv().useTeamColor = true
getgenv().cham = false
getgenv().boxESP = false
getgenv().Visibility = false

loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))()
getgenv().esp_loaded = true

local tab1 = lib:NewTab("Speed and Jump", "Walkspeed and Jumpspeed")

tab1:NewSlider("WalkSpeed",16,500,16,function(value)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

tab1:NewSlider("JumpPower",50,500,50,function(value)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)



local tab2 = lib:NewTab("Infinite Yield", "Admin Script")

tab2:NewButton("Infinite Yield",function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))();
end)

local tab3 = lib:NewTab("ESP", "ESP Obviously")

tab3:NewToggle("ESP",false,function(value)
   getgenv().boxESP = value
   getgenv().Visibility = value
   getgenv().cham = value
   getgenv().useTeamColor = value
end)
