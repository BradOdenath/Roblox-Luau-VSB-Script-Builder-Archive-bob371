------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- lego
-- blockland
local vip = 'LocalPlayer'
if owner then vip = owner else vip = game.Players[vip] end
local char = vip.Character
local fireon = false
local ironman = 0 -- 0 = yes | 1 = no
local ironon = "Off"
local flying  = "Off"
local shooting = "Loaded"
local holding = "Off"
local forcefield = "Loaded"
local fire = false
local Torso = char.Torso

local function printMain()
	if fireon == true then
		Main.Text = "| User - "..vip.Name.." | Iron Man - "..ironon.." | Fire - On | Flying - "..flying.." | Gun - "..shooting.." | Shield - "..forcefield.." |"
	else
		Main.Text = "| User - "..vip.Name.." | Iron Man - "..ironon.." | Fire - Off | Flying - "..flying.." | Gun - "..shooting.." | Shield - "..forcefield.." |"
	end
end

local printStatuses = function()
	print('| Armor: '..tostring(ironon)..
		 ' | Flying: '..tostring(flying)..
		 ' | Shooting: '..tostring(shooting)..
		 ' | Holding: '..tostring(holding)..
		 ' | ForceField: '..tostring(forcefield)..
		 ' | Fire: '..tostring(fire)..' |')
end

local WLft, WLgt
WLft = Instance.new("Weld")
WLft.Parent = Torso
WLft.Part0 = Torso
WLgt = Instance.new("Weld")
WLgt.Parent = Torso
WLgt.Part0 = Torso

local pi = math.pi

local sizex, sizey, sizez = Torso.Size.x/2, Torso.Size.y/2, Torso.Size.z/2
local scale = 1
local limb_skew = pi/2


local Keys,downs,lastpressed={},{},{}  --Shoutout to @supergod800

local function isKeyDown(key) return downs[tostring(key)] or false end

local function emptyFunction(key, key_event) print("Empty Key Function: "..tostring(key)..key_event) end

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
	print(key)
	--printStatuses()
	if isKeyDown(key) then 
		downs[key]=false
		print('up')
		if Keys[key] then pcall(function() Keys[key].up() end) end
	else
		downs[key],lastpressed[key]=true,tick()
		print('down')
		if Keys[key] then pcall(function() Keys[key].down() end) end
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
        mousedata:FireServer(plr,{Hit = mouse.Hit,Target = mouse.Target, TargetSurface = mouse.TargetSurface})
    end
    ]],''),
vip.PlayerGui))
	
local mouseEvent = Instance.new('RemoteEvent',keysEvent)
mouseEvent.OnServerEvent:Connect(function(plr,data) mouse = data end)
keysEvent.OnServerEvent:Connect(keyDown)

local M = Instance.new("Folder")

local function AccessoryOff()
for i,v in pairs(char:GetChildren()) do if v.className == "Accessory" then v.Parent = M end end
pcall(function() char.Head.Transparency = 0 char.Head.face.Face = "Front" end)
end

local function AccessoryOn()
for i,v in pairs(M:GetChildren()) do v.Parent = char end
pcall(function() char.Head.Transparency = 1 char.Head.face.Face = "Bottom" end)
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

local function ArmJoints()
	configure_left_arm()
	configure_right_arm()
	WLft.Part1 = nil
	WLgt.Part1 = nil
	print('ay')
end
	
local function ArmPoint(Arm, Weld, EndCf) 
	if (Arm:lower():match("right")) then
		Weld.C0 = CFrame.new(1.5, 0.5, 0)
		Weld.C1 = CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0, 0, 0.5)
		Weld.C1 = Weld.C1 * (CFrame.new((Torso.CFrame * CFrame.new(1.5, 0, 0)).p, EndCf.p) - (Torso.CFrame * CFrame.new(1.5, 0, 0)).p):inverse()
		Weld.C1 = Weld.C1 * (Torso.CFrame - Torso.CFrame.p)
		
	elseif (Arm:lower():match("left")) then
		Weld.C0 = CFrame.new(-1.5, 0.5, 0)
		Weld.C1 = CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0, 0, 0.5)
		Weld.C1 = Weld.C1 * (CFrame.new((Torso.CFrame * CFrame.new(-1.5, 0, 0)).p, EndCf.p) - (Torso.CFrame * CFrame.new(-1.5, 0, 0)).p):inverse()
		Weld.C1 = Weld.C1 * (Torso.CFrame - Torso.CFrame.p)
		
	end
end

local function BreakWeld(Weld)
	pcall(function()
		Weld.Part1 = nil
	end)
	
end


--[[if script.Parent.className ~= "HopperBin" then
ironbin = Instance.new("HopperBin")
ironbin.Name = "Iron Man"
ironbin.Parent = vip.Backpack
script.Parent = ironbin
end]]

local BodyVelocity = Instance.new("BodyVelocity") 
local BodyGyro= Instance.new("BodyGyro") 
BodyVelocity.MaxForce = Vector3.new(math.huge,math.huge,math.huge) 
BodyGyro.MaxTorque = Vector3.new(math.huge,math.huge,math.huge) 
--local Torso = Torso
local ironmodel = Instance.new("Model")
ironmodel.Name = "IronMan"
ironmodel.Parent = char
local Main = Instance.new("Hint")
Main.Name = "Main"
Main.Parent = vip.PlayerGui


local function BuildSuit()

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Shape = "Ball"
	partz.Reflectance = 1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.new("Navy blue")
	partz.Transparency = ironman
	w = Instance.new("Weld") 
	w.Parent = char["Torso"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0.25,-0.25) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Torso"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.15,0.5,1)
	w = Instance.new("Weld") 
	w.Parent = char["Torso"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,-0.5,-0.35) * CFrame.fromEulerAnglesXYZ(3.14/2,0,3.14)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(2.05,2.05,1.1)
	w = Instance.new("Weld") 
	w.Parent = char["Torso"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Torso"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.15,0.5,1)
	w = Instance.new("Weld") 
	w.Parent = char["Torso"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(-0.4,0.45,-0.35) * CFrame.fromEulerAnglesXYZ(3.14/2,3.14/2/2+0.35,3.14)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Torso"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.15,0.5,1)
	w = Instance.new("Weld") 
	w.Parent = char["Torso"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0.4,0.45,-0.35) * CFrame.fromEulerAnglesXYZ(3.14/2,-3.14/2/2-0.35,3.14)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.1,2.05,1.1)
	w = Instance.new("Weld") 
	w.Parent = char["Right Arm"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.1,2.05,1.1)
	w = Instance.new("Weld") 
	w.Parent = char["Left Arm"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.1,2.05,1.1)
	w = Instance.new("Weld") 
	w.Parent = char["Left Leg"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.1,2.05,1.1)
	w = Instance.new("Weld") 
	w.Parent = char["Right Leg"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.15,0.4,1.15)
	w = Instance.new("Weld") 
	w.Parent = char["Left Arm"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,-0.4,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.15,0.4,1.15)
	w = Instance.new("Weld") 
	w.Parent = char["Right Arm"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,-0.4,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.15,0.8,1.15)
	w = Instance.new("Weld") 
	w.Parent = char["Left Arm"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0.4,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.15,0.8,1.15)
	w = Instance.new("Weld") 
	w.Parent = char["Right Arm"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0.4,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.15,0.8,1.15)
	w = Instance.new("Weld") 
	w.Parent = char["Left Leg"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0.3,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.15,0.8,1.15)
	w = Instance.new("Weld") 
	w.Parent = char["Right Leg"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0.3,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Head"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.3,1.3,1.3)
	w = Instance.new("Weld") 
	w.Parent = char["Head"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Shape = "Ball"
	partz.Reflectance = 1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.new("Navy blue")
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.Parent = partz
	mesh.MeshType = "Sphere"
	mesh.Scale = Vector3.new(0.5,0.25,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Right Arm"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,-1,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
	--[[for i = 1,50 do
	fire = Instance.new("Fire")
	fire.Enabled = fireon
	fire.Color = Color3.new(0.1,0.1,1)
	fire.SecondaryColor = Color3.new(205,0,0)
	fire.Parent = partz
	fire.Size = 2
	fire.Heat = 0
	end]]

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Shape = "Ball"
	partz.Reflectance = 1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.new("Navy blue")
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.Parent = partz
	mesh.MeshType = "Sphere"
	mesh.Scale = Vector3.new(0.5,0.25,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Left Arm"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,-1,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
	--for i = 1,50 do
	--[[fire = Instance.new("Fire")
	fire.Enabled = fireon
	fire.Color = Color3.new(0.1,0.1,1)
	fire.SecondaryColor = Color3.new(205,0,0)
	fire.Parent = partz
	fire.Size = 2
	fire.Heat = 0]]
	--end

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Shape = "Ball"
	partz.Reflectance = 1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.new("Navy blue")
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.Parent = partz
	mesh.MeshType = "Sphere"
	mesh.Scale = Vector3.new(0.5,0.25,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Left Leg"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,-1,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Shape = "Ball"
	partz.Reflectance = 1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.new("Navy blue")
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.Parent = partz
	mesh.MeshType = "Sphere"
	mesh.Scale = Vector3.new(0.5,0.25,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Right Leg"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,-1,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("BlockMesh")
	mesh.Parent = partz
	mesh.Scale = Vector3.new(0.8,0.6,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Head"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0,-0.4) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("BlockMesh")
	mesh.Parent = partz
	mesh.Scale = Vector3.new(0.2,0.2,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Head"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0.3,0.35,-0.4) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("BlockMesh")
	mesh.Parent = partz
	mesh.Scale = Vector3.new(0.2,0.2,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Head"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(-0.3,0.35,-0.4) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.5
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Blue()
	partz.Transparency = ironman
	mesh = Instance.new("BlockMesh")
	mesh.Parent = partz
	mesh.Scale = Vector3.new(0.25,0.1,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Head"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(-0.2,0.15,-0.425) * CFrame.fromEulerAnglesXYZ(0,0,-0.2)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.5
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Blue()
	partz.Transparency = ironman
	mesh = Instance.new("BlockMesh")
	mesh.Parent = partz
	mesh.Scale = Vector3.new(0.25,0.1,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Head"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0.2,0.15,-0.425) * CFrame.fromEulerAnglesXYZ(0,0,0.2)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Shape = "Ball"
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	w = Instance.new("Weld") 
	w.Parent = char["Right Arm"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0.8,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Shape = "Ball"
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	w = Instance.new("Weld") 
	w.Parent = char["Left Arm"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0.8,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("BlockMesh")
	mesh.Parent = partz
	mesh.Scale = Vector3.new(0.7,0.2,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Head"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,-0.4,-0.4) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Shape = "Ball"
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.Parent = partz
	mesh.MeshType = "Sphere"
	mesh.Scale = Vector3.new(0.25,0.5,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Left Leg"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(-0.55,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Shape = "Ball"
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.Parent = partz
	mesh.MeshType = "Sphere"
	mesh.Scale = Vector3.new(0.25,0.5,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Right Leg"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0.55,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Shape = "Ball"
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.Parent = partz
	mesh.MeshType = "Head"
	mesh.Scale = Vector3.new(0.8,2,0.8)
	w = Instance.new("Weld") 
	w.Parent = char["Torso"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0.4,0,0.75) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Shape = "Ball"
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.Parent = partz
	mesh.MeshType = "Head"
	mesh.Scale = Vector3.new(0.8,2,0.8)
	w = Instance.new("Weld") 
	w.Parent = Torso
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(-0.4,0,0.75) * CFrame.fromEulerAnglesXYZ(0,0,0)

	--[[

	flying  = "Off"
	shooting = "Off"
	holding = "Off"

	]]

	AccessoryOff()

	if ironon == "Off" then for i,v in pairs(ironmodel:GetChildren()) do if v.className == "Part" then v.Transparency = 1 end end AccessoryOn() end

	--mouse.KeyDown:connect(onKeyDown)
	--mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
	--mouse.Button1Down:connect(function()Clicked(mouse)end) 
	--mouse.Button1Up:connect(function()UnClicked(mouse)end)
end 

setKey('MouseButton1Down',
function()
	if ironon == "Off" then return end
	Holding = "On"
	printStatuses()
	while Holding == "On" do
		wait()
		if flying == "On" then
			BodyGyro.CFrame = CFrame.new(Torso.Position,mouse.Hit.p) 
			BodyVelocity.Velocity = BodyGyro.CFrame.lookVector * 100
		elseif flying == "Off" then
			WLft.Part1 = char["Left Arm"]
			WLgt.Part1 = char["Right Arm"]
			--WLft = Torso:FindFirstChild("Left Shoulder")
			--WLgt = Torso:FindFirstChild("Right Shoulder")
			ArmPoint("Left Arm", WLft, mouse.Hit) 
			ArmPoint("Right Arm", WLgt, mouse.Hit) 
		end
	end
	if flying == "On" then
		BodyVelocity.Parent = nil
		BodyVelocity.Velocity = Vector3.new(0,0,0)
		BodyVelocity.Parent = Torso
	end
end,

function()
	Holding = "Off"
	printStatuses()
	--pcall(function()
	wait()
	--BreakWeld(WLft)
	--BreakWeld(WLgt)
	--end)
	ArmJoints()
end 

)

local key = 'p'
setKey(key,
	function()
		proof = Instance.new("Hint")
		proof.Text = "Iron Man Created By bob371"..
			--" (NOT FORUMED!!!)"..
			", Approved By LuigiFan"
		proof.Parent = ironmodel
	end,
	function()
		emptyFunction(key,'up')
	end
)

local key = 'r'
setKey(key,
	function()
		if forcefield == "Loaded" and ironon == "On" then
			--for i = 1,10 do
				I = Instance.new("ForceField")
				I.Parent = char
				forcefield = "Reloading."
				printStatuses()
				wait(1/3)
				forcefield = "Reloading.."
				wait(1/3)
				forcefield = "Reloading..."
				wait(1/3)
			--end
			I.Parent = nil
			forcefield = "Loaded"
			printStatus()
		end
	end,
	function()
		emptyFunction(key,'up')
	end
)

local key = 'f'
setKey(key,
	function()
		if mouse.Target ~= nil then
			if shooting == "Loaded" and flying == "On" then
				fire = true
				printStatuses()
				local P = Instance.new("Part") 
				local Place0 = Torso.CFrame * CFrame.new(0,0.25,-0.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
				local Place1 = mouse.Hit.p 
				P.formFactor = 0 
				P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 
				P.Name = "Laser" 
				P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 
				P.Parent = game.Workspace 
				P.BrickColor = BrickColor.new("Navy blue") 
				P.BottomSurface, P.TopSurface = 0,0
				P.Reflectance = 1
				P.Anchored = true 
				P.CanCollide = false
				local e=Instance.new"Explosion" 
				e.Hit:connect(function(part,distance) 
				e.BlastPressure = 1e+006 
				e.BlastRadius = 10
					if distance<10 then 
						part:BreakJoints()
						part.Anchored = false
						Instance.new("Fire").Parent = part
					end 
				end) 
				e.Position = Place1
				e.Parent=workspace
				--char = game.Workspace.bob371
				sound = Instance.new("Sound")
				sound.Volume = 100
				sound.Pitch = 1
				sound.SoundId = "rbxasset://sounds\\Launching rocket.wav"
				sound.Parent = Torso
				sound:Play()
				wait(0.1)
				P:remove()
				fire = false
				for i = 1,5 do
					shooting = "Reloading."
					wait(0.5)
					shooting = "Reloading.."
					wait(0.5)
					shooting = "Reloading..."
					wait(0.5)
				end
				shooting = "Loaded"
			elseif shooting == "Loaded" and flying == "Off" then
				fire = true
				local P = Instance.new("Part") 
				local Place0 = char["Left Arm"].CFrame * CFrame.new(0,-1,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
				local Place1 = mouse.Hit.p 
				P.formFactor = 0 
				P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 
				P.Name = "Laser" 
				P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 
				P.Parent = game.Workspace 
				P.BrickColor = BrickColor.new("Navy blue") 
				P.Reflectance = 1
				P.BottomSurface, P.TopSurface = 0, 0
				P.Anchored = true 
				P.CanCollide = false
				P2 = P:Clone()
				Place2 = char["Right Arm"].CFrame * CFrame.new(0,-1,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
				P2.CFrame = CFrame.new((Place2.p + Place1)/2,Place2.p) 
				P2.Parent = game.Workspace
				local e=Instance.new"Explosion" 
				e.Hit:connect(function(part,distance) 
				e.BlastPressure = 1e+006 
				e.BlastRadius = 10
					if distance<10 then 
						part:BreakJoints()
						part.Anchored = false
						Instance.new("Fire").Parent = part
					end 
				end) 
				e.Position = Place1
				e.Parent=workspace
				--char = game.Workspace.bob371
				sound = Instance.new("Sound")
				sound.Volume = 100
				sound.Pitch = 1
				sound.SoundId = "rbxasset://sounds\\Launching rocket.wav"
				sound.Parent = Torso
				sound:Play()
				wait(0.1)
				pcall(function()
					P:remove()
					P2:Remove()
				end)
				fire = false
				for i = 1,5 do
					shooting = "Reloading."
					printStatuses()
					wait(0.5)
					shooting = "Reloading.."
					wait(0.5)
					shooting = "Reloading..."
					wait(0.5)
				end
				shooting = "Loaded"
			end
		end
	end,
	function()
		emptyFunction(key, 'up')
	end
)

local key = 'q'
setKey(key,
function()
	if flying == "On" then return end
	if ironon == "Off" then
		AccessoryOff()
		ironon = "On"
		BuildSuit()
		printStatuses()
		printMain()
	return
	end
	if ironon == "On" then
		AccessoryOn()
		ironon = "Off"
		for i,v in pairs(ironmodel:GetChildren()) do
			pcall(function() v:Remove() end)
		end
		printStatuses()
		printMain()
		return
	end
end,
function()
	emptyFunction(key, 'up')
end)

local key = 'e'
setKey(key,
function()
	if holding == "Off" and ironon == "On" then
		if flying == "Off" then
			char.Humanoid.PlatformStand = true
			BodyVelocity.Parent = Torso
			BodyGyro.Parent = Torso
			flying = "On"
			printStatuses()
			printMain()
			while flying == "On" do wait()
			BodyGyro.CFrame = CFrame.new(Torso.Position,mouse.hit.p) 
			end
		elseif flying == "On" then
			char.Humanoid.PlatformStand = false
			BodyVelocity.Parent = nil
			BodyGyro.Parent = nil
			flying = "Off"
			printStatuses()
			printMain()
			return
		end
	end
end,
function()
	emptyFunction(key,'up')
end)




--[[
function Deselected(mouse)
	for i,v in pairs(ironmodel:GetChildren()) do if v.className == "Part" then v:Remove() end end
	Main.Parent = nil
	ironon = "Off"
	char.Humanoid.PlatformStand = false
	BodyVelocity.Parent = nil
	BodyGyro.Parent = nil
	flying = "Off"
	AccessoryOn()
end

script.Parent.Selected:connect(Selected)
script.Parent.Deselected:connect(Deselected) 
]]

--[[
while true do
wait()
printMain()
print('yo')
if ironon == "On" then for i,v in pairs(ironmodel:GetChildren()) do if v.className == "Part" then v.Transparency = 0 end end end
if ironon == "Off" then for i,v in pairs(ironmodel:GetChildren()) do if v.className == "Part" then v.Transparency = 1 end end end
end
]]