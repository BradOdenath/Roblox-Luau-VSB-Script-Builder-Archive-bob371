local who = '12345x54321'

local color_schemes = {
default = {
	primary = BrickColor.Blue().Color,
	eye_ball = BrickColor.new("Institutional white").Color,
	core = BrickColor.new("Really black").Color,
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

local Scaler = function(part) return part.Size.y end

local _suitData = {}

local _core = {
	name = 'Core',
	size = v3n(2.7, 2.7, 2.7)*Scaler(Head),
	color = COLOR_DEFAULT_PRIMARY,
	shape = "Ball",
	reflectance = 0.1,
	mesh = Mesh("Sphere",v3n(1.35,1.1,1),v3n(0,0,0))
}

--[[local _neck = {
	name = 'Core',
	size = v3n(2.7, 2.7, 2.7),
	color = COLOR_DEFAULT_PRIMARY,
	shape = "Block",
	reflectance = 0.1,
	mesh = Mesh("Torso",v3n(5,5,5),v3n(0,0,0))
}]]

local _mouth = {
	name = 'Mouth',
	size = v3n(1,1,1)*Scaler(Head),
	color = COLOR_DEFAULT_CORE,
	shape = "Ball",
	reflectance = 0.1,
	mesh = Mesh("Sphere",v3n(2,2,0.6),v3n(0,0,0))
}

local _left_eye_ball = {
	name = 'Core',
	size = v3n(1.5,1.5,1.5)*Scaler(Head),
	color = COLOR_DEFAULT_EYEBALL,
	shape = "Ball",
	reflectance = 0.1,
	mesh = Mesh("Sphere",v3n(1,1,1),v3n(0,0,0))
}

local _right_eye_ball = {
	name = 'Core',
	size = v3n(1.5,1.5,1.5)*Scaler(Head),
	color = COLOR_DEFAULT_EYEBALL,
	shape = "Ball",
	reflectance = 0.1,
	mesh = Mesh("Sphere",v3n(1,1,1),v3n(0,0,0))
}

local _left_eye_pupil = {
	name = 'Core',
	size = v3n(0.5,0.5,0.5)*Scaler(Head),
	color = COLOR_DEFAULT_CORE,
	shape = "Ball",
	reflectance = 0.1,
	mesh = Mesh("Sphere",v3n(1,1,1),v3n(0,0,0))
}

local _right_eye_pupil = {
	name = 'Core',
	size = v3n(0.5,0.5,0.5)*Scaler(Head),
	color = COLOR_DEFAULT_CORE,
	shape = "Ball",
	reflectance = 0.1,
	mesh = Mesh("Sphere",v3n(1,1,1),v3n(0,0,0))
}

_core = WeldMeshPart(WeldPart(_core.name, _core.size, _core.color, _core.shape, _core.reflectance, Head, cfn(0,0.4*Scaler(Head),0)), _core.mesh)
_mouth = WeldMeshPart(WeldPart(_mouth.name, _mouth.size, _mouth.color, _mouth.shape, _mouth.reflectance, Head, cfn(0,0.3*Scaler(Head),-1*Scaler(Head))), _mouth.mesh)
--_neck = WeldMeshPart(WeldPart(_neck.name, _neck.size, _neck.color, _neck.shape, _neck.reflectance, Head, cfn(0,0.3,-1)), _neck.mesh)

_left_eye_ball = WeldMeshPart(WeldPart(_left_eye_ball.name, _left_eye_ball.size, _left_eye_ball.color, _left_eye_ball.shape, _left_eye_ball.reflectance, Head, cfn(-0.65*Scaler(Head),1*Scaler(Head),-1*Scaler(Head))), _left_eye_ball.mesh)
_right_eye_ball = WeldMeshPart(WeldPart(_right_eye_ball.name, _right_eye_ball.size, _right_eye_ball.color, _right_eye_ball.shape, _right_eye_ball.reflectance, Head, cfn(0.65*Scaler(Head),1*Scaler(Head),-1*Scaler(Head))), _right_eye_ball.mesh)	

_left_eye_pupil = WeldMeshPart(WeldPart(_left_eye_pupil.name, _left_eye_pupil.size, _left_eye_pupil.color, _left_eye_pupil.shape, _left_eye_pupil.reflectance, Head, 
	cfn(-0.65*Scaler(Head),1*Scaler(Head),-1.7*Scaler(Head))
	), _left_eye_pupil.mesh)
_right_eye_pupil = WeldMeshPart(WeldPart(_right_eye_pupil.name, _right_eye_pupil.size, _right_eye_pupil.color, _right_eye_pupil.shape, _right_eye_pupil.reflectance, Head, 
	cfn(0.65*Scaler(Head),1*Scaler(Head),-1.7*Scaler(Head))
	), _right_eye_pupil.mesh)

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

