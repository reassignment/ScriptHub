local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/astraln/SentinelUILIB/main/UI.lua', true))()

local window = Library:Window('ScriptHub - Goal Simulator')

local tab = window:Tab('Automatic')

tab:Toggle('Auto Score Perfect',false, function(t)
    if t == true then
        getgenv().autoPerfect = true;
        while autoPerfect == true do
            game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(table.unpack({    [1] = "Football",    [2] = "Shoot",    [3] = 0.02999262628634969,    [4] = false,    [5] = workspace.Goals.Left,    [6] = 11,}))
            game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(table.unpack({    [1] = "Football",    [2] = "RewardPlayer",    [3] = false,    [4] = 135,    [5] = workspace.Goals.Left.Destinations["1"].Left,    [6] = 11,    [7] = 1,}))
            wait()
        end
    elseif t == false then
        getgenv().autoPerfect = false;
    end
end)

tab:Toggle('Auto Contract',false, function(t)
    if t == true then
        getgenv().autoContract = true;
        while autoContract == true do
            game:GetService("ReplicatedStorage").Events.RemoteFunction:InvokeServer(table.unpack({    [1] = "Divisions",    [2] = "AcceptContract",}))
            wait()
        end
    elseif t == false then
        getgenv().autoContract = false;
    end
end)
