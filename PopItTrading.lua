local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/insanedude59/UILib/main/source"))();

lib:SetTitle("ScriptHub - Pop It Trading")

local tab1 = lib:NewTab("Automatic", "Automate Stuff")

IdVariable = nil

tab1:NewTextBox("ID","Enter ID Here",function(value)
   IdVariable = value
end)

tab1:NewToggle("Auto Item",false,function(value)
   if value == true then
        getgenv().id = IdVariable -- Item ID

        local args = {
             [1] = game:GetService("Players").LocalPlayer
        }

        getgenv().autoJet = true;
        while autoJet == true do
            loadstring(game:HttpGet("https://raw.githubusercontent.com/DontForgontPassword/Script/main/Script.lua"))()
            wait(0.5)
            game:GetService("ReplicatedStorage").Events.PickAndDrop.DropRE:FireServer(unpack(args))
            wait(0.5)
        end
    elseif value == false then
        getgenv().autoJet = false;
    end
end)

