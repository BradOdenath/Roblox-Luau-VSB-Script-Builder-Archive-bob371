local who = '12345x54321'

local color_schemes = {
	default = {
		primary = BrickColor.new("Really red").Color,
		secondary = BrickColor.Yellow().Color,
		core = BrickColor.new("Navy blue").Color
	}
}

COLOR_DEFAULT_PRIMARY = color_schemes.default.primary
COLOR_DEFAULT_SECONDARY = color_schemes.default.secondary
COLOR_DEFAULT_CORE = color_schemes.default.core

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

	local _suitData = {}
	
	local _core = {
		name = 'Core',
		size = v3n(1,1,1),
		color = COLOR_DEFAULT_CORE,
		shape = "Ball",
		reflectance = 1
	}
	
	if (isR15(character) == false) then
		_core = WeldPart(_core.name, _core.size, _core.color, _core.shape, _core.reflectance, Torso, cfn(0,0.25,-0.25))
	else
		_core = WeldPart(_core.name, _core.size, _core.color, _core.shape, _core.reflectance, UpperTorso, cfn(0,0.25,-0.25))
	end
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