local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dawid-scripts/Fluent/main/source.lua"))()

local Window = Fluent:CreateWindow({

Title = "Alchemist Hub",

SubTitle = "Made by Alchemist",

TabWidth = 160,

Size = UDim2.fromOffset(500, 400),

Acrylic = true,

Theme = "Dark",

MinimizeKey = Enum.KeyCode.RightControl

})


local InfoTab = Window:AddTab({ Title = "Info", Icon = "info" })

InfoTab:AddParagraph({

Title = "Credits",

Content = "Credits to Alchemist and ringta <3"

})

InfoTab:AddParagraph({

Title = "Executor Info",

Content = "Executor: " .. identifyexecutor() .. "\nDiscord: alchemist_gaming2.0"

})


local MiscTab = Window:AddTab({ Title = "Misc", Icon = "settings" })


MiscTab:AddButton({

Title = "Teleport to Lever",

Description = "Teleports you to the final room",

Callback = function()

local player = game.Players.LocalPlayer

local char = player.Character or player.CharacterAdded:Wait()

local hrp = char:WaitForChild("HumanoidRootPart")

local targetPosition = Vector3.new(3273.19, -74.50, 822.48)

hrp.CFrame = CFrame.new(targetPosition)

end

})


_G.AutoAttackGolems = false

MiscTab:AddToggle("Auto Attack Golems", {

Default = false,

Callback = function(Value)

_G.AutoAttackGolems = Value

if Value then

task.spawn(function()

local player = game.Players.LocalPlayer

local char = player.Character or player.CharacterAdded:Wait()

local bp = player:WaitForChild("Backpack")

while _G.AutoAttackGolems do

local function equipLantern()

local lantern = bp:FindFirstChild("Lantern")

if lantern then lantern.Parent = char end

end

local function attackTarget(target, part)

equipLantern()

if char:FindFirstChild("Lantern") and part then

char.Lantern:Activate()

local network = char.Lantern:FindFirstChild("Network")

if network then

network:FireServer("Hit", part)

end

end

end

for _, v in pairs(workspace:GetChildren()) do

if v.Name == "golem" and v:FindFirstChild("Hitbox") then

attackTarget(v, v.Hitbox)

elseif v.Name == "DungeonGolem" and v:FindFirstChild("Cube.001") then

attackTarget(v, v:FindFirstChild("Cube.001"))

end

end

task.wait()

end

end)

end

end

})


_G.FightBossFinal = false

MiscTab:AddToggle("Auto Attack Guide", {

Default = false,

Callback = function(Value)

_G.FightBossFinal = Value

if Value then

task.spawn(function()

while _G.FightBossFinal do

for _, v in pairs(workspace:GetChildren()) do

if v.Name == "GuideNPC" and v:FindFirstChild("HumanoidRootPart") then

local player = game.Players.LocalPlayer

local char = player.Character

local bp = player.Backpack

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

end

end

})


_G.BringTrask = false

MiscTab:AddToggle("Auto Hit Tracks", {

Default = false,

Callback = function(Value)

_G.BringTrask = Value

if Value then

task.spawn(function()

while _G.BringTrask do

local player = game.Players.LocalPlayer

local char = player.Character

local bp = player.Backpack

for _, v in pairs(workspace:GetChildren()) do

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

end

end

})


_G.HitPotatoLord = false

MiscTab:AddToggle("Auto Hit Potato Lord", {

Default = false,

Callback = function(Value)

_G.HitPotatoLord = Value

if Value then

task.spawn(function()

while _G.HitPotatoLord do

for _, v in pairs(workspace:GetChildren()) do

if v.Name == "PotatoLord" and v:FindFirstChild("HumanoidRootPart") then

local player = game.Players.LocalPlayer

local char = player.Character

local bp = player.Backpack

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

end

end

})


_G.FightReplica = false

MiscTab:AddToggle("Auto Fight Replica", {

Default = false,

Callback = function(Value)

_G.FightReplica = Value

if Value then

task.spawn(function()

while _G.FightReplica do

for _, v in pairs(workspace:GetChildren()) do

if v.Name == "ReplicaNPC" and v:FindFirstChild("HumanoidRootPart") then

local player = game.Players.LocalPlayer

local char = player.Character

local bp = player.Backpack

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

end

end

})


Fluent:Notify({

Title = "Alchemist Hub",

Content = "Made by Alchemist | Loaded successfully!",

Duration = 6

}
