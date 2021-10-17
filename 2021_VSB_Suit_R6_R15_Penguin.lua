local who = '12345x54321'

local color_schemes = {
	default = {
		primary = BrickColor.new("Really black").Color,
		secondary = BrickColor.new("Bright yellow").Color,
		core = BrickColor.new("White").Color,
		suit = BrickColor.new("Really red").Color
	},
}

COLOR_DEFAULT_PRIMARY = color_schemes.default.primary
COLOR_DEFAULT_SECONDARY = color_schemes.default.secondary
COLOR_DEFAULT_CORE = color_schemes.default.core
COLOR_DEFAULT_SUIT = color_schemes.default.suit

local player = owner or game.Players[who] or game.Players.LocalPlayer
local character = player.Character

local v3n, cfn, cfa, cfe, c3 = Vector3.new, CFrame.new, CFrame.Angles, CFrame.fromEulerAnglesXYZ, Color3.fromRGB

local pi = math.pi

--[[
local face = nil
local migrateFace = function(_c)
	local _head = _c:FindFirstChild("Head")
	if (_head ~= nil) then
		local _face = _head:FindFirstChild("face")
		if (_face ~= nil) then
			_face = face
			_face.Parent = nil
		else
			if (face ~= nil) then
				face.Parent = _head
				face = nil
			end
		end
	end
end]]

local _printAdv = function(data)
	if type(data) == "table" then
		if (#data > 0) then	
			for i,v in pairs(data) do
				printAdv(v)
			end
		end
	else
		print(data)
	end
end

local printAdv = function(data)
	if data == nil then print(nil) end
	if type(data) == "table" then
		if (#data > 0) then	
			for i,v in pairs(data) do
				_printAdv(v)
			end
		end
	else
		print(data)
	end
end

local isR15 = function(_c)
	if (_c:FindFirstChild("Torso") ~= nil) then
		return false
	else
		return true
	end
end

local isAMesh = function(entity)
	local _is = ((entity:IsA("CylinderMesh") or 
			entity:IsA("BlockMesh") or 
			entity:IsA("SpecialMesh")))
	--print("_is: "..tostring(_is))
	return _is
end

local extractMeshToPoints = function(pointA, pointB)
	for i,v in pairs(pointA:GetChildren()) do
		if (isAMesh(v)) then
			--print(i,v.className)
			pcall(function()
				local _ = v:Clone()
				_.MeshType = v.MeshType
				_.Parent = pointB
				if (_.MeshType == Enum.MeshType.Wedge) then
					_.Offset = _.Offset + Vector3.new(0,0.03,0)
				end
			end)	
		end
	end
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

local Weld = function(part0,part1,c0)
	local _w = Instance.new("Weld")
	_w.Parent = part1
	_w.Part0 = part0
	_w.Part1 = part1
	_w.C0 = c0
		
	return _w
end

local WeldPart = function(name, size, color, shape, reflectance, part0, c0)
	local _p = Instance.new("Part")
	_p.Name = "WP_"..name
	_p.Size = size
	_p.Color = color
	_p.Anchored, _p.CanCollide, _p.Locked = false, false, true
	_p.BottomSurface, _p.TopSurface = 0, 0
	_p.Material = "Plastic"
	_p.Shape = shape
	_p.Reflectance = reflectance
	_p.Parent = part0
	
	local _w = Weld(part0,_p,c0)
	
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
	return _p
end

local findFirstArrayDataByNameTag = function(arr, tag)
	for i,v in pairs(arr) do
		if (string.find(string.lower(v.Name), string.lower(tag)) ~= nil) then
			return v
		end
	end
end

local LArm, RArm, 
	LCore, RCore,
	MCore
local ArmorAddons = function(_characterArmorData)
	local _armorAddons = {}
	
	printAdv(_characterArmorData)
	Core = findFirstArrayDataByNameTag(_characterArmorData, "Core")
	LArm = findFirstArrayDataByNameTag(_characterArmorData, "Left_Arm")
	RArm = findFirstArrayDataByNameTag(_characterArmorData, "Right_Arm")
	
	
	print(LArm, RArm)
		
	local _core = {
		name = 'Left_Arm_Core',
		size = v3n(1,1,1) * 0.8,
		color = COLOR_DEFAULT_CORE,
		shape = "Ball",
		reflectance = 1,
		mesh = Mesh("Sphere",v3n(1,1,1),v3n(0,0,0))
	}
	_core = WeldMeshPart(WeldPart(_core.name, _core.size, _core.color, _core.shape, _core.reflectance, Core, cfn(0,0,-0.8)),_core.mesh)
	table.insert(_armorAddons,_core)
	MCore = _core
		
	local _left_arm_core = {
		name = 'Left_Arm_Core',
		size = v3n(1,1,1) * 0.8,
		color = COLOR_DEFAULT_CORE,
		shape = "Ball",
		reflectance = 1,
		mesh = Mesh("Sphere",v3n(1,1,1),v3n(0,0,0))
	}
	_left_arm_core = WeldMeshPart(WeldPart(_left_arm_core.name, _left_arm_core.size, _left_arm_core.color, _left_arm_core.shape, _left_arm_core.reflectance, LArm, cfn(0,-0.4,0)),_left_arm_core.mesh)
	table.insert(_armorAddons,_left_arm_core)
	LCore = _left_arm_core
	
	local _right_arm_core = {
		name = 'Right_Arm_core',
		size = v3n(1,1,1) * 0.8,
		color = COLOR_DEFAULT_CORE,
		shape = "Ball",
		reflectance = 1,
		mesh = Mesh("Sphere",v3n(1,1,1),v3n(0,0,0))
	}
	_right_arm_core = WeldMeshPart(WeldPart(_right_arm_core.name, _right_arm_core.size, _right_arm_core.color, _right_arm_core.shape, _right_arm_core.reflectance, RArm, cfn(0,-0.4,0)),_right_arm_core.mesh)
	table.insert(_armorAddons,_right_arm_core)
	RCore = _right_arm_core

	print(_left_arm_core.Parent,_right_arm_core.Parent)
	return _armorAddons
end

local ArmorModifiers = function(part)
	if (string.find(part.Name, "Beak") ~= nil) or (string.find(part.Name, "Foot") ~= nil) then
		part.Color = COLOR_DEFAULT_SECONDARY
	elseif (string.find(part.Name, "Eye") ~= nil) then
		part.Color = COLOR_DEFAULT_CORE
		part.Reflectance = 1
	end
end

local ArmorPart = function(part)
	local _p = WeldPart(
		('Armor'..tostring(part)),
		part.Size * 1.1,
		COLOR_DEFAULT_SUIT,
		part.Shape,
		0.1,
		part,
		cfn(0,0,0)
	)
	
	ArmorModifiers(_p)
	
	pcall(function()
		_p.MeshId = part.MeshId
	end)
	
	extractMeshToPoints(part,_p)
	
	if (part.Name == "Head") then
		characterHeadMesh(_p)
	end
	
	print(part,_p)
	return _p
end

FadeInvisiblifyCharacter = function(c)
	for j = 0, 1, 0.1 do wait()
		set_transparency(c, j)
	end
end

local Height = function(parts)
	local height = 0
	for i,v in pairs(parts) do
		height = height + v.Size.y
	end
	return height
end

local CharacterArmor = function(_c)
	local HumanoidRootPart =_c:FindFirstChild("HumanoidRootPart")

	--R6/R15
	local Head =	 		_c:FindFirstChild("Head")
	Weld(Head,HumanoidRootPart,cfn(0,1,0))
	
	
	--R6
	local Torso = 			_c:FindFirstChild("Torso")
	Weld(Torso,HumanoidRootPart,cfn(0,1,0))

	--R6
	
	--R15
	local UpperTorso = 		_c:FindFirstChild("UpperTorso")
	Weld(UpperTorso,HumanoidRootPart,cfn(0,1,0))
	local LowerTorso = 		_c:FindFirstChild("LowerTorso")
	Weld(LowerTorso,HumanoidRootPart,cfn(0,1,0))

	--R6
	local LeftArm = 		_c:FindFirstChild("Left Arm")	
	local RightArm = 		_c:FindFirstChild("Right Arm")	

	--R15
	local LeftLowerArm = 	_c:FindFirstChild("LeftLowerArm")
	Weld(LeftLowerArm,HumanoidRootPart,cfn(0,1,0))

	local RightLowerArm = 	_c:FindFirstChild("RightLowerArm")	
	Weld(RightLowerArm,HumanoidRootPart,cfn(0,1,0))

	
	local LeftUpperArm = 	_c:FindFirstChild("LeftUpperArm")
	Weld(LeftUpperArm,HumanoidRootPart,cfn(0,1,0))

	
	local RightUpperArm = 	_c:FindFirstChild("RightUpperArm")
	Weld(RightUpperArm,HumanoidRootPart,cfn(0,1,0))
	
	--R6
	local LeftLeg = 		_c:FindFirstChild("Left Leg")	
	Weld(LeftLeg,HumanoidRootPart,cfn(0,1,0))

	local RightLeg = 		_c:FindFirstChild("Right Leg")	
	Weld(RightLeg,HumanoidRootPart,cfn(0,1,0))

	--R15
	local LeftLowerLeg = 	_c:FindFirstChild("LeftLowerLeg")
	Weld(LeftLowerLeg,HumanoidRootPart,cfn(0,1,0))

	local RightLowerLeg = 	_c:FindFirstChild("RightLowerLeg")	
	Weld(RightLowerLeg,HumanoidRootPart,cfn(0,1,0))

	local LeftUpperLeg = 	_c:FindFirstChild("LeftUpperLeg")
	Weld(LeftUpperLeg,HumanoidRootPart,cfn(0,1,0))

	local RightUpperLeg = 	_c:FindFirstChild("RightUpperLeg")
	Weld(RightUpperLeg,HumanoidRootPart,cfn(0,1,0))
	
	local RightFoot = 		_c:FindFirstChild("RightFoot")
	Weld(RightFoot,HumanoidRootPart,cfn(0,1,0))

	local LeftFoot = 		_c:FindFirstChild("LeftFoot")
	Weld(LeftFoot,HumanoidRootPart,cfn(0,1,0))

	local RightHand = 		_c:FindFirstChild("RightHand")
	
	local LeftHand = 		_c:FindFirstChild("LeftHand")
	
	local _height = 0.0
	if (isR15(_c)) then
		_height = 0.1
	end
	
	local _characterArmor = {}
	
	local _core = {
		name = 'Core',
		size = v3n(2,2,2),
		color = COLOR_DEFAULT_CORE,
		shape = "Ball",
		reflectance = 0
	}
	_core = WeldPart(_core.name, _core.size, _core.color, _core.shape, _core.reflectance, HumanoidRootPart, cfn(0,-2-_height,0))
	table.insert(_characterArmor,_core)

	local _head = {
		name = 'Head',
		size = v3n(2,2,2),
		color = COLOR_DEFAULT_PRIMARY,
		shape = "Ball",
		reflectance = 0
	}
	_head = WeldPart(_head.name, _head.size, _head.color, _head.shape, _head.reflectance, HumanoidRootPart, cfn(0,-1-_height,0))
	table.insert(_characterArmor,_head)

	local _beak = {
		name = 'Beak',
		size = v3n(0.5,0.5,0.5),
		color = COLOR_DEFAULT_SECONDARY,
		shape = "Ball",
		reflectance = 0,
		mesh = Mesh("Sphere",v3n(4,1.2,2),v3n(0,0,0))
	}
	_beak = WeldMeshPart(WeldPart(_beak.name, _beak.size, _beak.color, _beak.shape, _beak.reflectance, HumanoidRootPart, cfn(0,-1.1-_height,-1)),_beak.mesh)
	table.insert(_characterArmor,_beak)

	local _left_eye = {
		name = 'Left_Eye',
		size = v3n(0.3,0.3,0.3),
		color = COLOR_DEFAULT_CORE,
		shape = "Ball",
		reflectance = 0
	}
	_left_eye = WeldPart(_left_eye.name, _left_eye.size, _left_eye.color, _left_eye.shape, _left_eye.reflectance, HumanoidRootPart, cfn(-0.4,-0.5-_height,-0.9))
	table.insert(_characterArmor,_left_eye)
	
	local _right_eye = {
		name = 'Right_Eye',
		size = v3n(0.3,0.3,0.3),
		color = COLOR_DEFAULT_CORE,
		shape = "Ball",
		reflectance = 0
	}
	_right_eye = WeldPart(_right_eye.name, _right_eye.size, _right_eye.color, _right_eye.shape, _right_eye.reflectance, HumanoidRootPart, cfn(0.4,-0.5-_height,-0.9))
	table.insert(_characterArmor,_right_eye)

	local _left_arm = {
		name = 'Left_Arm',
		size = v3n(1,1,1),
		color = COLOR_DEFAULT_PRIMARY,
		shape = "Ball",
		reflectance = 0,
		mesh = Mesh("Wedge",v3n(1,1.2,1),v3n(0,0,0))
	}
	_left_arm = WeldMeshPart(WeldPart(_left_arm.name, _left_arm.size, _left_arm.color, _left_arm.shape, _left_arm.reflectance, HumanoidRootPart, cfn(-1.3,-2-_height,0)*cfe(0,math.pi/2,0)),_left_arm.mesh)
	table.insert(_characterArmor,_left_arm)
	
	local _right_arm = {
		name = 'Right_Arm',
		size = v3n(1,1,1),
		color = COLOR_DEFAULT_PRIMARY,
		shape = "Ball",
		reflectance = 0,
		mesh = Mesh("Wedge",v3n(1,1.2,1),v3n(0,0,0))
	}
	_right_arm = WeldMeshPart(WeldPart(_right_arm.name, _right_arm.size, _right_arm.color, _right_arm.shape, _right_arm.reflectance, HumanoidRootPart, cfn(1.3,-2-_height,0)*cfe(0,-math.pi/2,0)),_right_arm.mesh)
	table.insert(_characterArmor,_right_arm)
	
	Weld(RightArm,_right_arm,cfn(0,-0.4,0)*cfa(0,0,math.pi/4))
	Weld(LeftArm,_left_arm,cfn(0,-0.4,0)*cfa(0,0,-math.pi/4))
	Weld(RightHand,_right_arm,cfn(0,0.4,0)*cfa(0,0,math.pi/4))
	Weld(LeftHand,_left_arm,cfn(0,0.4,0)*cfa(0,0,-math.pi/4))

	local _left_foot = {
		name = 'Left_Foot',
		size = v3n(1,1,1),
		color = COLOR_DEFAULT_SECONDARY,
		shape = "Ball",
		reflectance = 0,
		mesh = Mesh("Sphere",v3n(1,0.6,0.6),v3n(0,0,0))
	}
	_left_foot = WeldMeshPart(WeldPart(_left_foot.name, _left_foot.size, _left_foot.color, _left_foot.shape, _left_foot.reflectance, HumanoidRootPart, cfn(-0.4,-2.7-_height,-0.6)),_left_foot.mesh)
	table.insert(_characterArmor,_left_foot)
	
	local _right_foot = {
		name = 'Right_Foot',
		size = v3n(1,1,1),
		color = COLOR_DEFAULT_SECONDARY,
		shape = "Ball",
		reflectance = 0,
		mesh = Mesh("Sphere",v3n(1,0.6,0.6),v3n(0,0,0))
	}
	_right_foot = WeldMeshPart(WeldPart(_right_foot.name, _right_foot.size, _right_foot.color, _right_foot.shape, _right_foot.reflectance, HumanoidRootPart, cfn(0.4,-2.7-_height,-0.6)),_right_foot.mesh)
	table.insert(_characterArmor,_right_foot)
	
	print(#_characterArmor)
	return _characterArmor
end

local ArmorSuit = function(_c,_characterArmorData)
	for i,v in pairs(_c:GetDescendants()) do
		if (v:IsA("BasePart") and v.Name ~= "HumanoidRootPart") then
			if ((string.find(v.Name, "WP_") ~= nil) and (v.Transparency < 1)) then 
				ArmorPart(v)
			end
		end
	end
	--pcall(function()
	
		printAdv(_characterArmorData)
		ArmorAddons(_characterArmorData)
	
	--end)
end

ClearSuit = function(_c)
	for i,v in pairs(_c:GetDescendants()) do
		if (string.find(v.Name, 'WP') ~= nil) then
			pcall(function() v:Remove() end)
		end
	end
	visiblify(_c)
end

MainCharacter = function()
	local _c = character
	ClearSuit(_c)
	pcall(function()
		_c.Head.face:Remove()
	end)
	FadeInvisiblifyCharacter(_c)
	--migrateFace(_c)
	local _characterArmorData = CharacterArmor(_c)
	--wait(10)
	--ArmorSuit(_c, _characterArmorData)
	--ClearSuit(_c)
end

Main = function()
	MainCharacter()
end

Main()