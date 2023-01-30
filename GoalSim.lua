local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/insanedude59/UILib/main/source"))();

lib:SetTitle("ScriptHub - Goal Simulator")

local tab1 = lib:NewTab("Automatic", "Automate Stuff")
local AutoScoreSlider = nil


tab1:NewToggle("Auto Score Perfect",false,function(value)
   if value == true then
        getgenv().autoPerfect = true;
        while autoPerfect == true do
            game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(table.unpack({    [1] = "Football",    [2] = "Shoot",    [3] = 0.02999262628634969,    [4] = false,    [5] = workspace.Goals.Left,    [6] = AutoScoreSlider,}))
            game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(table.unpack({    [1] = "Football",    [2] = "RewardPlayer",    [3] = false,    [4] = 135,    [5] = workspace.Goals.Left.Destinations["1"].Left,    [6] = AutoScoreSlider,    [7] = 1,}))
            wait()
        end
    elseif value == false then
        getgenv().autoPerfect = false;
    end
end)

tab1:NewSlider("Range",10,50,10,function(value)
   AutoScoreSlider = value
end)

tab1:NewToggle("Auto Contract",false,function(value)
    if value == true then
        getgenv().autoContract = true;
        while autoContract == true do
            game:GetService("ReplicatedStorage").Events.RemoteFunction:InvokeServer(table.unpack({    [1] = "Divisions",    [2] = "AcceptContract",}))
            wait()
        end
    elseif value == false then
        getgenv().autoContract = false;
    end
end)


