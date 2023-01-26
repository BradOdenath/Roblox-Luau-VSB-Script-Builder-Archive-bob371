local who = 'bob371' --Note: owner gets called first if it exists (VSB functionality)
--[[
	Framework: Roblox
	Language: Lua
	Project: Script/ HopperBin Events
	Coders: supergod800, bob371
	Designers: LuigiFan
]]--
RunService = game:GetService("RunService")
waitz = function() RunService.Stepped:Wait() end
local color_schemes = { default = { primary = BrickColor.new("Really black").Color } }
local COLOR_DEFAULT_PRIMARY = color_schemes.default.primary
local player = owner or game.Players[who] or game.Players.LocalPlayer
local character = player.Character
local v3n, cfn, cfa, cfe, c3 = Vector3.new, CFrame.new, CFrame.Angles, CFrame.fromEulerAnglesXYZ, Color3.fromRGB
local pi = math.pi
local Keys, downs, lastpressed = {}, {}, {} --Shoutout to @supergod800
local function isKeyDown(key) return downs[tostring(key)] or false end
local function _setKey(key, func_keydown, func_keyup) 
	local ku, kd = func_keyup, func_keydown
	Keys[key]= { up = ku, down = kd } 
end
local function setKey(key,func_keydown, func_keyup) 
	if typeof(key) == 'table' then 
		for i,v in pairs(key) do _setKey(v, func_keydown, func_keyup) end 
	else 
		_setKey(key, func_keydown, func_keyup)
end end
local function timePassed(key) local t = tick() return math.max(t - (lastpressed[key] or t),0) end
local function keyDown(plr,key)	
	key = tostring(key)
	if isKeyDown(key) then downs[key]=false
		if Keys[key] then Keys[key].up() end
	else downs[key], lastpressed[key] = true, tick()
		if Keys[key] then Keys[key].down() end
end end
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
mouseEvent.OnServerEvent:Connect(function(plr,data) mouse = data end)
keysEvent.OnServerEvent:Connect(keyDown)
isR15 = function(_c)
	if (_c:FindFirstChild("Torso") ~= nil) then
		return false
	else
		return true
	end
end
local isAMesh = function(entity)
	local _is = (string.find(entity, 'Mesh') or 
			(entity:IsA("CylinderMesh") or 
			entity:IsA("BlockMesh") or 
			entity:IsA("SpecialMesh")))
	return _is
end
local headTagName = "Head"
local characterHeadMesh = function(part)
	local _m = Instance.new("SpecialMesh")
	if (isR15(character) == false) then _m.Scale = v3n(1.15,1.15,1.15) end
	_m.Parent = part
	return (headTagName.."Mesh"..part.Name)
end
local invisibleTagName = 'OriginalTransparency'
local setInvisibleTag = function(part)
	local tag = Instance.new("NumberValue")
	tag.Name, tag.Value, tag.Parent = invisibleTagName, part.Transparency, part
	return tag
end
local getInvisibleTag = function(part) 
	return ((part:FindFirstChild(invisibleTagName) ~= nil) and part:FindFirstChild(invisibleTagName).Value or nil) 
end
local removeInvisibleTag = function(part)
	if (part:FindFirstChild(invisibleTagName) ~= nil) then pcall(function() _invisibleTag:Remove() end) end
end
local set_transparency = function(model, transparency)
	for i,v in pairs(model:GetDescendants()) do
		if (v:IsA("BasePart")) then
			if (getInvisibleTag(v) == nil) then setInvisibleTag(v) end
			v.Transparency = transparency
end end end
local invisiblify = function(model) set_transparency(model, 1) end
local visiblify = function(model)
	for i,v in pairs(model:GetDescendants()) do
		if (v:IsA("BasePart")) then
			local _invisibleTag = getInvisibleTag(v)
			if (_invisibleTag ~= nil) then
				v.Transparency = _invisibleTag
				removeInvisibleTag(v)
			else
				v.Transparency = 0
end end end end
local wpwTag = "WeldPartWeld"
local WeldPart = function(name, size, color, shape, reflectance, part0, c0)
	local _p = Instance.new("Part")
	_p.Name = name
	_p.Size = size
	_p.Color = color
	_p.Material = "SmoothPlastic"
	_p.Anchored, _p.CanCollide, _p.Locked = false, false, true
	_p.BottomSurface, _p.TopSurface = 0, 0
	_p.Shape = shape
	_p.Reflectance = reflectance
	_p.Parent = part0
	local _w = Instance.new("Weld")
	_w.Name = "WeldPartWeld"
	_w.Parent = _p
	_w.Part0, _w.Part1 = part0, _p
	_w.C0 = c0
	return _p
end
local Mesh = function(mesh_type, scale, offset, meshid)
	local _mesh
	if (string.find(mesh_type, 'Block') ~= nil) then
		_mesh = Instance.new("BlockMesh")
	else
		_mesh = Instance.new("SpecialMesh")
		_mesh.MeshType = mesh_type
	end
	_mesh.Scale = scale
	_mesh.Offset = offset
	pcall(function() _mesh.MeshId = meshid end)
	return _mesh
end
local WeldMeshPart = function(weld_part, mesh)
	local _p = weld_part
	local _m = mesh
	_m.Parent = _p
	return _p
end
local ArmorPart = function(part)
	local _p = WeldPart(
		('Armor'..tostring(part)),
		(part.Size * 1.1), (COLOR_DEFAULT_PRIMARY),
		("Block"), (0.1), (part), (cfn(0,0,0))
	)
	pcall(function() _p.MeshId = part.MeshId end)
	pcall(function() 
		for i,v in pairs(part:GetChildren()) do
			if (isAMesh(v)) then
				local m = v:Clone()
				m.Parent = _p
	end end end)
	return _p
end
FadeInvisiblifyCharacter = function(c) for j = 0, 0.5, 0.1 do waitz() set_transparency(c, j) end end
local ArmorCharacter = function(c)
	invisiblify(c)
	for i,v in pairs(c:GetChildren()) do
		if (v:IsA("BasePart") and v.Name ~= "HumanoidRootPart") then
			local _a = ArmorPart(v)
			if (v.Name == headTagName) then
				characterHeadMesh(_a)
end end end end
local coreo
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
	local _suitData = {}
	local _hood = {
		name = 			('Hood'),				--Name
		size = 			(v3n(1,1,1)),			--Size
		color = 		(COLOR_DEFAULT_PRIMARY),	--Color	
		shape = 		("Block"),				--Shape
		reflectance = 	(0.1),					--Reflectance
		mesh = Mesh(							--Mesh
			("FileMesh"),		--MeshType	
			(v3n(1,1,1)),		--Scale	
			(v3n(0,0,0)),		--Offset	
			("http://www.roblox.com/asset/?id=16952952") --MeshId
		)
	}	
	local _cape = {
		name = 			('Cape'),				--Name
		size = 			(v3n(2,4,0.1)),			--Size	
		color = 		(COLOR_DEFAULT_PRIMARY),--Color
		shape = 		("Block"),				--Shape
		reflectance = 	(0.1),					--Reflectance	
		mesh = Mesh(
			("Block"),
			(v3n(1,1,1)),
			(v3n(0,0,0))
		)
	}
	pcall(function() _hood = WeldMeshPart(WeldPart(_hood.name, _hood.size, _hood.color, _hood.shape, _hood.reflectance, Head, (cfn(0, 0.5, 0))), _hood.mesh) end)
	if (isR15(character) == false) then
		pcall(function() 
			_cape = WeldMeshPart(WeldPart(
				_cape.name, 									--Name
				_cape.size, 									--Size
				_cape.color, 									--Color	
				_cape.shape, 									--Shape	
				_cape.reflectance,								--Reflectance
				Torso, 											--Part0
				(cfn(0,-0.5,1.15) * cfe(-pi/9,0,0))),			--C0	
				_cape.mesh)										--Mesh
		
		end)
	else
		pcall(function()
			_cape = WeldMeshPart(WeldPart(					
				_cape.name, 							--Name
				_cape.size, 							--Size
				_cape.color, 							--Color	
				_cape.shape, 							--Shape	
				_cape.reflectance,						--Reflectance
				UpperTorso, 							--Part0
				(cfn(0,-1,1.15) * cfe(-pi/9,0,0))),	--C0	
				_cape.mesh)								--Mesh
		end)
	end
	return suit_data
end
local ClearSuit = function(_c)
	for i,v in pairs(_c:GetDescendants()) do
		if (v:FindFirstChild(wpwTag) ~= nil) then v:Remove() end
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
local LeftArmWeld, RightArmWeld = Instance.new("Weld"), Instance.new("Weld")
local LeftLegWeld, RightLegWeld = Instance.new("Weld"), Instance.new("Weld")
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
local HumanoidRootPart = character:FindFirstChild("HumanoidRootPart")
local suit, holding = false, false
local offset = Vector3.new(0,12,0)
Lightning = Instance.new("Model",character)
isEmptyLightning = function() for _,__ in pairs(Lightning:GetChildren()) do return (false) end return (true) end
bottomCFrame = function(part) return ( part.CFrame - Vector3.new(0, part.Size.Y/2.0, 0) ) end
function spark(A,B)
	Hit = bottomCFrame(A)
	local P = Instance.new("Part") 
	P.Name = "Guideline" 
	local Place0 = B.CFrame 
	P.formFactor = 0 
	P.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
	P.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
	P.Parent = Lightning
	P.BrickColor = BrickColor.Black()
	P.Anchored = true 
	P.CanCollide = false
	P.Transparency = 1
	m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.1,0.1,1)
	m.Parent = P
	mh = bottomCFrame(A)
	for c1 = 1, 1 do
		oldHit = B.CFrame
		for count = 1, 10 do
			val1 = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
			val2 = P.Size.z / 10
			val3 = P.CFrame.lookVector * -1
			val4 = count * val2
			val5 = val4 * val3
			val6 = B.CFrame.p
			Hit = CFrame.new(val5 + val1 + val6)
			local s = Instance.new("Part") 
			s.Name = "Spark" 
			local Place0 = oldHit
			s.formFactor = 0 
			s.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
			s.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
			s.BrickColor = BrickColor.White()
			s.Anchored = true 
			s.CanCollide = false
			m = Instance.new("BlockMesh")
			m.Scale = Vector3.new(0.1,0.1,1)
			m.Parent = s
			s.Parent = Lightning
			clone = s:clone()
			clone.Mesh.Scale = Vector3.new(0.3,0.3,1.1)
			clone.BrickColor = BrickColor.Blue()
			clone.Transparency = 0.8
			clone.Parent = s.Parent
			oldHit = Hit
		end
		Hit = oldHit
		local s = Instance.new("Part") 
		s.Name = "Spark" 
		local Place0 = mh
		s.formFactor = 0 
		s.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
		s.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
		s.BrickColor = BrickColor.White()
		s.Anchored = true 
		s.CanCollide = false
		m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.1,0.1,1)
		m.Parent = s
		s.Parent = Lightning
		clone = s:clone()
		clone.Mesh.Scale = Vector3.new(0.3,0.3,1.1)
		clone.BrickColor = BrickColor.Blue()
		clone.Transparency = 0.8
		clone.Parent = s.Parent
		waitz(0.5)
	end
	P:remove()
end
function PlaceL(StickA)
coroutine.resume(coroutine.create(function()
local BB = mouse.Hit.p
local PA = Instance.new("Part")
PA.Anchored = true
PA.Locked = true
PA.CanCollide = false
PA.Transparency = 1
PA.Size = Vector3.new(0.1,0.1,0.1)
PA.Parent = Lightning
PA.CFrame = CFrame.new(BB.x,BB.y,BB.z)
spark(StickA,PA)
for i = 1,4 do waitz()
for i,v in pairs(Lightning:GetChildren()) do
if v:IsA("Part") then
v.Transparency = v.Transparency + 0.25
end
end
end
for i,v in pairs(Lightning:GetChildren()) do
if v:IsA("Part") then
v:Remove()
end
end
end))
end
electrocute = function()
	coroutine.resume(coroutine.create(function()
		local eTag = "_ELECTROCUTING"
		local hyt = mouse.Target
		if (hyt == nil) then return end
		local entity = hyt.Parent
		if entity:FindFirstChild("Humanoid") == nil then return end
		if (entity:FindFirstChild(eTag) ~= nil) then return else
			eTag = Instance.new("ObjectValue")
			eTag.Name = "_ELECTROCUTING"
			eTag.Parent = entity
		end
		for i,v in pairs(entity:GetDescendants()) do waitz()
			coroutine.resume(coroutine.create(function()
				if (v:IsA("BasePart")) then
					for i = 1,4 do waitz() v.Reflectance += 0.25 end
					--v.Reflectance = 0
				end
			end))
		end
		--entity:BreakJoints()
		for i,v in pairs(entity:GetDescendants()) do
			coroutine.resume(coroutine.create(function()
				if (v:IsA("BasePart")) then
					for i = 1,4 do waitz() v.Reflectance -= 0.25 end
					v.Reflectance = 0
				end
			end))
		end
	end))
end
coreR = function() return (isR15(character) and (RightHand) or (RightArm)) end
coreL = function() return (isR15(character) and (LeftHand) or (LeftArm)) end
setKey('MouseButton1Down',
function()
	holding = true
	weldArms()
	while (holding) do waitz() pointArms() end
	deweldArms()
end,
function() holding = false end)
sparkKey = 'f'
setKey(sparkKey, function()
	while (isKeyDown(sparkKey) and holding) do wait() 
		--if (isEmptyLightning()) then 
			PlaceL(coreL()) PlaceL(coreR()) electrocute() 
		--end 
	end
end, function() end)
setKey('q',
function()
	if (suit == false) then MainIronMan(character) else FadeInvisiblifyCharacter(character) MainCharacter(character) end
	suit = not suit
end, function() end)
