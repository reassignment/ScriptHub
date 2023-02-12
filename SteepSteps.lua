local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/insanedude59/UILib/main/source"))();

local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BoredStuff2/notify-lib/main/lib'),true))()
Lib.prompt('ScriptHub', 'Loaded Steep Steps', 3)

lib:SetTitle("ScriptHub - Steep Steps")

local tab1 = lib:NewTab("Fly", "Flight For Steep Steps")

tab1:NewButton("Click Q To Fly",function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/kodescripts/scripts/main/Flight.lua"))()
end)
