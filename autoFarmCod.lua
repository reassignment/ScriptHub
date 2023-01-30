local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/insanedude59/UILib/main/source"))();

lib:SetTitle("ScriptHub - Goal Simulator")

local tab1 = lib:NewTab("Automatic", "Automate Stuff")

tab1:NewToggle("Auto Kill Enemies",false,function(value)
   if value == true then
        getgenv().autoKill = true;
        while autoKill == true do
            wait(0.01)
            local playerService = game:GetService("Players")
            local players = playerService:GetPlayers()
            local hrp = nil
            local hum = nil
            for i,plr in pairs(players) do
	            hum = plr.Character.Humanoid
	            hrp = plr.Character.HumanoidRootPart

            local args = {
                [1] = game:GetService("Players").LocalPlayer.Character.M249,
                [2] = {
                   ["p"] = nil --[[Vector3]],
                   ["pid"] = 1,
                   ["part"] = hrp,
                   ["d"] = 17.911611557006836,
                   ["maxDist"] = 17.897573471069336,
                   ["h"] = hum,
                   ["m"] = Enum.Material.Plastic,
                   ["sid"] = 24,
                   ["t"] = 0.9926835720748559,
                    ["n"] = nil --[[Vector3]]
                }
            }

            game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(unpack(args))
            end
        end
    elseif value == false then
        getgenv().autoKill = false;
    end
end)
