who = "bob371"

--[[if script.Parent.className ~= "HopperBin" then
Tool = Instance.new("HopperBin")
Tool.Name = "Press F To Create Turret"
Tool.Parent = game.Players[who].Backpack
script.Parent = Tool
end]]

vip = game.Players[who]
char = vip.Character

pi = math.pi

Turret = Instance.new("Part")

On = false
vip = owner or game.Players.LocalPlayer or game.Players[who]
char = vip.Character

--[[
	Framework: Roblox
	Language: Lua
	Project: Script/ HopperBin Events
	Coders: supergod800, bob371
]]--

local Keys,downs,lastpressed={},{},{}

local function isKeyDown(key) return downs[tostring(key)] or false end


local function _setKey(key,func) Keys[key]=func end
local function setKey(key,func) 
	if typeof(key) == 'table' then 
		for i,v in pairs(key) do 
			_setKey(v, func) 
		end 
	else 
		_setKey(key, func) 
	end
end

local function timePassed(key)
    local t = tick() return math.max(t - (lastpressed[key] or t),0)
end

local function onKeyUp(key)
	On = false
end

local function keyDown(plr,key)	
	key = tostring(key)
	print(key)
	if isKeyDown(key) then 
		downs[key]=false
		onKeyUp(key)
	else
		downs[key],lastpressed[key]=true,tick()
		if Keys[key] then Keys[key]()end
	end
end

local mouse = {}
local keysEvent = Instance.new("RemoteEvent",NLS(string.format([[
    local keysEvent,mouse = script:FindFirstChildWhichIsA("RemoteEvent"),game.Players.LocalPlayer:GetMouse()
    local mousedata = keysEvent:FindFirstChildWhichIsA("RemoteEvent")
    mouse.KeyDown:connect(function(plr,key)  keysEvent:FireServer(plr,key) end)
    mouse.KeyUp:connect(function(plr,key) keysEvent:FireServer(plr,key) end)
    mouse.Button1Down:connect(function(plr,key) keysEvent:FireServer(plr,'MouseButton1Down') end)
    mouse.Button1Up:connect(function(plr,key) keysEvent:FireServer(plr,'MouseButton1Down') end)
    local runserv = game:GetService("RunService")
    while runserv.Stepped:Wait() do
        mousedata:FireServer(plr,{Hit = mouse.Hit,Target = mouse.Target})
    end
    ]],''),
vip.PlayerGui))
	
local mouseEvent = Instance.new('RemoteEvent',keysEvent)
mouseEvent.OnServerEvent:Connect(function(plr,data) mouse = data end)
keysEvent.OnServerEvent:Connect(keyDown)


setKey('MouseButton1Down',
function()
if mouse.Target == nil then return end
On = true
BTurret = char:findFirstChild("BTurret")
if BTurret ~= nil then
while BTurret ~= nil and On == true do

local P = Instance.new("Part") 
local M = Instance.new("BlockMesh",P)

local Place0 = BTurret.CFrame
local Place1 = mouse.Hit.p 

P.formFactor = 0 

P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 

P.Name = "Laser" 

P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 

P.Parent = char
P.BrickColor = BrickColor.Yellow()
P.Anchored = true 

P.CanCollide = false 
M.Scale = Vector3.new(0.2,0.2,1)
pcall(function() M.Bevel = 0.11 end)
M.Parent = P
for i = 1,5 do
P2 = P:Clone()
P2.Size = Vector3.new(1,1,10)
P2.Parent = P
P2.CFrame = CFrame.new(Place1.x,Place1.y,Place1.z) * CFrame.fromEulerAnglesXYZ(math.random(1,100),math.random(1,100),math.random(1,100))
end
mouse.Target:BreakJoints()
wait()

pcall(function() P:remove() end)
end
end
end)

--function onKeyDown(key,mouse)

setKey('q',
function()
pcall(function()
for i,v in pairs(char:GetChildren()) do
if v.Name == "BTurret" or v.Name == "asdfpart" then
v:Remove()
end
end
end)
end)

setKey('f',
function()
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
Turret.CFrame = CFrame.new(mouse.Hit.p.x-1.5,mouse.Hit.p.y+2.5,mouse.Hit.p.z) * CFrame.Angles(0,0,pi/2)
local Mesh = Instance.new("CylinderMesh")
Mesh.Scale = Vector3.new(0.75,0.25,0.75)
Mesh.Parent = Turret
pcall(function() Mesh.Bevel = 0.01 end)
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
Turret.CFrame = CFrame.new(mouse.Hit.p.x-0.2,mouse.Hit.p.y+2.5,mouse.Hit.p.z) * CFrame.Angles(0,0,pi/2)
local Mesh = Instance.new("CylinderMesh")
Mesh.Scale = Vector3.new(0.75,0.25,0.75)
Mesh.Parent = Turret
pcall(function() Mesh.Bevel = 0.01 end)
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
Turret.CFrame = CFrame.new(mouse.Hit.p.x-2.9,mouse.Hit.p.y+2.5,mouse.Hit.p.z) * CFrame.Angles(0,0,pi/2)
local Mesh = Instance.new("CylinderMesh")
Mesh.Scale = Vector3.new(0.75,0.3,0.75)
Mesh.Parent = Turret
pcall(function() Mesh.Bevel = 0.01 end)
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
Turret.CFrame = CFrame.new(mouse.Hit.p.x,mouse.Hit.p.y+2.3,mouse.Hit.p.z) * CFrame.Angles(0,0,pi/2)
local Mesh = Instance.new("CylinderMesh")
Mesh.Scale = Vector3.new(0.2,1,0.2)
Mesh.Offset = Vector3.new(0,1.5,0)
Mesh.Parent = Turret
--pcall(function() Mesh.Bevel = 0.01 end)
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
Turret.CFrame = CFrame.new(mouse.Hit.p.x,mouse.Hit.p.y+2.7,mouse.Hit.p.z) * CFrame.Angles(0,0,pi/2)
local Mesh = Instance.new("CylinderMesh")
Mesh.Scale = Vector3.new(0.2,1,0.2)
Mesh.Offset = Vector3.new(0,1.5,0)
Mesh.Parent = Turret
--pcall(function() Mesh.Bevel = 0.01 end)
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
Turret.CFrame = CFrame.new(mouse.Hit.p.x,mouse.Hit.p.y+2.5,mouse.Hit.p.z+0.2) * CFrame.Angles(0,0,pi/2)
local Mesh = Instance.new("CylinderMesh")
Mesh.Scale = Vector3.new(0.2,1,0.2)
Mesh.Offset = Vector3.new(0,1.5,0)
Mesh.Parent = Turret
--pcall(function() Mesh.Bevel = 0.01 end)
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
Turret.CFrame = CFrame.new(mouse.Hit.p.x,mouse.Hit.p.y+2.5,mouse.Hit.p.z-0.2) * CFrame.Angles(0,0,pi/2)
local Mesh = Instance.new("CylinderMesh")
Mesh.Scale = Vector3.new(0.2,1,0.2)
Mesh.Offset = Vector3.new(0,1.5,0)
Mesh.Parent = Turret
--pcall(function() Mesh.Bevel = 0.01 end)
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
Turret.CFrame = CFrame.new(mouse.Hit.p.x,mouse.Hit.p.y+2.5,mouse.Hit.p.z) * CFrame.Angles(0,0,pi/2)
local Mesh = Instance.new("CylinderMesh")
Mesh.Scale = Vector3.new(0.15,1,0.15)
Mesh.Offset = Vector3.new(0,1.5,0)
Mesh.Parent = Turret
--pcall(function() Mesh.Bevel = 0.01 end)
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
Turret.CFrame = CFrame.new(mouse.Hit.p.x-3,mouse.Hit.p.y+2.7,mouse.Hit.p.z) * CFrame.Angles(0,0,0.2)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.25,1,0.25)
Mesh.Offset = Vector3.new(0,0,0)
Mesh.Parent = Turret
--pcall(function() Mesh.Bevel = 0.01 end)
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
Turret.CFrame = CFrame.new(mouse.Hit.p.x-3,mouse.Hit.p.y+2.7,mouse.Hit.p.z) * CFrame.Angles(0,0,0.2)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.2,1.1,0.2)
Mesh.Offset = Vector3.new(0,0,0)
Mesh.Parent = Turret
--pcall(function() Mesh.Bevel = 0.01 end)
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
Turret.CFrame = CFrame.new(mouse.Hit.p.x-3,mouse.Hit.p.y+2.7,mouse.Hit.p.z) * CFrame.Angles(0,0,0.2)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.1,1.15,0.1)
Mesh.Offset = Vector3.new(0,0,0)
Mesh.Parent = Turret
pcall(function() Mesh.Bevel = 0.01 end)
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
Turret.CFrame = CFrame.new(mouse.Hit.p.x-2.4,mouse.Hit.p.y-0.35,mouse.Hit.p.z) * CFrame.Angles(0,0,0.2)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.25,1.2,0.25)
Mesh.Offset = Vector3.new(0,1.5,0)
Mesh.Parent = Turret
--pcall(function() Mesh.Bevel = 0.01 end)
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
Turret.CFrame = CFrame.new(mouse.Hit.p.x-3.4,mouse.Hit.p.y-0.35,mouse.Hit.p.z) * CFrame.Angles(0,0,-0.2)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.25,1.2,0.25)
Mesh.Offset = Vector3.new(0,1.5,0)
Mesh.Parent = Turret
--pcall(function() Mesh.Bevel = 0.01 end)
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
Turret.CFrame = CFrame.new(mouse.Hit.p.x-2.9,mouse.Hit.p.y-0.35,mouse.Hit.p.z+0.6) * CFrame.Angles(-0.2,0,0)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.25,1.2,0.25)
Mesh.Offset = Vector3.new(0,1.5,0)
Mesh.Parent = Turret
--pcall(function() Mesh.Bevel = 0.01 end)
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
Turret.CFrame = CFrame.new(mouse.Hit.p.x-2.9,mouse.Hit.p.y-0.35,mouse.Hit.p.z-0.6) * CFrame.Angles(0.2,0,0)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.25,1.2,0.25)
Mesh.Offset = Vector3.new(0,1.5,0)
Mesh.Parent = Turret
--pcall(function() Mesh.Bevel = 0.01 end)
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
Turret.CFrame = CFrame.new(mouse.Hit.p.x-2.4,mouse.Hit.p.y-0.35,mouse.Hit.p.z) * CFrame.Angles(0,0,0.2)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.35,0.3,0.35)
Mesh.Offset = Vector3.new(0,0.6,0)
Mesh.Parent = Turret
--pcall(function() Mesh.Bevel = 0.01 end)
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
Turret.CFrame = CFrame.new(mouse.Hit.p.x-3.4,mouse.Hit.p.y-0.35,mouse.Hit.p.z) * CFrame.Angles(0,0,-0.2)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.35,0.3,0.35)
Mesh.Offset = Vector3.new(0,0.6,0)
Mesh.Parent = Turret
--pcall(function() Mesh.Bevel = 0.01 end)
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
Turret.CFrame = CFrame.new(mouse.Hit.p.x-2.9,mouse.Hit.p.y-0.35,mouse.Hit.p.z+0.6) * CFrame.Angles(-0.2,0,0)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.35,0.3,0.35)
Mesh.Offset = Vector3.new(0,0.6,0)
Mesh.Parent = Turret
--pcall(function() Mesh.Bevel = 0.01 end)
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
Turret.CFrame = CFrame.new(mouse.Hit.p.x-2.9,mouse.Hit.p.y-0.35,mouse.Hit.p.z-0.6) * CFrame.Angles(0.2,0,0)
local Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.35,0.3,0.35)
Mesh.Offset = Vector3.new(0,0.6,0)
Mesh.Parent = Turret
--pcall(function() Mesh.Bevel = 0.01 end)
----
end)
--end

--[[
function Selected(mouse) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
mouse.Button1Down:connect(function()Clicked(mouse)end) 
mouse.Button1Up:connect(function()UnClicked(mouse)end)
end 

function Deselected(mouse)
end

script.Parent.Selected:connect(Selected)
script.Parent.Deselected:connect(Deselected) 
]]