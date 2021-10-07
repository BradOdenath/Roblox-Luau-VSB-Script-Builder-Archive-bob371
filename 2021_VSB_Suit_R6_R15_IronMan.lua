local who = '12345x54321'

local color_schemes = {
	default = {
		primary = BrickColor.Red().Color,
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

--[[
	Framework: Roblox
	Language: Lua
	Project: Script/ HopperBin Events
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
		if Keys[key] then pcall(function() Keys[key].up() end) end
	else
		downs[key],lastpressed[key]=true,tick()
		--print('down')
		if Keys[key] then pcall(function() Keys[key].down() end) end
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
	--print("_is: "..tostring(_is))
	return _is
end

local headTagName = "Head"

local characterHeadMesh = function(part)
	local _m = Instance.new("SpecialMesh")
	if (isR15(character) == false) then
		_m.Scale = v3n(1.15,1.15,1.15)
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
				--print('NOI')
				v.Transparency = 0
			end
		end
	end
end

local wpwTag = "WeldPartWeld"

local WeldPart = function(name, size, color, shape, reflectance, part0, c0)
	local _p = Instance.new("Part")
	_p.Name = name
	_p.Size = size
	_p.Color = color
	_p.Material = "SmoothPlastic"
	_p.Anchored, _p.CanCollide, _p.Locked = false, false, true
	_p.BottomSurface, _p.TopSurface = 0, 0
	_p.Material = "Plastic"
	_p.Shape = shape
	_p.Reflectance = reflectance
	_p.Parent = part0
	
	local _w = Instance.new("Weld")
	_w.Name = "WeldPartWeld"
	_w.Parent = _p
	_w.Part0 = part0
	_w.Part1 = _p
	_w.C0 = c0
	
	return _p
end


local Mesh = function(mesh_type, scale, offset)
	local _mesh
	if (string.find(mesh_type, 'Block') ~= nil) then
		_mesh = Instance.new("BlockMesh")
	else
		_mesh = Instance.new("SpecialMesh")
		_mesh.MeshType = mesh_type
	end
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

local ArmorPart = function(part)
	local _p = WeldPart(
		('Armor'..tostring(part)),
		(part.Size * 1.1),
		(COLOR_DEFAULT_PRIMARY),
		("Block"),
		(0.1),
		(part),
		(cfn(0,0,0))
	)
	
	pcall(function()
		_p.MeshId = part.MeshId
	end)
	
	pcall(function() 
		for i,v in pairs(part:GetChildren()) do
			if (isAMesh(v)) then
				--print('z')
				local m = v:Clone()
				m.Parent = _p
			end
		end
	end)
	
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
			local _a = ArmorPart(v)
			if (v.Name == headTagName) then
				characterHeadMesh(_a)
			end
		end
	end
end

local coreo, coreL, coreR

--R6/R15
local Head =	 		character:FindFirstChild("Head")

--R6
local Torso = 			character:FindFirstChild("Torso")

--R15
local UpperTorso = 		character:FindFirstChild("UpperTorso")
local LowerTorso = 		character:FindFirstChild("LowerTorso")

--R6
local LeftArm = 		character:FindFirstChild("Left Arm")	
local RightArm = 		character:FindFirstChild("Right Arm")	

--R15
local LeftLowerArm = 	character:FindFirstChild("LeftLowerArm")
local RightLowerArm = 	character:FindFirstChild("RightLowerArm")	
local LeftUpperArm = 	character:FindFirstChild("LeftUpperArm")
local RightUpperArm = 	character:FindFirstChild("RightUpperArm")

--R6
local LeftLeg = 		character:FindFirstChild("Left Leg")	
local RightLeg = 		character:FindFirstChild("Right Leg")	

--R15
local LeftLowerLeg = 	character:FindFirstChild("LeftLowerLeg")
local RightLowerLeg = 	character:FindFirstChild("RightLowerLeg")	
local LeftUpperLeg = 	character:FindFirstChild("LeftUpperLeg")
local RightUpperLeg = 	character:FindFirstChild("RightUpperLeg")

local RightFoot = 		character:FindFirstChild("RightFoot")
local LeftFoot = 		character:FindFirstChild("LeftFoot")
local RightHand = 		character:FindFirstChild("RightHand")
local LeftHand = 		character:FindFirstChild("LeftHand")

local SuitArmor = function(_c)
	

	local _suitData = 	{}
	
	
	local _mouth = {
		name = 			('Mouth'),				--Name
		size = 			(v3n(1,1,1)),			--Size
		color = 		(COLOR_DEFAULT_SECONDARY),	--Color	
		shape = 		("Block"),				--Shape
		reflectance = 	(0.1),					--Reflectance
		mesh = Mesh(
			("Block"),
			(v3n(0.8, 0.6, 0.5)),
			(v3n(0,0,0))
		)
	}
	
	local _forehead = {
		name = 			('Forehead'),				--Name
		size = 			(v3n(1,1,1)),			--Size
		color = 		(COLOR_DEFAULT_SECONDARY),	--Color	
		shape = 		("Block"),				--Shape
		reflectance = 	(0.1),					--Reflectance
		mesh = Mesh(
			("Block"),
			(v3n(0.7, 0.2, 0.5)),
			(v3n(0,0,0))
		)
	}
	
	
	local _left_eye_socket = {
		name = 			('LeftEyeSocket'),				--Name
		size = 			(v3n(1,1,1)),			--Size
		color = 		(COLOR_DEFAULT_SECONDARY),	--Color	
		shape = 		("Block"),				--Shape
		reflectance = 	(0.1),					--Reflectance
		mesh = Mesh(
			("Block"),
			(v3n(0.2, 0.2, 0.5)),
			(v3n(0,0,0))
		)
	}
	
	local _right_eye_socket = {
		name = 			('LeftEyeSocket'),				--Name
		size = 			(v3n(1,1,1)),			--Size
		color = 		(COLOR_DEFAULT_SECONDARY),	--Color	
		shape = 		("Block"),				--Shape
		reflectance = 	(0.1),					--Reflectance
		mesh = Mesh(
			("Block"),
			(v3n(0.2, 0.2, 0.5)),
			(v3n(0,0,0))
		)
	}
	local _left_eye = {
		name = 			('LeftEye'),				--Name
		size = 			(v3n(1,1,1)),			--Size
		color = 		(COLOR_DEFAULT_CORE),	--Color	
		shape = 		("Block"),				--Shape
		reflectance = 	(0.5),					--Reflectance
		mesh = Mesh(
			("Block"),
			(v3n(0.25, 0.1, 0.5)),
			(v3n(0,0,0))
		)
	}
	
	local _right_eye = {
		name = 			('RightEye'),				--Name
		size = 			(v3n(1,1,1)),			--Size
		color = 		(COLOR_DEFAULT_CORE),	--Color	
		shape = 		("Block"),				--Shape
		reflectance = 	(0.5),					--Reflectance
		mesh = Mesh(
			("Block"),
			(v3n(0.25, 0.1, 0.5)),
			(v3n(0,0,0))
		)
	}
	
	
	local _core = {
		name = 			('Core'),				--Name
		size = 			(v3n(1,1,1)),			--Size
		color = 		(COLOR_DEFAULT_CORE),	--Color	
		shape = 		("Ball"),				--Shape
		reflectance = 	(1)						--Reflectance
	}
	local _abdomen = {
		name = 			('Ab'),					--Name
		size = 			(v3n(1, 1, 1)),			--Size	
		color = 		(COLOR_DEFAULT_PRIMARY),--Color
		shape = 		("Block"),				--Shape
		reflectance = 	(0.1),					--Reflectance	
		mesh = Mesh(							--Mesh
			("Torso"),			--MeshType	
			(v3n(1.15,0.5,1)),	--Scale	
			(v3n(0,0,0))		--Offset	
		)
	}
	local _left_chest = {
		name = 			('Ab'),					--Name
		size = 			(v3n(1, 1, 1)),			--Size	
		color = 		(COLOR_DEFAULT_PRIMARY),--Color
		shape = 		("Block"),				--Shape
		reflectance = 	(0.1),					--Reflectance	
		mesh = Mesh(							--Mesh
			("Torso"),			--MeshType	
			(v3n(1.15,0.5,1)),	--Scale	
			(v3n(0,0,0))		--Offset	
		)
	}
	local _right_chest = {
		name = 			('Ab'),					--Name
		size = 			(v3n(1, 1, 1)),			--Size	
		color = 		(COLOR_DEFAULT_PRIMARY),--Color
		shape = 		("Block"),				--Shape
		reflectance = 	(0.1),					--Reflectance	
		mesh = Mesh(							--Mesh
			("Torso"),			--MeshType	
			(v3n(1.15,0.5,1)),	--Scale	
			(v3n(0,0,0))		--Offset	
		)
	}
	
	local _left_arm_band_lower = {
		name =			('LeftArmBandLower'),
		size = 			(v3n(1,1,1)),
		color =			(COLOR_DEFAULT_SECONDARY),
		shape = 		("Block"),
		reflectance =	(0.1),
		mesh = Mesh(
			("Brick"),
			(v3n(1.15,0.4,1.15)),
			(v3n(0,0,0))
		)
	}
	
	local _right_arm_band_lower = {
		name =			('RightArmBandLower'),
		size = 			(v3n(1,1,1)),
		color =			(COLOR_DEFAULT_SECONDARY),
		shape = 		("Block"),
		reflectance =	(0.1),
		mesh = Mesh(
			("Brick"),
			(v3n(1.15,0.4,1.15)),
			(v3n(0,0,0))
		)
	}
	
	local _left_arm_band_upper = {
		name =			('LeftArmBandLower'),
		size = 			(v3n(1,1,1)),
		color =			(COLOR_DEFAULT_SECONDARY),
		shape = 		("Block"),
		reflectance =	(0.1),
		mesh = Mesh(
			("Brick"),
			(v3n(1.15,0.8,1.15)),
			(v3n(0,0,0))
		)
	}
	
	local _right_arm_band_upper = {
		name =			('RightArmBandLower'),
		size = 			(v3n(1,1,1)),
		color =			(COLOR_DEFAULT_SECONDARY),
		shape = 		("Block"),
		reflectance =	(0.1),
		mesh = Mesh(
			("Brick"),
			(v3n(1.15,0.8,1.15)),
			(v3n(0,0,0))
		)
	}
	
	local _left_leg_band_upper = {
		name =			('LeftArmBandLower'),
		size = 			(v3n(1,1,1)),
		color =			(COLOR_DEFAULT_SECONDARY),
		shape = 		("Block"),
		reflectance =	(0.1),
		mesh = Mesh(
			("Brick"),
			(v3n(1.15,0.8,1.15)),
			(v3n(0,0,0))
		)
	}
	
	local _right_leg_band_upper = {
		name =			('RightArmBandLower'),				--Name
		size = 			(v3n(1,1,1)),						--Size
		color =			(COLOR_DEFAULT_SECONDARY),			--Color	
		shape = 		("Block"),							--Shape
		reflectance =	(0.1),								--Reflectance
		mesh = Mesh(										--Mesh
			("Brick"),
			(v3n(1.15,0.8,1.15)),
			(v3n(0,0,0))
		)
	}
	
	local _right_leg_jet = {
		name = 			('Core'),							--Name
		size = 			(v3n(1,1,1)),						--Size
		color = 		(COLOR_DEFAULT_CORE),				--Color	
		shape = 		("Ball"),							--Shape
		reflectance = 	(1),								--Reflectance
		mesh = Mesh(
			("Sphere"),
			(v3n(0.5,0.25,0.5)),
			(v3n(0,0,0))
		)
	}
	
	local _left_leg_jet = {
		name = 			('Core'),							--Name
		size = 			(v3n(1,1,1)),						--Size
		color = 		(COLOR_DEFAULT_CORE),				--Color	
		shape = 		("Ball"),							--Shape
		reflectance = 	(1),								--Reflectance
		mesh = Mesh(
			("Sphere"),
			(v3n(0.5,0.25,0.5)),
			(v3n(0,0,0))
		)
	}
	
	local _right_arm_jet = {
		name = 			('RightArmJet'),							--Name
		size = 			(v3n(1,1,1)),						--Size
		color = 		(COLOR_DEFAULT_CORE),				--Color	
		shape = 		("Ball"),							--Shape
		reflectance = 	(1),								--Reflectance
		mesh = Mesh(
			("Sphere"),
			(v3n(0.5,0.25,0.5)),
			(v3n(0,0,0))
		)
	}
	
	local _left_arm_jet = {
		name = 			('LeftArmJet'),								--Name
		size = 			(v3n(1,1,1)),							--Size
		color = 		(COLOR_DEFAULT_CORE),					--Color	
		shape = 		("Ball"),								--Shape
		reflectance = 	(1),									--Reflectance
		mesh = Mesh(
			("Sphere"),
			(v3n(0.5,0.25,0.5)),
			(v3n(0,0,0))
		)
	}
	
	local _right_shoulder = {
		name = 			('RightShoulder'),								--Name
		size = 			(v3n(1,1,1)),							--Size
		color = 		(COLOR_DEFAULT_PRIMARY),					--Color	
		shape = 		("Ball"),								--Shape
		reflectance = 	(0.1)									--Reflectance
	}
	
	local _left_shoulder = {
		name = 			('LeftShoulder'),								--Name
		size = 			(v3n(1,1,1)),							--Size
		color = 		(COLOR_DEFAULT_PRIMARY),					--Color	
		shape = 		("Ball"),								--Shape
		reflectance = 	(0.1)									--Reflectance
	}
	
	
	local _right_leg_pom = {
		name = 			('RightPom'),								--Name
		size = 			(v3n(1,1,1)),							--Size
		color = 		(COLOR_DEFAULT_SECONDARY),					--Color	
		shape = 		("Ball"),								--Shape
		reflectance = 	(0.1),									--Reflectance
		mesh = Mesh(
			("Sphere"),
			(v3n(0.25,0.5,0.5)),
			(v3n(0,0,0))
		)
	}
	
	local _left_leg_pom = {
		name = 			('LeftPom'),								--Name
		size = 			(v3n(1,1,1)),							--Size
		color = 		(COLOR_DEFAULT_SECONDARY),					--Color	
		shape = 		("Ball"),								--Shape
		reflectance = 	(0.1),									--Reflectance
		mesh = Mesh(
			("Sphere"),
			(v3n(0.25,0.5,0.5)),
			(v3n(0,0,0))
		)
	}
	
	local _right_jet_pack = {
		name = 			('RightPom'),								--Name
		size = 			(v3n(1,1,1)),							--Size
		color = 		(COLOR_DEFAULT_PRIMARY),					--Color	
		shape = 		("Block"),								--Shape
		reflectance = 	(0.1),									--Reflectance
		mesh = Mesh(
			("Head"),
			(v3n(0.8, 2, 0.8)),
			(v3n(0,0,0))
		)
	}
	
	local _left_jet_pack = {
		name = 			('LeftPom'),								--Name
		size = 			(v3n(1,1,1)),							--Size
		color = 		(COLOR_DEFAULT_PRIMARY),					--Color	
		shape = 		("Block"),								--Shape
		reflectance = 	(0.1),									--Reflectance
		mesh = Mesh(
			("Head"),
			(v3n(0.8, 2, 0.8)),
			(v3n(0,0,0))
		)
	}
	
	pcall(function()
		_mouth = WeldMeshPart(WeldPart(
			_mouth.name, _mouth.size, _mouth.color, _mouth.shape, _mouth.reflectance, Head, (cfn(0, 0, -0.4))
		), _mouth.mesh)
		
		_forehead = WeldMeshPart(WeldPart(
			_forehead.name, _forehead.size, _forehead.color, _forehead.shape, _forehead.reflectance, Head, (cfn(0, -0.4, -0.4))
		), _forehead.mesh)

		_left_eye_socket = WeldMeshPart(WeldPart(
			_left_eye_socket.name, _left_eye_socket.size, _left_eye_socket.color, _left_eye_socket.shape, _left_eye_socket.reflectance, Head, (cfn(0.3, 0.35, -0.4))
		), _left_eye_socket.mesh)

		_right_eye_socket = WeldMeshPart(WeldPart(
			_right_eye_socket.name, _right_eye_socket.size, _right_eye_socket.color, _right_eye_socket.shape, _right_eye_socket.reflectance, Head, (cfn(-0.3, 0.35, -0.4))
		), _right_eye_socket.mesh)

		_left_eye = WeldMeshPart(WeldPart(
			_left_eye.name, _left_eye.size, _left_eye.color, _left_eye.shape, _left_eye.reflectance, Head, (cfn(0.2, 0.15, -0.425) * cfe(0,0,0.2))
		), _left_eye.mesh)

		_right_eye = WeldMeshPart(WeldPart(
			_right_eye.name, _right_eye.size, _right_eye.color, _right_eye.shape, _right_eye.reflectance, Head, (cfn(-0.2, 0.15, -0.425) * cfe(0,0,-0.2))
		), _right_eye.mesh)
	
	end)
	
	if (isR15(character) == false) then
	
		pcall(function() 
		
			_core = WeldPart(_core.name, _core.size, _core.color, _core.shape, _core.reflectance, Torso, cfn(0,0.25,-0.25))
			
			_abdomen = WeldMeshPart(WeldPart(								_abdomen.name, 										--Name
				_abdomen.size, 										--Size
				_abdomen.color, 									--Color	
				_abdomen.shape, 									--Shape	
				_abdomen.reflectance,								--Reflectance
				Torso, 												--Part0
				(cfn(0,-0.5,-0.35) * cfe(pi/2, 0, pi))), 			--C0	
				_abdomen.mesh)										--Mesh

			_left_chest = WeldMeshPart(WeldPart(						
				_left_chest.name, 									--Name
				_left_chest.size, 									--Size
				_left_chest.color, 									--Color	
				_left_chest.shape, 									--Shape	
				_left_chest.reflectance,								--Reflectance
				Torso, 												--Part0
				(cfn(-0.4,0.45,-0.35) * cfe(pi/2, pi/4+0.35, pi))), --C0	
				_left_chest.mesh)									--Mesh
			
			_right_chest = WeldMeshPart(WeldPart(						
				_right_chest.name, 									--Name
				_right_chest.size, 									--Size
				_right_chest.color, 								--Color	
				_right_chest.shape, 								--Shape	
				_right_chest.reflectance,							--Reflectance
				Torso, 												--Part0
				(cfn(0.4,0.45,-0.35) * cfe(pi/2, -pi/4-0.35, pi))), --C0	
				_right_chest.mesh)									--Mesh
			
			_left_jet_pack = WeldMeshPart(WeldPart(
				_left_jet_pack.name, _left_jet_pack.size, _left_jet_pack.color, _left_jet_pack.shape, _left_jet_pack.reflectance, Torso, (cfn(0.4, 0, 0.75))
			), _left_jet_pack.mesh)
			
			_right_jet_pack = WeldMeshPart(WeldPart(
				_right_jet_pack.name, _right_jet_pack.size, _right_jet_pack.color, _right_jet_pack.shape, _right_jet_pack.reflectance, Torso, (cfn(-0.4, 0, 0.75))
			), _right_jet_pack.mesh)
		
		end)
		
		pcall(function()
		
			_left_arm_band_lower = WeldMeshPart(WeldPart(
				_left_arm_band_lower.name,							--Name
				_left_arm_band_lower.size,							--Size
				_left_arm_band_lower.color,							--Color		
				_left_arm_band_lower.shape,							--Shape
				_left_arm_band_lower.reflectance,					--Reflectance
				LeftArm,											--Part0
				(cfn(0,-0.4,0))),									--C0	
				_left_arm_band_lower.mesh)							--Mesh	
			
			_left_arm_band_upper = WeldMeshPart(WeldPart(
				_left_arm_band_upper.name,							--Name
				_left_arm_band_upper.size,							--Size
				_left_arm_band_upper.color,							--Color		
				_left_arm_band_upper.shape,							--Shape
				_left_arm_band_upper.reflectance,					--Reflectance
				LeftArm,											--Part0
				(cfn(0,0.4,0))),									--C0	
				_left_arm_band_upper.mesh)							--Mesh	
			
			_left_shoulder = WeldMeshPart(WeldPart(
				_left_shoulder.name, _left_shoulder.size, _left_shoulder.color, _left_shoulder.shape, _left_shoulder.reflectance, LeftArm, (cfn(0, 0.8, 0))
			), _left_shoulder.mesh)
		
		end)
				
			_left_arm_jet = WeldMeshPart(WeldPart(
				_left_arm_jet.name,							--Name
				_left_arm_jet.size,							--Size
				_left_arm_jet.color,							--Color		
				_left_arm_jet.shape,							--Shape
				_left_arm_jet.reflectance,					--Reflectance
				LeftArm,											--Part0
				(cfn(0,-1,0))),									--C0	
				_left_arm_jet.mesh)							--Mesh

			--print(tostring(_left_arm_jet))
		
		pcall(function() 
			
			_right_arm_band_lower = WeldMeshPart(WeldPart(
				_right_arm_band_lower.name,							--Name
				_right_arm_band_lower.size,							--Size
				_right_arm_band_lower.color,							--Color		
				_right_arm_band_lower.shape,							--Shape
				_right_arm_band_lower.reflectance,					--Reflectance
				RightArm,											--Part0
				(cfn(0,-0.4,0))),									--C0	
				_right_arm_band_lower.mesh)							--Mesh	
			
			_right_arm_band_upper = WeldMeshPart(WeldPart(
				_right_arm_band_upper.name,							--Name
				_right_arm_band_upper.size,							--Size
				_right_arm_band_upper.color,							--Color		
				_right_arm_band_upper.shape,							--Shape
				_right_arm_band_upper.reflectance,					--Reflectance
				RightArm,											--Part0
				(cfn(0,0.4,0))),									--C0	
				_right_arm_band_upper.mesh)							--Mesh	
			
			_right_shoulder = WeldMeshPart(WeldPart(
				_right_shoulder.name, _right_shoulder.size, _right_shoulder.color, _right_shoulder.shape, _right_shoulder.reflectance, RightArm, (cfn(0, 0.8, 0))
			), _right_shoulder.mesh)
		
		end)	
			
			_right_arm_jet = WeldMeshPart(WeldPart(
				_right_arm_jet.name,							--Name
				_right_arm_jet.size,							--Size
				_right_arm_jet.color,							--Color		
				_right_arm_jet.shape,							--Shape
				_right_arm_jet.reflectance,					--Reflectance
				RightArm,											--Part0
				(cfn(0,-1,0))),									--C0	
				_right_arm_jet.mesh)							--Mesh	
			
			--print(tostring(_right_arm_jet))
		

		pcall(function()
		
			_left_leg_band_upper = WeldMeshPart(WeldPart(
				_left_leg_band_upper.name,							--Name
				_left_leg_band_upper.size,							--Size
				_left_leg_band_upper.color,							--Color		
				_left_leg_band_upper.shape,							--Shape
				_left_leg_band_upper.reflectance,					--Reflectance
				LeftLeg,											--Part0
				(cfn(0,0.3,0))),									--C0	
				_left_leg_band_upper.mesh)							--Mesh	
			
			_left_leg_jet = WeldMeshPart(WeldPart(
				_left_leg_jet.name,							--Name
				_left_leg_jet.size,							--Size
				_left_leg_jet.color,							--Color		
				_left_leg_jet.shape,							--Shape
				_left_leg_jet.reflectance,					--Reflectance
				LeftLeg,											--Part0
				(cfn(0,-1,0))),									--C0	
				_left_leg_jet.mesh)							--Mesh	
			
			_left_leg_pom = WeldMeshPart(WeldPart(
				_left_leg_pom.name, _left_leg_pom.size, _left_leg_pom.color, _left_leg_pom.shape, _left_leg_pom.reflectance, LeftLeg, (cfn(-0.55, -0.5, 0))
			), _left_leg_pom.mesh)
		
		end)
		
		pcall(function()
		
			_right_leg_band_upper = WeldMeshPart(WeldPart(
				_right_leg_band_upper.name,							--Name
				_right_leg_band_upper.size,							--Size
				_right_leg_band_upper.color,							--Color		
				_right_leg_band_upper.shape,							--Shape
				_right_leg_band_upper.reflectance,					--Reflectance
				RightLeg,											--Part0
				(cfn(0,0.3,0))),									--C0	
				_right_leg_band_upper.mesh)							--Mesh	
			
			_right_leg_jet = WeldMeshPart(WeldPart(
				_right_leg_jet.name,							--Name
				_right_leg_jet.size,							--Size
				_right_leg_jet.color,							--Color		
				_right_leg_jet.shape,							--Shape
				_right_leg_jet.reflectance,					--Reflectance
				RightLeg,											--Part0
				(cfn(0,-1,0))),									--C0	
				_right_leg_jet.mesh)							--Mesh	
			
			_right_leg_pom = WeldMeshPart(WeldPart(
				_right_leg_pom.name, _right_leg_pom.size, _right_leg_pom.color, _right_leg_pom.shape, _right_leg_pom.reflectance, RightLeg, (cfn(0.55, -0.5, 0))
			), _right_leg_pom.mesh)
		
		end)

	else
	
		pcall(function()
	
			_core = WeldPart(_core.name, _core.size, _core.color, _core.shape, _core.reflectance, UpperTorso, cfn(0,0,-0.25))
			
			_abdomen = WeldMeshPart(WeldPart(					
				_abdomen.name, 								--Name
				_abdomen.size, 								--Size
				_abdomen.color, 							--Color	
				_abdomen.shape, 							--Shape	
				_abdomen.reflectance,						--Reflectance
				UpperTorso, 								--Part0
				(cfn(0,-0.5,-0.35) * cfe(pi/2, 0, pi))), 		--C0	
				_abdomen.mesh)								--Mesh

			_left_chest = WeldMeshPart(WeldPart(						
				_left_chest.name, 									--Name
				_left_chest.size, 									--Size
				_left_chest.color, 									--Color	
				_left_chest.shape, 									--Shape	
				_left_chest.reflectance,								--Reflectance
				UpperTorso, 												--Part0
				(cfn(-0.4,0.45,-0.35) * cfe(pi/2, pi/4+0.35, pi))), --C0	
				_left_chest.mesh)									--Mesh
			
			_right_chest = WeldMeshPart(WeldPart(						
				_right_chest.name, 									--Name
				_right_chest.size, 									--Size
				_right_chest.color, 									--Color	
				_right_chest.shape, 									--Shape	
				_right_chest.reflectance,							--Reflectance
				UpperTorso, 												--Part0
				(cfn(0.4,0.45,-0.35) * cfe(pi/2, -pi/4-0.35, pi))), --C0	
				_right_chest.mesh)									--Mesh
				
				_left_jet_pack = WeldMeshPart(WeldPart(
					_left_jet_pack.name, _left_jet_pack.size, _left_jet_pack.color, _left_jet_pack.shape, _left_jet_pack.reflectance, UpperTorso, (cfn(0.4, 0, 0.75))
				), _left_jet_pack.mesh)
				
				_right_jet_pack = WeldMeshPart(WeldPart(
					_right_jet_pack.name, _right_jet_pack.size, _right_jet_pack.color, _right_jet_pack.shape, _right_jet_pack.reflectance, UpperTorso, (cfn(-0.4, 0, 0.75))
				), _right_jet_pack.mesh)
		end)
		
		--pcall(function()
			_left_arm_jet = WeldMeshPart(WeldPart(
				_left_arm_jet.name,							--Name
				_left_arm_jet.size,							--Size
				_left_arm_jet.color,							--Color		
				_left_arm_jet.shape,							--Shape
				_left_arm_jet.reflectance,					--Reflectance
				LeftHand,											--Part0
				(cfn(0,-0.2,0))),									--C0	
				_left_arm_jet.mesh)							--Mesh	
				
				--print(tostring(_left_arm_jet))
		
		--end)
		
		pcall(function()
			
			_left_arm_band_lower = WeldMeshPart(WeldPart(
				_left_arm_band_lower.name,							--Name
				_left_arm_band_lower.size,							--Size
				_left_arm_band_lower.color,							--Color		
				_left_arm_band_lower.shape,							--Shape
				_left_arm_band_lower.reflectance,					--Reflectance
				LeftLowerArm,											--Part0
				(cfn(0,-0.4,0))),									--C0	
				_left_arm_band_lower.mesh)							--Mesh	

		end)
		
		pcall(function()
		
			_left_arm_band_upper = WeldMeshPart(WeldPart(
				_left_arm_band_upper.name,							--Name
				_left_arm_band_upper.size,							--Size
				_left_arm_band_upper.color,							--Color		
				_left_arm_band_upper.shape,							--Shape
				_left_arm_band_upper.reflectance,					--Reflectance
				LeftUpperArm,											--Part0
				(cfn(0,0,0))),									--C0	
				_left_arm_band_upper.mesh)							--Mesh	
		
			_left_shoulder = WeldPart(
				_left_shoulder.name, _left_shoulder.size, _left_shoulder.color, _left_shoulder.shape, _left_shoulder.reflectance, LeftUpperArm, (cfn(0, 0.4, 0))
			)
		
		end)
		
		--pcall(function()
		
			_right_arm_jet = WeldMeshPart(WeldPart(
				_right_arm_jet.name,							--Name
				_right_arm_jet.size,							--Size
				_right_arm_jet.color,							--Color		
				_right_arm_jet.shape,							--Shape
				_right_arm_jet.reflectance,					--Reflectance
				RightHand,											--Part0
				(cfn(0,-0.2,0))),									--C0	
				_right_arm_jet.mesh)							--Mesh	
			
			--print(tostring(_right_arm_jet))
			
		--end)
		
		pcall(function()
		
			_right_arm_band_lower = WeldMeshPart(WeldPart(
				_right_arm_band_lower.name,							--Name
				_right_arm_band_lower.size,							--Size
				_right_arm_band_lower.color,							--Color		
				_right_arm_band_lower.shape,							--Shape
				_right_arm_band_lower.reflectance,					--Reflectance
				RightLowerArm,											--Part0
				(cfn(0,-0.4,0))),									--C0	
				_right_arm_band_lower.mesh)							--Mesh	
			
			end)
		
		pcall(function()
		
			_right_arm_band_upper = WeldMeshPart(WeldPart(
				_right_arm_band_upper.name,							--Name
				_right_arm_band_upper.size,							--Size
				_right_arm_band_upper.color,							--Color		
				_right_arm_band_upper.shape,							--Shape
				_right_arm_band_upper.reflectance,					--Reflectance
				RightUpperArm,											--Part0
				(cfn(0,0,0))),									--C0	
				_right_arm_band_upper.mesh)							--Mesh	
			
			_right_shoulder = WeldPart(
				_right_shoulder.name, _right_shoulder.size, _right_shoulder.color, _right_shoulder.shape, _right_shoulder.reflectance, RightUpperArm, (cfn(0, 0.4, 0))
			)
		
		end)
			
		pcall(function()
			
			_right_leg_band_upper = WeldMeshPart(WeldPart(
				_right_leg_band_upper.name,							--Name
				_right_leg_band_upper.size,							--Size
				_right_leg_band_upper.color,							--Color		
				_right_leg_band_upper.shape,							--Shape
				_right_leg_band_upper.reflectance,					--Reflectance
				RightUpperLeg,											--Part0
				(cfn(0,0,0))),									--C0	
				_right_leg_band_upper.mesh)							--Mesh	
			
		end)
		
		pcall(function()
		
			_right_leg_jet = WeldMeshPart(WeldPart(
				_right_leg_jet.name,							--Name
				_right_leg_jet.size,							--Size
				_right_leg_jet.color,							--Color		
				_right_leg_jet.shape,							--Shape
				_right_leg_jet.reflectance,					--Reflectance
				RightFoot,											--Part0
				(cfn(0,-0.2,0))),									--C0	
				_right_leg_jet.mesh)							--Mesh	
			
		end)
		
		pcall(function()
			
			_right_leg_pom = WeldMeshPart(WeldPart(
				_right_leg_pom.name, _right_leg_pom.size, _right_leg_pom.color, _right_leg_pom.shape, _right_leg_pom.reflectance, RightLowerLeg, (cfn(0.55, 0, 0))
			), _right_leg_pom.mesh)
			
		end)
		
		pcall(function()
		
			_left_leg_band_upper = WeldMeshPart(WeldPart(
				_left_leg_band_upper.name,							--Name
				_left_leg_band_upper.size,							--Size
				_left_leg_band_upper.color,							--Color		
				_left_leg_band_upper.shape,							--Shape
				_left_leg_band_upper.reflectance,					--Reflectance
				LeftUpperLeg,											--Part0
				(cfn(0,0,0))),									--C0	
				_left_leg_band_upper.mesh)							--Mesh	
			
			end)
		
		pcall(function()
			
			_left_leg_jet = WeldMeshPart(WeldPart(
				_left_leg_jet.name,							--Name
				_left_leg_jet.size,							--Size
				_left_leg_jet.color,							--Color		
				_left_leg_jet.shape,							--Shape
				_left_leg_jet.reflectance,					--Reflectance
				LeftFoot,											--Part0
				(cfn(0,-0.2,0))),									--C0	
				_left_leg_jet.mesh)							--Mesh	
			
			end)
		
		pcall(function()
			
			_left_leg_pom = WeldMeshPart(WeldPart(
				_left_leg_pom.name, _left_leg_pom.size, _left_leg_pom.color, _left_leg_pom.shape, _left_leg_pom.reflectance, LeftLowerLeg, (cfn(-0.55, 0, 0))
			), _left_leg_pom.mesh)
			
		end)

	end
	--[[table.insert(_suitData, _core)
	table.insert(_suitData, _abdomen)
	table.insert(_suitData, _leftchest)
	table.insert(_suitData, _rightchest)]]
	
	--print(tostring(coreo),tostring(_left_arm_jet),tostring(_right_arm_jet))
	
	coreo = _core
	coreL = _left_arm_jet
	coreR = _right_arm_jet
	
	print(coreo, coreL, coreR)

	--print(tostring(coreo), tostring(coreL), tostring(coreR))
	
	return suit_data
end

local ClearSuit = function(_c)
	for i,v in pairs(_c:GetDescendants()) do
		if (v:FindFirstChild(wpwTag) ~= nil) then
			v:Remove()
		end
	end
	visiblify(_c)
end

local MainIronMan = function()
	local _c = character
	FadeInvisiblifyCharacter(_c)
	ArmorCharacter(_c)
	SuitArmor(_c)
end

local MainCharacter = function()
	local _c = character
	ClearSuit(_c)
end

local function liggamentize(limb, attached_to, liggament_type, liggament_name, liggament_c0, liggament_c1)
	--Declare Variables
	local liggament
	--Smooth Blocks
	limb.FrontSurface, limb.LeftSurface, 
		limb.RightSurface, limb.BottomSurface, 
		limb.BackSurface, limb.TopSurface = 0,0,0,0,0,0
	--Moterize
	liggament = Instance.new(liggament_type)
	liggament.Parent = attached_to
	liggament.Part0 = attached_to
	liggament.Part1 = limb
	if (liggament_type == 'Motor') then
		liggament.MaxVelocity = 0.1
	end
	if (liggament_c0) then
		liggament.C0 = liggament_c0
	end
	if (liggament_c1) then
		liggament.C1 = liggament_c1
	end
	return liggament
end


local function configure_left_arm()
	local la = char:FindFirstChild("Left Arm")
	local lm = liggamentize(
		la, 				--limb
		Torso,				--attached_to	
		"Motor",			--Type	
		"Left Shoulder",	--Name	
		CFrame.new(
			-sizex - la.Size.x/2, 	--x
			0,		--y
			0					--z
			) * CFrame.fromEulerAnglesXYZ(
				0,					--x
				pi/2,				--y	
				0					--z
			),
		CFrame.new(
			0,						--x
			0,			--y/2
			0						--z
			) * CFrame.fromEulerAnglesXYZ(
				0,					--x
				-limb_skew,				--y
				0					--z	
			)
		)
end				

local function configure_right_arm()
	local ra = char:FindFirstChild("Right Arm")
	local lm = liggamentize(
		ra, 				--limb
		Torso,				--attached_to	
		"Motor",			--Type	
		"Right Shoulder",	--Name	
		CFrame.new(
			sizex - ra.Size.x/2+1, 	--x
			0,		--y
			0			--z
			) * CFrame.fromEulerAnglesXYZ(
				0,					--x
				pi/2,				--y	
				0					--z
			),
		CFrame.new(
			0,						--x
			0,			--y/2
			0						--z
			) * CFrame.fromEulerAnglesXYZ(
				0,					--x
				limb_skew,				--y
				0					--z
			)
		)
end

local LeftArmWeld, RightArmWeld = Instance.new("Weld"), Instance.new("Weld")

local weldArms = function()
	if (isR15(character)) then
		LeftArmWeld.Parent = UpperTorso
		LeftArmWeld.Part1 = LeftUpperArm
		LeftArmWeld.Part0 = UpperTorso
		
		RightArmWeld.Parent = UpperTorso
		RightArmWeld.Part1 = RightUpperArm
		RightArmWeld.Part0 = UpperTorso
	else
		LeftArmWeld.Parent = Torso
		LeftArmWeld.Part1 = LeftArm
		LeftArmWeld.Part0 = Torso
		RightArmWeld.Parent = Torso
		RightArmWeld.Part1 = RightArm
		RightArmWeld.Part0 = Torso
	end
end

local deweldArms = function()
	LeftArmWeld.Part1 = nil
	RightArmWeld.Part1 = nil
end

local pointArm = function(Arm, Weld, EndCf)
	if (Arm:lower():match("right")) then
		--print(Arm, Weld, EndCf)
		Weld.C0 = cfn(1.5,0.5,0)
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
		Weld.C0 = cfn(-1.5,0.5,0)
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
	pointArm("Left", LeftArmWeld, mouse.Hit)
	pointArm("right", RightArmWeld, mouse.Hit)
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

local offset = Vector3.new(0,12,0)

local laser = function(place0)
	--print('laser'..tostring(place0))
	if (mouse.Target ~= nil) then
		local Place0 = place0.CFrame
		local Place1 = mouse.Hit.p
		local P = Instance.new("Part")
		P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude)
		P.Name = "Laser"
		P.Reflectance = 1
		P.Anchored = true
		P.BottomSurface, P.TopSurface = 0, 0
		P.CanCollide = false
		P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
		P.Parent = workspace
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
		while (holding) do wait()
			if (mouse.Target ~= nil) then
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
	else
		weldArms()
		while (holding) do wait()
			pointArms()
		end
		deweldArms()
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
		if (suit) then
			switchFlying()
		end
	end,
	function()
	
	end
)

setKey('f',
	function()
		if (suit) then
			if (flying) then
				laser(coreo)
			else
				if (holding) then
					laser(coreL)
					laser(coreR)
				end
			end
		end
	end,
	function() end)

setKey('q',
function()
	if (flying == false) then
		if (suit == false) then
			MainIronMan(character)
		else
			FadeInvisiblifyCharacter(character)
			MainCharacter(character)
		end
		suit = not suit
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

