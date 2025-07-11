_G.FightReplica = true

_G.BringTrask = true

_G.FightGolem = true


task.spawn(function()

while _G.FightReplica do

local player = game.Players.LocalPlayer

local char = player.Character or player.CharacterAdded:Wait()

local bp = player:WaitForChild("Backpack")

if game.Workspace:FindFirstChild("ReplicaNPC") then

for _, v in pairs(game.Workspace:GetChildren()) do

if v.Name == "ReplicaNPC" and v:FindFirstChild("HumanoidRootPart") then

if bp:FindFirstChild("Lantern") then

bp.Lantern.Parent = char

elseif char:FindFirstChild("Lantern") then

local lantern = char:FindFirstChild("Lantern")

lantern:Activate()

if lantern:FindFirstChild("Network") then

lantern.Network:FireServer("Hit", v.HumanoidRootPart)

end

end

end

end

end

task.wait()

end

end)


task.spawn(function()

while _G.BringTrask do

local player = game.Players.LocalPlayer

local char = player.Character

local bp = player.Backpack

for _, v in pairs(game.Workspace:GetChildren()) do

if v.Name == "TrackGloveMissile" then

if bp:FindFirstChild("Lantern") then

bp.Lantern.Parent = char

end

if char:FindFirstChild("Lantern") then

local lantern = char.Lantern

lantern:Activate()

if lantern:FindFirstChild("Network") then

lantern.Network:FireServer("Hit", v)

end

end

end

end

task.wait()

end

end)


task.spawn(function()

while _G.FightGolem do

local player = game.Players.LocalPlayer

local char = player.Character or player.CharacterAdded:Wait()

local bp = player:WaitForChild("Backpack")


if game.Workspace:FindFirstChild("golem") then

for _, v in pairs(game.Workspace:GetChildren()) do

if v.Name == "golem" and v:FindFirstChild("Hitbox") then

if bp:FindFirstChild("Lantern") then

bp.Lantern.Parent = char

elseif char:FindFirstChild("Lantern") then

char.Lantern:Activate()

if char.Lantern:FindFirstChild("Network") then

char.Lantern.Network:FireServer("Hit", v.Hitbox)

end

end

end

end

end


if game.Workspace:FindFirstChild("DungeonGolem") then

for _, v in pairs(game.Workspace:GetChildren()) do

if v.Name == "DungeonGolem" and v:FindFirstChild("Cube.001") then

if bp:FindFirstChild("Lantern") then

bp.Lantern.Parent = char

elseif char:FindFirstChild("Lantern") then

char.Lantern:Activate()

if char.Lantern:FindFirstChild("Network") then

char.Lantern.Network:FireServer("Hit", v:FindFirstChild("Cube.001"))

end

end

end

end

end

task.wait()

end

end)


task.spawn(function()

while true do

local player = game.Players.LocalPlayer

local char = player.Character or player.CharacterAdded:Wait()

local bp = player:WaitForChild("Backpack")

for _, v in pairs(game.Workspace:GetChildren()) do

if v.Name == "GuideNPC" and v:FindFirstChild("HumanoidRootPart") then

if bp:FindFirstChild("Lantern") then

bp.Lantern.Parent = char

end

if char:FindFirstChild("Lantern") then

char.Lantern:Activate()

local net = char.Lantern:FindFirstChild("Network")

if net then

net:FireServer("Hit", v.HumanoidRootPart)

end

end

end

end

task.wait()

end

end)


task.spawn(function()

loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Gui-Fly-v3-37111"))()

end)


task.spawn(function()

local player = game.Players.LocalPlayer

local char = player.Character or player.CharacterAdded:Wait()

local hrp = char:WaitForChild("HumanoidRootPart")

hrp.CFrame = CFrame.new(3273.19, -74.50, 822.48)

end)
