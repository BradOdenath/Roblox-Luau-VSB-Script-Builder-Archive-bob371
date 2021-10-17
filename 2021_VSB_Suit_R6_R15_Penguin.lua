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
	Framework: Roblox
	Language: Lua
	Project: LuigiFan's Roblox Iron Man R6/R15 (2021)
	Coders: supergod800, bob371
	Designers: LuigiFan
]]--

local Keys,downs,lastpressed={},{},{}  --Shoutout to @supergod800

local function isKeyDown(key) return downs[tostring(key)] or false end

local function emptyFunction(key, key_event) --print("Empty Key Function: "..tostring(key)..key_event) 
end

local function _setKey(key, func_keydown, func_keyup) 
	
	local ku, kd
	
	ku = func_keyup
	
	kd = func_keydown
	
	Keys[key]= {
		up = ku, 
		down = kd
	} 
	
end

local function setKey(key,func_keydown, func_keyup) 
	if typeof(key) == 'table' then 
		for i,v in pairs(key) do 
			_setKey(v, func_keydown, func_keyup)
		end 
	else 
		_setKey(key, func_keydown, func_keyup)
	end
end

local function timePassed(key)
    local t = tick() return math.max(t - (lastpressed[key] or t),0)
end

local function keyDown(plr,key)	
	key = tostring(key)
	--print(key)
	if isKeyDown(key) then 
		downs[key]=false
		--print('up')
		if Keys[key] then 
			--pcall(function() 
				Keys[key].up() 
			--end) 
		end
	else
		downs[key],lastpressed[key]=true,tick()
		--print('down')
		if Keys[key] then 
			--pcall(function() 
				Keys[key].down() 
			--end) 
		end
	end
end

local mouse = {}
local currentcamera = {}
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
	
local mouseEvent = Instance.new('RemoteEvent',keysEvent)
--local cameraEvent = Instance.new('RemoteEvent',keysEvent)
mouseEvent.OnServerEvent:Connect(function(plr,data) mouse = data end)
--cameraEvent.onServerEvent:Connect(function(plr,data) currentcamera = data end)
keysEvent.OnServerEvent:Connect(keyDown)

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

local invisibilify = function(model)
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

local weldTagName = "HEEEEEEEYYYAAAAAAA"

local Weld = function(part0,part1,c0)
	local _w = Instance.new("Weld")
	_w.Name = weldTagName
	_w.Parent = part0
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
local LArm, RArm

local 	coreL, coreR,
	coreO
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
	coreO = _core
		
	local _abs = {
		name = 'Left_Arm_abs',
		size = v3n(1,1,1) * 0.6,
		color = COLOR_DEFAULT_SUIT,
		shape = "Block",
		reflectance = 0.1,
		mesh = Mesh("Brick",v3n(1,1,1),v3n(0,0,0))
	}
	_abs = WeldMeshPart(WeldPart(_abs.name, _abs.size, _abs.color, _abs.shape, _abs.reflectance, Core, cfn(0,-0.4,-0.8) * cfa(0,0,0)),_abs.mesh)
	table.insert(_armorAddons,_abs)
		
	local _left_chest = {
		name = 'Left_Arm_left_chest',
		size = v3n(1,1,1) * 0.6,
		color = COLOR_DEFAULT_SUIT,
		shape = "Block",
		reflectance = 0.1,
		mesh = Mesh("Brick",v3n(1,1,1),v3n(0,0,0))
	}
	_left_chest = WeldMeshPart(WeldPart(_left_chest.name, _left_chest.size, _left_chest.color, _left_chest.shape, _left_chest.reflectance, Core, cfn(-0.3,0.1,-0.8) * cfa(0,0,-math.pi/12)),_left_chest.mesh)
	table.insert(_armorAddons,_left_chest)
		
	local _right_chest = {
		name = 'Left_Arm_right_chest',
		size = v3n(1,1,1) * 0.6,
		color = COLOR_DEFAULT_SUIT,
		shape = "Block",
		reflectance = 0.1,
		mesh = Mesh("Brick",v3n(1,1,1),v3n(0,0,0))
	}
	_right_chest = WeldMeshPart(WeldPart(_right_chest.name, _right_chest.size, _right_chest.color, _right_chest.shape, _right_chest.reflectance, Core, cfn(0.3,0.1,-0.8) * cfa(0,0,math.pi/12)),_right_chest.mesh)
	table.insert(_armorAddons,_right_chest)
		
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
	coreL = _left_arm_core
	
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
	coreR = _right_arm_core

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

FadeinvisibilifyCharacter = function(c)
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
	LArm = _left_arm
	
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
	RArm = _right_arm
	
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
		elseif v.Name == weldTagName then
			v.Part0 = nil
			v:Remove()
		end
	end
	visiblify(_c)
end

local cad
MainCharacter = function(_c)
	ClearSuit(_c)
	pcall(function()
		_c.Head.face:Remove()
	end)
	invisibilify(_c)
	--FadeinvisibilifyCharacter(_c)
	cad = CharacterArmor(_c)
end

MainIronMan = function(_c)
	if (cad) then
		ArmorSuit(_c, cad)
	end
end

Main = function()
	MainCharacter(character)
end

Main()

local pointArm = function(Arm, Weld, EndCf)
	if cad == nil then return end
	local UpperTorso = findFirstArrayDataByNameTag(cad,'Core')
	local Torso = findFirstArrayDataByNameTag(cad,'Core')
	if (Arm:lower():match("right")) then
		--print(Arm, Weld, EndCf)
		Weld.C0 = cfn(-1.3,-2-_height,0)*cfe(0,math.pi/2,0)
		Weld.C1 = cfa(math.rad(-90),0,0) * cfn(0,0,0.5)
		if (isR15(character)) then
			Weld.C1 = Weld.C1 * (cfn((UpperTorso.CFrame * cfn(1.5,0,0)).p, EndCf.p) - (UpperTorso.CFrame * cfn(1.5,0,0)).p):inverse()
			Weld.C1 = Weld.C1 * (UpperTorso.CFrame - UpperTorso.CFrame.p)
		else
			Weld.C1 = Weld.C1 * (cfn((Torso.CFrame * cfn(1.5,0,0)).p, EndCf.p) - (Torso.CFrame * cfn(1.5,0,0)).p):inverse()
			Weld.C1 = Weld.C1 * (Torso.CFrame - Torso.CFrame.p)
		end
	elseif (Arm:lower():match("left")) then
		--print(Arm, Weld, EndCf)
		Weld.C0 =  cfn(1.3,-2-_height,0)*cfe(0,-math.pi/2,0)
		Weld.C1 = cfa(math.rad(-90),0,0) * cfn(0,0,0.5)
		if (isR15(character)) then
			Weld.C1 = Weld.C1 * (cfn((UpperTorso.CFrame * cfn(-1.5,0,0)).p, EndCf.p) - (UpperTorso.CFrame * cfn(-1.5,0,0)).p):inverse()
			Weld.C1 = Weld.C1 * (UpperTorso.CFrame - UpperTorso.CFrame.p)
		else
			Weld.C1 = Weld.C1 * (cfn((Torso.CFrame * cfn(-1.5,0,0)).p, EndCf.p) - (Torso.CFrame * cfn(-1.5,0,0)).p):inverse()
			Weld.C1 = Weld.C1 * (Torso.CFrame - Torso.CFrame.p)
		end
	end
end

local pointArms = function()
	if (LArm ~= nil and RArm ~= nil) then
		print(LArm, RArm)
		local LeftArmWeld = LArm:FindFirstChild(weldTagName)
		local RightArmWeld = RArm:FindFirstChild(weldTagName)
		pointArm("Left", LeftArmWeld, mouse.Hit)
		pointArm("right", RightArmWeld, mouse.Hit)
	end
end

local ReconfigureArms = function()
	if (LArm ~= nil and RArm ~= nil) then
		local LeftArmWeld = LArm:FindFirstChild(weldTagName)
		local RightArmWeld = RArm:FindFirstChild(weldTagName)
		LeftArmWeld.C0 = cfn(-1.3,-2-_height,0)*cfe(0,math.pi/2,0)
		RightArmweld.C0 = cfn(1.3,-2-_height,0)*cfe(0,-math.pi/2,0)
	end
end

--[[ * Juice * ]]--

local Juice = Instance.new("BodyPosition")
Juice.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
local Swush = Instance.new("BodyGyro")
Swush.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
--Swush.P = math.huge
--Swush.D = 0
local Boost = Instance.new("BodyVelocity")
Boost.MaxForce = Vector3.new(math.huge,math.huge,math.huge)

local HumanoidRootPart = character:FindFirstChild("HumanoidRootPart")

local suit = false
local flying = false
local holding = false
local arm_point = false

local offset = Vector3.new(0,12,0)

local laser = function(place0)
	coroutine.resume(coroutine.create(function()
		--print('laser'..tostring(place0))
		if (mouse.Target ~= nil) then
			local Place0 = place0.CFrame
			local Place1 = mouse.Hit.p
			P = Instance.new("Part")
			P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude)
			P.Name = "Laser"
			P.Reflectance = 1
			P.Anchored = true
			P.BottomSurface, P.TopSurface = 0, 0
			P.CanCollide = false
			P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
			P.Parent = workspace
			coroutine.resume(coroutine.create(function()
				pcall(function()
					while (P) do wait()
						Place0 = place0.CFrame
						P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude)
						P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
					end
				end)
				P:Remove()
			end))
			local E = Instance.new("Explosion")
			E.BlastRadius, E.BlastPressure = 10, 1e+006
			E.Hit:Connect(function(part, distance)
				if (distance < 10) then
					part:BreakJoints()
					part.Anchored = false
					Instance.new("Fire",part)
				end
			end)
			E.Position = Place1
			E.Parent = workspace
			local S = Instance.new("Sound")
			S.Volume = 100
			S.Pitch = 1
			S.SoundId = "rbxasset://sounds\\Launching rocket.wav"
			S.Parent = _core
			S:Play()
			wait(0.1)
			P.Parent = nil
			P:Remove()
			coroutine.resume(coroutine.create(function()
				wait(10)
				S:Remove()
				P.Transparency = 0.5
			end))
			
		end
	end))
end

local whileFlying = function()
	coroutine.resume(coroutine.create(function()
		while (flying) do wait()
			Swush.CFrame = CFrame.new(HumanoidRootPart.Position, mouse.Hit.p)
		end
	end))
end

setKey('MouseButton1Down',
function()
	holding = true
	if (flying) then
		Swush.Parent = HumanoidRootPart
		Juice.Parent = HumanoidRootPart
		while ((holding) and (flying)) do wait()
			if ((mouse.Target ~= nil) and (flying)) then
				Boost.Parent = nil
				Juice.Parent = HumanoidRootPart
				Juice.Position = mouse.Hit.p + offset
			else
				Boost.Parent = HumanoidRootPart
				Boost.Velocity = Swush.CFrame.lookVector * 100
				Juice.Parent = nil
			end
		end
		Juice.Position = HumanoidRootPart.Position
		Juice.Parent = HumanoidRootPart
		Boost.Parent = nil
--[[	else
		arm_point = true
		while (holding) do wait()
			pointArms()
		end
		arm_point = false
		ReconfigureArms()]]
	end
end,
function()
	holding = false
end)

local switchFlying = function()
	if flying then
		character.Humanoid.PlatformStand = false
		flying = false
		holding = false
		Swush.Parent = nil
		Juice.Parent = nil
		Boost.Parent = nil
	else
		character.Humanoid.PlatformStand = true
		flying = true
		Swush.Parent = HumanoidRootPart
		whileFlying()
		Juice.Parent = HumanoidRootPart	
		Juice.Position = HumanoidRootPart.Position + offset
	end
end

setKey('e',
	function()
		switchFlying()
	end,
	function()
	
	end
)

setKey('f',
	function()
		if (suit) then
			if (flying) then
				--if (arm_point) then
					--laser(coreL)
					--laser(coreR)
				--else
					laser(coreO)
				--end
			elseif (holding) then
				--if (arm_point) then
					laser(coreL)
					laser(coreR)
				--end
			end
		end
	end,
	function() end)

setKey('q',
function()
	if (cad ~= nil) then
		if (flying == false) then
			if (suit == false) then
				MainIronMan(character)
			else
				MainCharacter(character)
			end
			suit = not suit
		end
	end
end,
function()
end)

setKey('r',
function()
	Instance.new("ForceField", character)
end,
function()
	for i,v in pairs(character:GetChildren()) do
		if v:IsA("ForceField") then
			pcall(function() v:Remove() end)
		end
	end
	ff = nil
end)

