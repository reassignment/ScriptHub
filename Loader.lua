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
