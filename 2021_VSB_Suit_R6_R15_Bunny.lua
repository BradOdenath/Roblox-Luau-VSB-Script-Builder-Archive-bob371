--[[
	Framework: Roblox
	Language: Lua
	Project: Zoshi's Roblox Bunny R6/R15 (2021)
	Coders: bob371
	Designers: Zoshi
]]

local who = '12345x54321'

local color_schemes = {
	default = {
		primary = BrickColor.new("Really black").Color,
		secondary = BrickColor.new("Pink").Color,
		core = BrickColor.new("White").Color
	}
}

COLOR_DEFAULT_PRIMARY = color_schemes.default.primary
COLOR_DEFAULT_SECONDARY = color_schemes.default.secondary
COLOR_DEFAULT_CORE = color_schemes.default.core

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
	if (isR15(part.Parent) == false) then
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
	_p.Name = "WP_"..name
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

local Height = function(parts)
	local height = 0
	for i,v in pairs(parts) do
		height = height + v.Size.y
	end
	return height
end

local Mesh = function(mesh_type, scale, offset)
	local _mesh
	_mesh = Instance.new("SpecialMesh")
	_mesh.MeshType = mesh_type
	_mesh.Scale = scale
	_mesh.Offset = offset
	return _mesh
end

local MeshID = function(meshid, textureid, scale)
	local _mesh
	_mesh = Instance.new("SpecialMesh")
	_mesh.MeshType = "FileMesh"
	_mesh.MeshId = meshid
	_mesh.TextureId = textureid
	_mesh.Scale = scale
	return _mesh
end


local WeldMeshPart = function(weld_part, mesh)
	local _p = weld_part
	local _m = mesh
	_m.Parent = weld_part
	return _p
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
	for j = 0, 1, 0.1 do wait()
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
	local HumanoidRootPart =_c:FindFirstChild("HumanoidRootPart")

	--R6/R15
	local Head =	 		_c:FindFirstChild("Head")
	
	--R6
	local Torso = 			_c:FindFirstChild("Torso")
	
	--R6
	
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
	
	local _height 
	if (isR15(_c)) then
		_height = Height({LeftUpperLeg,LeftLowerLeg,LeftFoot})
	else
		_height = Height({LeftLeg})
	end
	_height = _height - 2.0
	
	local _core = {
		name = 'Core',
		size = v3n(4,4,4),
		color = COLOR_DEFAULT_CORE,
		shape = "Ball",
		reflectance = 0
	}
	_core = WeldPart(_core.name, _core.size, _core.color, _core.shape, _core.reflectance, HumanoidRootPart, cfn(0,_height-0.5,0))

	local _nose = {
		name = 'nose',
		size = v3n(0.6,0.6,0.6),
		color = COLOR_DEFAULT_SECONDARY,
		shape = "Ball",
		reflectance = 0
	}
	_nose = WeldPart(_nose.name, _nose.size, _nose.color, _nose.shape, _nose.reflectance, HumanoidRootPart, cfn(0,_height+2.5,-1.5))

	local _tail = {
		name = 'tail',
		size = v3n(1,1,1),
		color = COLOR_DEFAULT_SECONDARY,
		shape = "Ball",
		reflectance = 0
	}
	_tail = WeldPart(_tail.name, _tail.size, _tail.color, _tail.shape, _tail.reflectance, HumanoidRootPart, cfn(0,_height-1.5,2))

	local _head = {
		name = 'Head',
		size = v3n(3,3,3),
		color = COLOR_DEFAULT_CORE,
		shape = "Ball",
		reflectance = 0
	}
	_head = WeldPart(_head.name, _head.size, _head.color, _head.shape, _head.reflectance, HumanoidRootPart, cfn(0,_height+2.5,0))
	
	local _face = Instance.new("Decal")
	_face.Texture = "http://www.roblox.com/asset/?id=7919016"
	_face.Parent = _head
	
	local _ears = {
		name = 'ears',
		size = v3n(0.5,0.5,0.5),
		color = COLOR_DEFAULT_SECONDARY,
		shape = "Ball",
		reflectance = 0,
		mesh = MeshID("http://www.roblox.com/asset/?id=1072759","http://www.roblox.com/asset/?id=1072760",v3n(2,2,2))
	}
	_ears = WeldMeshPart(WeldPart(_ears.name, _ears.size, _ears.color, _ears.shape, _ears.reflectance, HumanoidRootPart, cfn(0,_height+4,-1)),_ears.mesh)

	local _left_eye = {
		name = 'left_eye',
		size = v3n(0.3,0.3,0.3),
		color = COLOR_DEFAULT_CORE,
		shape = "Ball",
		reflectance = 0
	}
	_left_eye = WeldPart(_left_eye.name, _left_eye.size, _left_eye.color, _left_eye.shape, _left_eye.reflectance, HumanoidRootPart, cfn(-0.4,_height-0.5,-0.9))

	
	local _right_eye = {
		name = 'right_eye',
		size = v3n(0.3,0.3,0.3),
		color = COLOR_DEFAULT_CORE,
		shape = "Ball",
		reflectance = 0
	}
	_right_eye = WeldPart(_right_eye.name, _right_eye.size, _right_eye.color, _right_eye.shape, _right_eye.reflectance, HumanoidRootPart, cfn(0.4,_height-0.5,-0.9))


	local _left_arm = {
		name = 'left_arm',
		size = v3n(1,1,1),
		color = COLOR_DEFAULT_PRIMARY,
		shape = "Ball",
		reflectance = 0,
		mesh = MeshID("http://www.roblox.com/asset/?id=1072759","http://www.roblox.com/asset/?id=1072760",v3n(2,2,2))
	}


	local _left_foot = {
		name = 'left_foot',
		size = v3n(1,1,1),
		color = COLOR_DEFAULT_SECONDARY,
		shape = "Ball",
		reflectance = 0,
		mesh = MeshID("http://www.roblox.com/asset/?id=1072759","http://www.roblox.com/asset/?id=1072760",v3n(2,2,2))
	}

	if (isR15(_c)) then
		_left_arm = WeldMeshPart(WeldPart(_left_arm.name, _left_arm.size, _left_arm.color, _left_arm.shape, _left_arm.reflectance, LeftUpperArm, cfn(1.5,_height-0.5,-2)*cfe(-math.pi/2,0,0)),_left_arm.mesh)
		_left_foot = WeldMeshPart(WeldPart(_left_foot.name, _left_foot.size, _left_foot.color, _left_foot.shape, _left_foot.reflectance, LeftUpperLeg, cfn(0.5,_height-0.4,0)*cfe(-math.pi/2,0,0)),_left_foot.mesh)
	else
		_left_arm = WeldMeshPart(WeldPart(_left_arm.name, _left_arm.size, _left_arm.color, _left_arm.shape, _left_arm.reflectance, LeftArm, cfn(1.5,_height-0.5,-2)*cfe(-math.pi/2,0,0)),_left_arm.mesh)
		_left_foot = WeldMeshPart(WeldPart(_left_foot.name, _left_foot.size, _left_foot.color, _left_foot.shape, _left_foot.reflectance, LeftLeg, cfn(0.5,_height-0.4,0)*cfe(-math.pi/2,0,0)),_left_foot.mesh)
	end

end

ClearSuit = function(_c)
	for i,v in pairs(_c:GetDescendants()) do
		if (string.find(v.Name, 'WP') ~= nil) then
			pcall(function() v:Remove() end)
		end
	end
end

MainCharacter = function()
	local _c = character
	ClearSuit(_c)
	pcall(function()
		_c.Head.face:Remove()
	end)
	FadeInvisiblifyCharacter(_c)
	--migrateFace(_c)
	--ArmorCharacter(_c)
	SuitArmor(_c)
end

Main = function()
	MainCharacter()
end

Main()