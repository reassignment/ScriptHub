local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/reassignment/ScriptHub/main/EditedUILib.lua"))();

local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/reassignment/ScriptHub/main/EditedNotificationLib.lua'),true))()

Lib.prompt('ScriptHub', 'Loaded Boss Fighting Simulator', 3)

lib:SetTitle("ScriptHub - Boss Fighting Simulator")

local tab1 = lib:NewTab("Automatic", "Automate Stuff")


tab1:NewToggle("Auto Player".." (WIP: MUST HOLD WEAPON) ",false,function(value)
   if value == true then
        getgenv().autoPlayer = true;
        while autoPlayer == true do
            local myTool = nil

	myTool = game.Players.LocalPlayer.Character:GetChildren()

	for i,tool in pairs(myTool) do

		if tool == nil then

		repeat
		wait(0.1)
		print("No Sword")
		until tool ~= nil

		else if tool:IsA("Tool") then

		myTool = tool.Name


		end

	end

end


local args = {
    [1] = game:GetService("Players").LocalPlayer.Character[tostring(myTool)]
	
}

game:GetService("ReplicatedStorage").Remotes.Power:FireServer(unpack(args))
wait(0.2)


game:GetService("ReplicatedStorage").Remotes.SellPower:InvokeServer()
wait(0.2)
        end
    elseif value == false then
        getgenv().autoPlayer = false;
    end
end)
