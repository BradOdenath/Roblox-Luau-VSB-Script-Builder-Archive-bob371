who = "bob371"

if script.Parent.className ~= "HopperBin" then
Tool = Instance.new("HopperBin")
Tool.Name = "Press F To Create Turret"
Tool.Parent = game.Players[who].Backpack
script.Parent = Tool
end

vip = game.Players[who]
char = vip.Character

pi = math.pi

Turret = Instance.new("Part")

On = false

function Clicked(Mouse)
On = true
BTurret = char:findFirstChild("BTurret")
if BTurret ~= nil then
while BTurret ~= nil and On == true do

local P = Instance.new("Part") 
local M = Instance.new("BlockMesh")

local Place0 = BTurret.CFrame
local Place1 = Mouse.Hit.p 

P.formFactor = 0 

P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 

P.Name = "Laser" 

P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 

P.Parent = char
P.BrickColor = BrickColor.Yellow()
P.Anchored = true 

P.CanCollide = false 
M.Scale = Vector3.new(0.2,0.2,1)
M.Bevel = 0.11
M.Parent = P
for i = 1,5 do
P2 = P:Clone()
P2.Size = Vector3.new(1,1,10)
P2.Parent = P
P2.CFrame = CFrame.new(Place1.x,Place1.y,Place1.z) * CFrame.fromEulerAnglesXYZ(math.random(1,100),math.random(1,100),math.random(1,100))
end
Mouse.Target:BreakJoints()
wait()

pcall(function() P:remove() end)
end
end
end 

function UnClicked(Mouse)
On = false
end

function onKeyDown(key,Mouse)
if key == "q" then
pcall(function()
for i,v in pairs(char:GetChildren()) do
if v.Name == "BTurret" or v.Name == "asdfpart" then
v:Remove()
end
end
end)
end
if key == "f" then
pcall(function()
for i,v in pairs(char:GetChildren()) do
if v.Name == "BTurret" or v.Name == "asdfpart" then
v:Remove()
end
end
end)
local Turret = Instance.new("Part")
Turret.formFactor = "Symmetric"
Turret.Name = "asdfpart"
Turret.TopSurface = 0
Turret.BottomSurface = 0
Turret.Size = Vector3.new(1,1,1)
Turret.Anchored = true
Turret.Locked = true
Turret.CanCollide = true
Turret.Material = "Ice"
Turret.BrickColor = BrickColor.Black()
Turret.Parent = char
Turret.CFrame = CFrame.new(Mouse.Hit.p.x-1.5,Mouse.Hit.p.y+2.5,Mouse.Hit.p.z) * CFrame.Angles(0,0,pi/2)
local Mesh = Instance.new("CylinderMesh")
Mesh.Scale = Vector3.new(0.75,0.25,0.75)
Mesh.Parent = Turret
Mesh.Bevel = 0.01
----
local Turret = Instance.new("Part")
Turret.formFactor = "Symmetric"
Turret.Name = "asdfpart"
Turret.TopSurface = 0
Turret.BottomSurface = 0
Turret.Size = Vector3.new(1,1,1)
Turret.Anchored = true
Turret.Locked = true
Turret.CanCollide = true
Turret.Material = "Ice"
Turret.BrickColor = BrickColor.Black()
Turret.Parent = char
Turret.CFrame = CFrame.new(Mouse.Hit.p.x-0.2,Mouse.Hit.p.y+2.5,Mouse.Hit.p.z) * CFrame.Angles(0,0,pi/2)
local Mesh = Instance.new("CylinderMesh")
Mesh.Scale = Vector3.new(0.75,0.25,0.75)
Mesh.Parent = Turret
Mesh.Bevel = 0.01
----
local Turret = Instance.new("Part")
Turret.formFactor = "Symmetric"
Turret.Name = "asdfpart"
Turret.TopSurface = 0
Turret.BottomSurface = 0
Turret.Size = Vector3.new(1,1,1)
Turret.Anchored = true
Turret.Locked = true
Turret.CanCollide = true
Turret.Material = "Ice"
Turret.BrickColor = BrickColor.Black()
Turret.Parent = char
Turret.CFrame = CFrame.new(Mouse.Hit.p.x-2.9,Mouse.Hit.p.y+2.5,Mouse.Hit.p.z) * CFrame.Angles(0,0,pi/2)
local Mesh = Instance.new("CylinderMesh")
Mesh.Scale = Vector3.new(0.75,0.3,0.75)
Mesh.Parent = Turret
Mesh.Bevel = 0.01
----
local Turret = Instance.new("Part")
Turret.formFactor = "Symmetric"
Turret.Name = "BTurret"
Turret.TopSurface = 0
Turret.BottomSurface = 0
Turret.Size = Vector3.new(1,3,1)
Turret.Anchored = true
Turret.Locked = true
Turret.CanCollide = true
Turret.Material = "Ice"
Turret.BrickColor = BrickColor.new("Medium stone grey")
Turret.Parent = char
Turret.CFrame = CFrame.new(Mouse.Hit.p.x,Mouse.Hit.p.y+2.3,Mouse.Hit.p.z) * CFrame.Angles(0,0,pi/2)
local Mesh = Instance.new("CylinderMesh")
Mesh.Scale = Vector3.new(0.2,1,0.2)
Mesh.Offset = Vector3.new(0,1.5,0)
Mesh.Parent = Turret
--Mesh.Bevel = 0.01
----
local Turret = Instance.new("Part")
Turret.formFactor = "Symmetric"
Turret.Name = "asdfpart"
Turret.TopSurface = 0
Turret.BottomSurface = 0
Turret.Size = Vector3.new(1,3,1)
Turret.Anchored = true
Turret.Locked = true
Turret.CanCollide = true
Turret.Material = "Ice"
Turret.BrickColor = BrickColor.new("Medium stone grey")
Turret.Parent = char
Turret.CFrame = CFrame.new(Mouse.Hit.p.x,Mouse.Hit.p.y+2.7,Mouse.Hit.p.z) * CFrame.Angles(0,0,pi/2)
local Mesh = Instance.new("CylinderMesh")
Mesh.Scale = Vector3.new(0.2,1,0.2)
Mesh.Offset = Vector3.new(0,1.5,0)
Mesh.Parent = Turret
--Mesh.Bevel = 0.01
----
local Turret = Instance.new("Part")
Turret.formFactor = "Symmetric"
Turret.Name = "asdfpart"
Turret.TopSurface = 0
Turret.BottomSurface = 0
Turret.Size = Vector3.new(1,3,1)
Turret.Anchored = true
Turret.Locked = true
Turret.CanCollide = true
Turret.Material = "Ice"
Turret.BrickColor = BrickColor.new("Medium stone grey")
Turret.Parent = char
Turret.CFrame = CFrame.new(Mouse.Hit.p.x,Mouse.Hit.p.y+2.5,Mouse.Hit.p.z+0.2) * CFrame.Angles(0,0,pi/2)
local Mesh = Instance.new("CylinderMesh")
Mesh.Scale = Vector3.new(0.2,1,0.2)
Mesh.Offset = Vector3.new(0,1.5,0)
Mesh.Parent = Turret
--Mesh.Bevel = 0.01
----
local Turret = Instance.new("Part")
Turret.formFactor = "Symmetric"
Turret.Name = "asdfpart"
Turret.TopSurface = 0
Turret.BottomSurface = 0
Turret.Size = Vector3.new(1,3,1)
Turret.Anchored = true
Turret.Locked = true
Turret.CanCollide = true
Turret.Material = "Ice"
Turret.BrickColor = BrickColor.new("Medium stone grey")
Turret.Parent = char
Turret.CFrame = CFrame.new(Mouse.Hit.p.x,Mouse.Hit.p.y+2.5,Mouse.Hit.p.z-0.2) * CFrame.Angles(0,0,pi/2)
local Mesh = Instance.new("CylinderMesh")
Mesh.Scale = Vector3.new(0.2,1,0.2)
Mesh.Offset = Vector3.new(0,1.5,0)
Mesh.Parent = Turret
--Mesh.Bevel = 0.01
----
local Turret = Instance.new("Part")
Turret.formFactor = "Symmetric"
Turret.Name = "asdfpart"
Turret.TopSurface = 0
Turret.BottomSurface = 0
Turret.Size = Vector3.new(1,3,1)
Turret.Anchored = true
Turret.Locked = true
Turret.CanCollide = true
Turret.Material = "Ice"
Turret.BrickColor = BrickColor.new("Medium stone grey")
Turret.Parent = char
Turret.CFrame = CFrame.new(Mouse.Hit.p.x,Mouse.Hit.p.y+2.5,Mouse.Hit.p.z) * CFrame.Angles(0,0,pi/2)
local Mesh = Instance.new("CylinderMesh")
Mesh.Scale = Vector3.new(0.15,1,0.15)
Mesh.Offset = Vector3.new(0,1.5,0)
Mesh.Parent = Turret
--Mesh.Bevel = 0.01
----
local Turret = Instance.new("Part")
Turret.formFactor = "Symmetric"
Turret.Name = "asdfpart"
Turret.TopSurface = 0
Turret.BottomSurface = 0
Turret.Size = Vector3.new(1,1,1)
Turret.Anchored = true
Turret.Locked = true
Turret.CanCollide = true
Turret.Material = "Ice"
Turret.BrickColor = BrickColor.Black()
Turret.Parent = char
Turret.CFrame = CFrame.new(Mouse.Hit.p.x-3,Mouse.Hit.p.y+2.7,Mouse.Hit.p.z) * CFrame.Angles(0,0,0.2)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.25,1,0.25)
Mesh.Offset = Vector3.new(0,0,0)
Mesh.Parent = Turret
--Mesh.Bevel = 0.01
----
local Turret = Instance.new("Part")
Turret.formFactor = "Symmetric"
Turret.Name = "asdfpart"
Turret.TopSurface = 0
Turret.BottomSurface = 0
Turret.Size = Vector3.new(1,1,1)
Turret.Anchored = true
Turret.Locked = true
Turret.CanCollide = true
Turret.Material = "Ice"
Turret.BrickColor = BrickColor.Black()
Turret.Parent = char
Turret.CFrame = CFrame.new(Mouse.Hit.p.x-3,Mouse.Hit.p.y+2.7,Mouse.Hit.p.z) * CFrame.Angles(0,0,0.2)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.2,1.1,0.2)
Mesh.Offset = Vector3.new(0,0,0)
Mesh.Parent = Turret
--Mesh.Bevel = 0.01
----
local Turret = Instance.new("Part")
Turret.formFactor = "Symmetric"
Turret.Name = "asdfpart"
Turret.TopSurface = 0
Turret.BottomSurface = 0
Turret.Size = Vector3.new(1,1,1)
Turret.Anchored = true
Turret.Locked = true
Turret.CanCollide = true
Turret.Material = "Ice"
Turret.BrickColor = BrickColor.new("Really red")
Turret.Parent = char
Turret.CFrame = CFrame.new(Mouse.Hit.p.x-3,Mouse.Hit.p.y+2.7,Mouse.Hit.p.z) * CFrame.Angles(0,0,0.2)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.1,1.15,0.1)
Mesh.Offset = Vector3.new(0,0,0)
Mesh.Parent = Turret
Mesh.Bevel = 0.01
----
local Turret = Instance.new("Part")
Turret.formFactor = "Symmetric"
Turret.Name = "asdfpart"
Turret.TopSurface = 0
Turret.BottomSurface = 0
Turret.Size = Vector3.new(1,2,1)
Turret.Anchored = true
Turret.Locked = true
Turret.CanCollide = true
Turret.Material = "Ice"
Turret.BrickColor = BrickColor.new("Medium stone grey")
Turret.Parent = char
Turret.CFrame = CFrame.new(Mouse.Hit.p.x-2.4,Mouse.Hit.p.y-0.35,Mouse.Hit.p.z) * CFrame.Angles(0,0,0.2)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.25,1.2,0.25)
Mesh.Offset = Vector3.new(0,1.5,0)
Mesh.Parent = Turret
--Mesh.Bevel = 0.01
----
local Turret = Instance.new("Part")
Turret.formFactor = "Symmetric"
Turret.Name = "asdfpart"
Turret.TopSurface = 0
Turret.BottomSurface = 0
Turret.Size = Vector3.new(1,2,1)
Turret.Anchored = true
Turret.Locked = true
Turret.CanCollide = true
Turret.Material = "Ice"
Turret.BrickColor = BrickColor.new("Medium stone grey")
Turret.Parent = char
Turret.CFrame = CFrame.new(Mouse.Hit.p.x-3.4,Mouse.Hit.p.y-0.35,Mouse.Hit.p.z) * CFrame.Angles(0,0,-0.2)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.25,1.2,0.25)
Mesh.Offset = Vector3.new(0,1.5,0)
Mesh.Parent = Turret
--Mesh.Bevel = 0.01
----
local Turret = Instance.new("Part")
Turret.formFactor = "Symmetric"
Turret.Name = "asdfpart"
Turret.TopSurface = 0
Turret.BottomSurface = 0
Turret.Size = Vector3.new(1,2,1)
Turret.Anchored = true
Turret.Locked = true
Turret.CanCollide = true
Turret.Material = "Ice"
Turret.BrickColor = BrickColor.new("Medium stone grey")
Turret.Parent = char
Turret.CFrame = CFrame.new(Mouse.Hit.p.x-2.9,Mouse.Hit.p.y-0.35,Mouse.Hit.p.z+0.6) * CFrame.Angles(-0.2,0,0)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.25,1.2,0.25)
Mesh.Offset = Vector3.new(0,1.5,0)
Mesh.Parent = Turret
--Mesh.Bevel = 0.01
----
local Turret = Instance.new("Part")
Turret.formFactor = "Symmetric"
Turret.Name = "asdfpart"
Turret.TopSurface = 0
Turret.BottomSurface = 0
Turret.Size = Vector3.new(1,2,1)
Turret.Anchored = true
Turret.Locked = true
Turret.CanCollide = true
Turret.Material = "Ice"
Turret.BrickColor = BrickColor.new("Medium stone grey")
Turret.Parent = char
Turret.CFrame = CFrame.new(Mouse.Hit.p.x-2.9,Mouse.Hit.p.y-0.35,Mouse.Hit.p.z-0.6) * CFrame.Angles(0.2,0,0)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.25,1.2,0.25)
Mesh.Offset = Vector3.new(0,1.5,0)
Mesh.Parent = Turret
--Mesh.Bevel = 0.01
----
local Turret = Instance.new("Part")
Turret.formFactor = "Symmetric"
Turret.Name = "asdfpart"
Turret.TopSurface = 0
Turret.BottomSurface = 0
Turret.Size = Vector3.new(1,1,1)
Turret.Anchored = true
Turret.Locked = true
Turret.CanCollide = true
Turret.Material = "Ice"
Turret.BrickColor = BrickColor.Black()
Turret.Parent = char
Turret.CFrame = CFrame.new(Mouse.Hit.p.x-2.4,Mouse.Hit.p.y-0.35,Mouse.Hit.p.z) * CFrame.Angles(0,0,0.2)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.35,0.3,0.35)
Mesh.Offset = Vector3.new(0,0.6,0)
Mesh.Parent = Turret
--Mesh.Bevel = 0.01
----
local Turret = Instance.new("Part")
Turret.formFactor = "Symmetric"
Turret.Name = "asdfpart"
Turret.TopSurface = 0
Turret.BottomSurface = 0
Turret.Size = Vector3.new(1,1,1)
Turret.Anchored = true
Turret.Locked = true
Turret.CanCollide = true
Turret.Material = "Ice"
Turret.BrickColor = BrickColor.Black()
Turret.Parent = char
Turret.CFrame = CFrame.new(Mouse.Hit.p.x-3.4,Mouse.Hit.p.y-0.35,Mouse.Hit.p.z) * CFrame.Angles(0,0,-0.2)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.35,0.3,0.35)
Mesh.Offset = Vector3.new(0,0.6,0)
Mesh.Parent = Turret
--Mesh.Bevel = 0.01
----
local Turret = Instance.new("Part")
Turret.formFactor = "Symmetric"
Turret.Name = "asdfpart"
Turret.TopSurface = 0
Turret.BottomSurface = 0
Turret.Size = Vector3.new(1,1,1)
Turret.Anchored = true
Turret.Locked = true
Turret.CanCollide = true
Turret.Material = "Ice"
Turret.BrickColor = BrickColor.Black()
Turret.Parent = char
Turret.CFrame = CFrame.new(Mouse.Hit.p.x-2.9,Mouse.Hit.p.y-0.35,Mouse.Hit.p.z+0.6) * CFrame.Angles(-0.2,0,0)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.35,0.3,0.35)
Mesh.Offset = Vector3.new(0,0.6,0)
Mesh.Parent = Turret
--Mesh.Bevel = 0.01
----
local Turret = Instance.new("Part")
Turret.formFactor = "Symmetric"
Turret.Name = "asdfpart"
Turret.TopSurface = 0
Turret.BottomSurface = 0
Turret.Size = Vector3.new(1,1,1)
Turret.Anchored = true
Turret.Locked = true
Turret.CanCollide = true
Turret.Material = "Ice"
Turret.BrickColor = BrickColor.Black()
Turret.Parent = char
Turret.CFrame = CFrame.new(Mouse.Hit.p.x-2.9,Mouse.Hit.p.y-0.35,Mouse.Hit.p.z-0.6) * CFrame.Angles(0.2,0,0)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.35,0.3,0.35)
Mesh.Offset = Vector3.new(0,0.6,0)
Mesh.Parent = Turret
--Mesh.Bevel = 0.01
----
end
end

function Selected(Mouse) 
Mouse.KeyDown:connect(function(key) onKeyDown(key, Mouse) end) 
Mouse.Button1Down:connect(function()Clicked(Mouse)end) 
Mouse.Button1Up:connect(function()UnClicked(Mouse)end)
end 

function Deselected(Mouse)
end

script.Parent.Selected:connect(Selected)
script.Parent.Deselected:connect(Deselected) 
