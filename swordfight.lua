getgenv().autobot = true


game:GetService("RunService").RenderStepped:Connect(function()

if autobot == true then
    
    spawn(function()
        
local tool = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
if tool and tool:FindFirstChild("Handle") then
tool:Activate()

local p = game.Players:GetPlayers()
for i = 2, #p do local v = p[i].Character
if v and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer:DistanceFromCharacter(v.HumanoidRootPart.Position) <= 15 then

for i,v in next, v:GetChildren() do
if v:IsA("BasePart") then
firetouchinterest(tool.Handle,v,0)
firetouchinterest(tool.Handle,v,1)

end
end
end
end
end
end)
end
end)
local localPlayer = game:GetService("Players").LocalPlayer
local currentCamera = game:GetService("Workspace").CurrentCamera
local mouse = localPlayer:GetMouse()

local function getClosestPlayer()
    local closestPlayer = nil
    local shortestDistance = math.huge

    for i, v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.Name ~= localPlayer.Name then
            if v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Head") then
                if v.Character:FindFirstChildOfClass("ForceField") then
                    else


local ray = Ray.new(v.Character:FindFirstChild("HumanoidRootPart").Position, Vector3.new(0,-100000,0))
    local Hit = game:GetService("Workspace"):FindPartOnRay(ray, v.Character)

    if Hit then



                local magnitude = (v.Character.HumanoidRootPart.Position - localPlayer.Character.HumanoidRootPart.Position).magnitude

                if magnitude < shortestDistance then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
              end         
		end
        end
    end
end
    return closestPlayer
end

local stateType = Enum.HumanoidStateType

local character = game.Players.LocalPlayer.Character
local humanoid = character:WaitForChild("Humanoid")

humanoid:SetStateEnabled(stateType.FallingDown, false)
humanoid:SetStateEnabled(stateType.Ragdoll, false)

while true do
    wait()
    spawn(function()
spawn(function()
			
if executed  then 
    else
    getgenv().executed = true
spawn(function()

getgenv().autobot = false
	getgenv().ssss = game.Players.LocalPlayer:GetMouse()

ssss.KeyDown:connect(function(key)
if key == "x" then
if autobot == false then
    getgenv().autobot = true
    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = false
   else
       
        getgenv().autobot = false
    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = true
    
end
end
end)

end)
end
end)
local nigger = getClosestPlayer()
			if game:GetService("Players").LocalPlayer.Character.PrimaryPart  and getClosestPlayer() ~= nil and autobot == true then

local TargetPart = getClosestPlayer().Character.HumanoidRootPart
local Part = game.Players.LocalPlayer.Character.HumanoidRootPart
local RotateX, RotateY, RotateZ = 0, 0, 0

Part.CFrame = CFrame.new(Part.Position, TargetPart.Position) * CFrame.Angles(math.rad(0), math.rad(25), math.rad(0))

			game:GetService("Players").LocalPlayer.Character.Humanoid:MoveTo(getClosestPlayer().Character.HumanoidRootPart.CFrame * Vector3.new(-3, 0, 0))
if getClosestPlayer().Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end
               



		end
    
    end)
end
   local stateType = Enum.HumanoidStateType

local character = game.Players.LocalPlayer.Character
local humanoid = character:WaitForChild("Humanoid")

humanoid:SetStateEnabled(stateType.FallingDown, false)
humanoid:SetStateEnabled(stateType.Ragdoll, false)
