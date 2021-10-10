local who = '12345x54321'

local color_schemes = {
	default = {
		primary = BrickColor.new("Really red").Color,
		eye_ball = BrickColor.new("Institutional white").Color,
		core = BrickColor.new("Really black").Color,
		nose = BrickColor.new("Deep orange").Color
	}
}

COLOR_DEFAULT_PRIMARY = color_schemes.default.primary
COLOR_DEFAULT_CORE = color_schemes.default.core
COLOR_DEFAULT_EYEBALL = color_schemes.default.eye_ball
COLOR_DEFAULT_NOSE = color_schemes.default.nose

local player = owner or game.Players[who] or game.Players.LocalPlayer
local character = player.Character

local v3n, cfn, cfa, cfe, c3 = Vector3.new, CFrame.new, CFrame.Angles, CFrame.fromEulerAnglesXYZ, Color3.fromRGB

local pi = math.pi

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
		local mousedata
					--, cameradata 
			= keysEvent:FindFirstChildWhichIsA("RemoteEvent"), keysEvent:FindFirstChildWhichIsA("RemoteEvent")
		mouse.KeyDown:connect(function(plr,key)  keysEvent:FireServer(plr,key) end)
		mouse.KeyUp:connect(function(plr,key) keysEvent:FireServer(plr,key) end)
		mouse.Button1Down:connect(function(plr,key) keysEvent:FireServer(plr,'MouseButton1Down') end)
		mouse.Button1Up:connect(function(plr,key) keysEvent:FireServer(plr,'MouseButton1Down') end)
		local runserv = game:GetService("RunService")
		while runserv.Stepped:Wait() do
			mousedata:FireServer(plr,{Hit = mouse.Hit,Target = mouse.Target, TargetSurface = mouse.TargetSurface})
			--cameradata:FireServer(plr,{Cam = workspace.CurrentCamera})
		end
		]],''),
player.PlayerGui))
	
local isR15 = function(_c)
	if (_c:FindFirstChild("Torso") ~= nil) then
		return false
	else
		return true
	end
end

local isAMesh = function(entity)
	local _is = (string.find(entity, 'Mesh') or (entity:IsA("CylinderMesh") or 
			entity:IsA("BlockMesh") or 
			entity:IsA("SpecialMesh")))
	print("_is: "..tostring(_is))
	return _is
end

local headTagName = "Head"

local characterHeadMesh = function(part)
	local _m = Instance.new("SpecialMesh")
	if (isR15(character) == false) then
		_m.Scale = v3n(1.25,1.25,1.25)
	end
	_m.Parent = part
	return (headTagName.."Mesh"..part.Name)
end

local invisibleTagName = 'OriginalTransparency'

local setInvisibleTag = function(part)
	local tag = Instance.new("NumberValue")
	tag.Name = invisibleTagName
	tag.Value = part.Transparency
	tag.Parent = part
	--print(part.Name, tag.Value)
	return tag
end

local getInvisibleTag = function(part)
	if (part:FindFirstChild(invisibleTagName) ~= nil) then
		return part:FindFirstChild(invisibleTagName).Value
	else
		return nil
	end
end

local removeInvisibleTag = function(part)
	local _invisibleTag = part:FindFirstChild(invisibleTagName)
	if (_invisibleTag ~= nil) then
		pcall(function() _invisibleTag:Remove() end)
	end
end

local set_transparency = function(model, transparency)
	for i,v in pairs(model:GetDescendants()) do
		if (v:IsA("BasePart")) then
			if (getInvisibleTag(v) == nil) then
				setInvisibleTag(v)
			end
			v.Transparency = transparency
		end
	end
end

local invisiblify = function(model)
	set_transparency(model, 1)
end

local visiblify = function(model)
	for i,v in pairs(model:GetDescendants()) do
		if (v:IsA("BasePart")) then
			local _invisibleTag = getInvisibleTag(v)
			if (_invisibleTag ~= nil) then
				v.Transparency = _invisibleTag
				removeInvisibleTag(v)
			else
				print('NOI')
				v.Transparency = 0
			end
		end
	end
end

local WeldPart = function(name, size, color, shape, reflectance, part0, c0)
	local _p = Instance.new("Part")
	_p.Name = name
	_p.Size = size
	_p.Color = color
	_p.Anchored, _p.CanCollide, _p.Locked = false, false, true
	_p.BottomSurface, _p.TopSurface = 0, 0
	_p.Material = "Plastic"
	_p.Shape = shape
	_p.Reflectance = reflectance
	_p.Parent = part0
	
	local _w = Instance.new("Weld")
	_w.Parent = _p
	_w.Part0 = part0
	_w.Part1 = _p
	_w.C0 = c0
	
	return _p
end


local Mesh = function(mesh_type, scale, offset)
	local _mesh
	_mesh = Instance.new("SpecialMesh")
	_mesh.MeshType = mesh_type
	_mesh.Scale = scale
	_mesh.Offset = offset
	return _mesh
end

local WeldMeshPart = function(weld_part, mesh)
	local _p = weld_part
	local _m = mesh
	_m.Parent = weld_part
end

local ArmorPart = function(part)
	local _p = WeldPart(
		('Armor'..tostring(part)),
		part.Size,
		COLOR_DEFAULT_PRIMARY,
		"Block",
		0.1,
		part,
		cfn(0,0,0)
	)
	
	pcall(function()
		_p.MeshId = part.MeshId
	end)
	
	pcall(function() 
		for i,v in pairs(part:GetChildren()) do
			if isAMesh(v) then
				print('z')
				local m = v:Clone()
				m.Parent = _p
			end
		end
	end)
	
	if (part.Name == "Head") then
		characterHeadMesh(_p)
	end
	
	return _p
end

FadeInvisiblifyCharacter = function(c)
	for j = 0, 0.5, 0.1 do wait()
		set_transparency(c, j)
	end
end

local ArmorCharacter = function(c)
	invisiblify(c)
	for i,v in pairs(c:GetChildren()) do
		if (v:IsA("BasePart") and v.Name ~= "HumanoidRootPart") then
			ArmorPart(v)
		end
	end
end


local SuitArmor = function(_c)
	--R6/R15
	local Head =	 		_c:FindFirstChild("Head")
	
	--R6
	local Torso = 			_c:FindFirstChild("Torso")
	
	--R15
	local UpperTorso = 		_c:FindFirstChild("UpperTorso")
	local LowerTorso = 		_c:FindFirstChild("LowerTorso")
	
	--R6
	local LeftArm = 		_c:FindFirstChild("Left Arm")	
	local RightArm = 		_c:FindFirstChild("Right Arm")	
	
	--R15
	local LeftLowerArm = 	_c:FindFirstChild("LeftLowerArm")
	local RightLowerArm = 	_c:FindFirstChild("RightLowerArm")	
	local LeftUpperArm = 	_c:FindFirstChild("LeftUpperArm")
	local RightUpperArm = 	_c:FindFirstChild("RightUpperArm")
	
	--R6
	local LeftLeg = 		_c:FindFirstChild("Left Leg")	
	local RightLeg = 		_c:FindFirstChild("Right Leg")	
	
	--R15
	local LeftLowerLeg = 	_c:FindFirstChild("LeftLowerLeg")
	local RightLowerLeg = 	_c:FindFirstChild("RightLowerLeg")	
	local LeftUpperLeg = 	_c:FindFirstChild("LeftUpperLeg")
	local RightUpperLeg = 	_c:FindFirstChild("RightUpperLeg")
	
	local RightFoot = 		_c:FindFirstChild("RightFoot")
	local LeftFoot = 		_c:FindFirstChild("LeftFoot")
	local RightHand = 		_c:FindFirstChild("RightHand")
	local LeftHand = 		_c:FindFirstChild("LeftHand")

	local _suitData = {}
	
	local _core = {
		name = 'Core',
		size = v3n(2.7, 2.7, 2.7),
		color = COLOR_DEFAULT_PRIMARY,
		shape = "Ball",
		reflectance = 0.1,
		mesh = Mesh("Sphere",v3n(1.35,1,1),v3n(0,0,0))
	}
	
	local _mouth = {
		name = 'Mouth',
		size = v3n(1,1,1),
		color = COLOR_DEFAULT_CORE,
		shape = "Ball",
		reflectance = 0.1,
		mesh = Mesh("Sphere",v3n(2,2,0.5),v3n(0,0,0))
	}
	
	local _nose = {
		name = 'Nose',
		size = v3n(1,1,1),
		color = COLOR_DEFAULT_NOSE,
		shape = "Ball",
		reflectance = 0.1,
		mesh = Mesh("Sphere",v3n(1,1.2,1),v3n(0,0,0))
	}
	
	local _left_eye_ball = {
		name = 'Core',
		size = v3n(1.5,1.5,1.5),
		color = COLOR_DEFAULT_EYEBALL,
		shape = "Ball",
		reflectance = 0.1,
		mesh = Mesh("Sphere",v3n(1,1,1),v3n(0,0,0))
	}
	
	local _right_eye_ball = {
		name = 'Core',
		size = v3n(1.5,1.5,1.5),
		color = COLOR_DEFAULT_EYEBALL,
		shape = "Ball",
		reflectance = 0.1,
		mesh = Mesh("Sphere",v3n(1,1,1),v3n(0,0,0))
	}
	
	local _left_eye_pupil = {
		name = 'Core',
		size = v3n(0.5,0.5,0.5),
		color = COLOR_DEFAULT_CORE,
		shape = "Ball",
		reflectance = 0.1,
		mesh = Mesh("Sphere",v3n(1,1,1),v3n(0,0,0))
	}
	
	local _right_eye_pupil = {
		name = 'Core',
		size = v3n(0.5,0.5,0.5),
		color = COLOR_DEFAULT_CORE,
		shape = "Ball",
		reflectance = 0.1,
		mesh = Mesh("Sphere",v3n(1,1,1),v3n(0,0,0))
	}
	
	_core = WeldMeshPart(WeldPart(_core.name, _core.size, _core.color, _core.shape, _core.reflectance, Head, cfn(0,0.4,0)), _core.mesh)
	_nose = WeldMeshPart(WeldPart(_nose.name, _nose.size, _nose.color, _nose.shape, _nose.reflectance, Head, cfn(0,0.4,-1.02)), _nose.mesh)
	_mouth = WeldMeshPart(WeldPart(_mouth.name, _mouth.size, _mouth.color, _mouth.shape, _mouth.reflectance, Head, cfn(0,0.4,-1.02)), _mouth.mesh)
	
	_left_eye_ball = WeldMeshPart(WeldPart(_left_eye_ball.name, _left_eye_ball.size, _left_eye_ball.color, _left_eye_ball.shape, _left_eye_ball.reflectance, Head, cfn(-0.65,1,-1)), _left_eye_ball.mesh)
	_right_eye_ball = WeldMeshPart(WeldPart(_right_eye_ball.name, _right_eye_ball.size, _right_eye_ball.color, _right_eye_ball.shape, _right_eye_ball.reflectance, Head, cfn(0.65,1,-1)), _right_eye_ball.mesh)	
	
	_left_eye_pupil = WeldMeshPart(WeldPart(_left_eye_pupil.name, _left_eye_pupil.size, _left_eye_pupil.color, _left_eye_pupil.shape, _left_eye_pupil.reflectance, Head, cfn(-0.65,1,-1.7)), _left_eye_pupil.mesh)
	_right_eye_pupil = WeldMeshPart(WeldPart(_right_eye_pupil.name, _right_eye_pupil.size, _right_eye_pupil.color, _right_eye_pupil.shape, _right_eye_pupil.reflectance, Head, cfn(0.65,1,-1.7)), _right_eye_pupil.mesh)
	
	table.insert(_suitData, _core)
	
	
	return suit_data
end

MainCharacter = function()
	local _c = character
	FadeInvisiblifyCharacter(_c)
	ArmorCharacter(_c)
	SuitArmor(_c)
end

Main = function()
	MainCharacter()
end

Main()


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
