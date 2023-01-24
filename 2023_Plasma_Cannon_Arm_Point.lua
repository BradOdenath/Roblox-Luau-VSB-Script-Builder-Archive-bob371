--[[_bob371's_Plasma_Cannon_]]
-------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------

--[[
    Framework: Roblox
    Language: Lua
    Project: Script/ HopperBin Events
    Coders: supergod800, bob371
]]--

--Warning: Code unoptimized.  Read at your own risk.

Player = 'LocalPlayer'
if owner then Player = owner else Player = game.Players[Player] end
Character = Player.Character
local Mouse = Player:GetMouse()
script.Parent = Character

local v3n, cfn, cfa, cfe, c3 = Vector3.new, CFrame.new, CFrame.Angles, CFrame.fromEulerAnglesXYZ, Color3.fromRGB

local pi = math.pi

Blah = true
EndBlah = false

--R6
Torso = 			Character:FindFirstChild("Torso")
RightArm = 			Character:FindFirstChild("Right Arm")	

--R15
UpperTorso = 		Character:FindFirstChild("UpperTorso")
RightUpperArm = 	Character:FindFirstChild("RightUpperArm")
RightHand = 		Character:FindFirstChild("RightHand")

RightArmWeld = Instance.new("Weld")

holding = false

HColor = "Medium stone grey"
HWidth = 0.5
--HBevel = 0.01
HMesh = 0.06

isR15 = function(_c)
	if (_c == nil) then _c = Character end
	if (_c:FindFirstChild("Torso") ~= nil) then
		return false
	else
		return true
	end
end

local Keys,downs,lastpressed={},{},{}

local function isKeyDown(key) return downs[tostring(key)] or false end

local function _setKey(key, func_keydown, func_keyup) 
	local ku, kd
	ku, kd = func_keyup, func_keydown
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
		if isKeyDown(key) then 
			downs[key]=false
			printf('up: '..key)
			if Keys[key] then pcall(function() Keys[key].up() end) end
		else
			downs[key],lastpressed[key]=true,tick()
			printf('down: '..key)
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
        mousedata:FireServer(plr,{Hit = mouse.Hit,Target = mouse.Target})
    end
    ]],''),
Player.PlayerGui))

local mouseEvent = Instance.new('RemoteEvent',keysEvent)
mouseEvent.OnServerEvent:Connect(function(plr,data) mouse = data end)
keysEvent.OnServerEvent:Connect(keyDown)


--[[ * Fire Handle * ]]--

pcall(function() Character.Gun:Remove() end)

Gun = Instance.new("Model")
Gun.Name = "Gun"
Gun.Parent = Character

--[[ * Gui * ]]--
--[[
MG = Instance.new("ScreenGui",Player.PlayerGui)

BS = Instance.new("Frame")
BS.Parent = MG
BS.Size = UDim2.new(1,0,1,0)
BS.Position = UDim2.new(0,0,0,0)
BS.BackgroundColor3 = Color3.new(0,0,0)
BS.BorderSizePixel = 0
BS.BackgroundTransparency = 0
wait(0.5)
for i = 1,10 do wait()
BS.BackgroundTransparency = BS.BackgroundTransparency + 0.1
end
]]

--[[ * Handle * ]]--

Handle = Instance.new("Part")
Handle.formFactor = "Custom"
Handle.Locked = true
Handle.CanCollide = false
Handle.BrickColor = BrickColor.new("Medium stone grey")
Handle.Anchored = false
Handle.Size = Vector3.new(0.5,1,0.5)
Handle.TopSurface = 0
Handle.BottomSurface = 0
Handle.Parent = Gun
MeshA = Instance.new("BlockMesh",Handle)
--MeshA.Bevel = 0.03
WeldA = Instance.new("Weld")
WeldA.Parent = Handle
WeldA.Part0 = (isR15() and RightHand or RightArm)
WeldA.Part1 = Handle
WeldA.C0 = CFrame.new(0,(isR15() and -0.2 or -1.1),-0.1) * CFrame.Angles(math.pi/2-0.2,0,0)

--[[ * Trigger * ]]--

Trigger = Instance.new("Part")
Trigger.formFactor = "Custom"
Trigger.Locked = true
Trigger.CanCollide = false
Trigger.BrickColor = BrickColor.Black()
Trigger.Anchored = false
Trigger.Size = Vector3.new(0.3,0.3,0.6)
Trigger.TopSurface = 0
Trigger.BottomSurface = 0
Trigger.Parent = Gun
MeshB = Instance.new("BlockMesh",Trigger)
--MeshB.Bevel = 0.03
WeldB = Instance.new("Weld")
WeldB.Parent = Trigger
WeldB.Part0 = Handle
WeldB.Part1 = Trigger
WeldB.C0 = CFrame.new(0,-0.5,0.4) * CFrame.Angles(0.2,0,0)

--[[ * Barrel * ]]--

Barrel = Instance.new("Part")
Barrel.formFactor = "Custom"
Barrel.Locked = true
Barrel.CanCollide = false
Barrel.BrickColor = BrickColor.new("Medium stone grey")
Barrel.Anchored = false
Barrel.Size = Vector3.new(1.4,2,1.4)
Barrel.TopSurface = 0
Barrel.BottomSurface = 0
Barrel.Parent = Gun
MeshC = Instance.new("CylinderMesh",Barrel)
--MeshC.Bevel = 0.03
WeldC = Instance.new("Weld")
WeldC.Parent = Barrel
WeldC.Part0 = Trigger
WeldC.Part1 = Barrel
WeldC.C0 = CFrame.new(0,-0.6,-0.4) * CFrame.Angles(math.pi/2,0,0)

--[[ * Fluid * ]]--

Fluid = Instance.new("Part")
Fluid.formFactor = "Custom"
Fluid.Locked = true
Fluid.CanCollide = false
Fluid.BrickColor = BrickColor.new(104)
Fluid.Anchored = false
Fluid.Transparency = 0.25
Fluid.Reflectance = 0.25
Fluid.Size = Vector3.new(1,1,1)
Fluid.TopSurface = 0
Fluid.BottomSurface = 0
Fluid.Parent = Gun
MeshD = Instance.new("CylinderMesh",Fluid)
--MeshD.Bevel = 0.03
WeldD = Instance.new("Weld")
WeldD.Parent = Fluid
WeldD.Part0 = Barrel
WeldD.Part1 = Fluid
WeldD.C0 = CFrame.new(0,-1,0) * CFrame.Angles(0,0,0)

--[[ * CTrigger * ]]--

CTrigger = Instance.new("Part")
CTrigger.formFactor = "Custom"
CTrigger.Locked = true
CTrigger.CanCollide = false
CTrigger.BrickColor = BrickColor.new("Medium stone grey")
CTrigger.Anchored = false
CTrigger.Size = Vector3.new(1.25,0.5,1.25)
CTrigger.TopSurface = 0
CTrigger.BottomSurface = 0
CTrigger.Parent = Gun
MeshE = Instance.new("CylinderMesh",CTrigger)
--MeshE.Bevel = 0.03
WeldE = Instance.new("Weld")
WeldE.Parent = CTrigger
WeldE.Part0 = Fluid
WeldE.Part1 = CTrigger
WeldE.C0 = CFrame.new(0,-0.5,0) * CFrame.Angles(0,0,0)

--[[ * BCap * ]]--

BCap = Instance.new("Part")
BCap.formFactor = "Custom"
BCap.Locked = true
BCap.CanCollide = false
BCap.BrickColor = BrickColor.new("Medium stone grey")
BCap.Anchored = false
BCap.Size = Vector3.new(1,1,1)
BCap.TopSurface = 0
BCap.BottomSurface = 0
BCap.Parent = Gun
MeshF = Instance.new("CylinderMesh",BCap)
--MeshF.Bevel = 0.03
WeldF = Instance.new("Weld")
WeldF.Parent = BCap
WeldF.Part0 = Fluid
WeldF.Part1 = BCap
WeldF.C0 = CFrame.new(0,1,0) * CFrame.Angles(0,0,0)

--[[ * Hole * ]]--

Hole = Instance.new("Part")
Hole.formFactor = "Custom"
Hole.Locked = true
Hole.CanCollide = false
Hole.BrickColor = BrickColor.new("Really black")
Hole.Anchored = false
Hole.Size = Vector3.new(0.7,1,0.7)
Hole.TopSurface = 0
Hole.BottomSurface = 0
Hole.Parent = Gun
MeshG = Instance.new("CylinderMesh",Hole)
--MeshG.Bevel = 0.03
WeldG = Instance.new("Weld")
WeldG.Parent = Hole
WeldG.Part0 = Barrel
WeldG.Part1 = Hole
WeldG.C0 = CFrame.new(0,0.51,0) * CFrame.Angles(0,0,0)

--[[ * JointA * ]]--

JointA = Instance.new("Part")
JointA.formFactor = "Custom"
JointA.Locked = true
JointA.CanCollide = false
JointA.BrickColor = BrickColor.new(HColor)
JointA.Anchored = false
JointA.Size = Vector3.new(HWidth,1,0.2)
JointA.TopSurface = 0
JointA.BottomSurface = 0
JointA.Parent = Gun
MeshH = Instance.new("BlockMesh",JointA)
--MeshH.Bevel = HBevel
WeldH = Instance.new("Weld")
WeldH.Parent = JointA
WeldH.Part0 = Hole
WeldH.Part1 = JointA
WeldH.C0 = CFrame.new(0,0.5,0.5) * CFrame.Angles(0,0,0)

--[[ * JointB * ]]--

JointB = Instance.new("Part")
JointB.formFactor = "Custom"
JointB.Locked = true
JointB.CanCollide = false
JointB.BrickColor = BrickColor.new(HColor)
JointB.Anchored = false
JointB.Size = Vector3.new(HWidth,1,0.2)
JointB.TopSurface = 0
JointB.BottomSurface = 0
JointB.Parent = Gun
MeshI = Instance.new("BlockMesh",JointB)
--MeshI.Bevel = HBevel
WeldI = Instance.new("Weld")
WeldI.Parent = JointB
WeldI.Part0 = Hole
WeldI.Part1 = JointB
WeldI.C0 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0,math.pi,0)

--[[ * JointC * ]]--

JointC = Instance.new("Part")
JointC.formFactor = "Custom"
JointC.Locked = true
JointC.CanCollide = false
JointC.BrickColor = BrickColor.new(HColor)
JointC.Anchored = false
JointC.Size = Vector3.new(HWidth,1,0.2)
JointC.TopSurface = 0
JointC.BottomSurface = 0
JointC.Parent = Gun
MeshJ = Instance.new("BlockMesh",JointC)
--MeshJ.Bevel = HBevel
WeldJ = Instance.new("Weld")
WeldJ.Parent = JointC
WeldJ.Part0 = Hole
WeldJ.Part1 = JointC
WeldJ.C0 = CFrame.new(0.5,0.5,0) * CFrame.Angles(0,math.pi/2,0)

--[[ * JointD * ]]--

JointD = Instance.new("Part")
JointD.formFactor = "Custom"
JointD.Locked = true
JointD.CanCollide = false
JointD.BrickColor = BrickColor.new(HColor)
JointD.Anchored = false
JointD.Size = Vector3.new(HWidth,1,0.2)
JointD.TopSurface = 0
JointD.BottomSurface = 0
JointD.Parent = Gun
MeshK = Instance.new("BlockMesh",JointD)
--MeshK.Bevel = HBevel
WeldK = Instance.new("Weld")
WeldK.Parent = JointD
WeldK.Part0 = Hole
WeldK.Part1 = JointD
WeldK.C0 = CFrame.new(-0.5,0.5,0) * CFrame.Angles(0,-math.pi/2,0)

--[[ * JointE * ]]--

JointE = Instance.new("Part")
JointE.formFactor = "Custom"
JointE.Locked = true
JointE.CanCollide = false
JointE.BrickColor = BrickColor.new(HColor)
JointE.Anchored = false
JointE.Size = Vector3.new(HWidth,1,0.2)
JointE.TopSurface = 0
JointE.BottomSurface = 0
JointE.Parent = Gun
MeshL = Instance.new("BlockMesh",JointE)
--MeshL.Bevel = HBevel
WeldL = Instance.new("Weld")
WeldL.Parent = JointE
WeldL.Part0 = Hole
WeldL.Part1 = JointE
WeldL.C0 = CFrame.new(-0.35,0.5,0.35) * CFrame.Angles(0,-math.pi/2/2,0)

--[[ * JointF * ]]--

JointF = Instance.new("Part")
JointF.formFactor = "Custom"
JointF.Locked = true
JointF.CanCollide = false
JointF.BrickColor = BrickColor.new(HColor)
JointF.Anchored = false
JointF.Size = Vector3.new(HWidth,1,0.2)
JointF.TopSurface = 0
JointF.BottomSurface = 0
JointF.Parent = Gun
MeshM = Instance.new("BlockMesh",JointF)
--MeshM.Bevel = HBevel
WeldM = Instance.new("Weld")
WeldM.Parent = JointF
WeldM.Part0 = Hole
WeldM.Part1 = JointF
WeldM.C0 = CFrame.new(0.35,0.5,0.35) * CFrame.Angles(0,math.pi/2/2,0)

--[[ * JointG * ]]--

JointG = Instance.new("Part")
JointG.formFactor = "Custom"
JointG.Locked = true
JointG.CanCollide = false
JointG.BrickColor = BrickColor.new(HColor)
JointG.Anchored = false
JointG.Size = Vector3.new(HWidth,1,0.2)
JointG.TopSurface = 0
JointG.BottomSurface = 0
JointG.Parent = Gun
MeshN = Instance.new("BlockMesh",JointG)
--MeshN.Bevel = HBevel
WeldN = Instance.new("Weld")
WeldN.Parent = JointG
WeldN.Part0 = Hole
WeldN.Part1 = JointG
WeldN.C0 = CFrame.new(-0.35,0.5,-0.35) * CFrame.Angles(0,math.pi/2/2,0)

--[[ * JointH * ]]--

JointH = Instance.new("Part")
JointH.formFactor = "Custom"
JointH.Locked = true
JointH.CanCollide = false
JointH.BrickColor = BrickColor.new(HColor)
JointH.Anchored = false
JointH.Size = Vector3.new(HWidth,1,0.2)
JointH.TopSurface = 0
JointH.BottomSurface = 0
JointH.Parent = Gun
MeshO = Instance.new("BlockMesh",JointH)
--MeshO.Bevel = HBevel
WeldO = Instance.new("Weld")
WeldO.Parent = JointH
WeldO.Part0 = Hole
WeldO.Part1 = JointH
WeldO.C0 = CFrame.new(0.35,0.5,-0.35) * CFrame.Angles(0,-math.pi/2/2,0)

for i = 1,7 do
WeldD.C0 = WeldD.C0 - Vector3.new(0,0.1*i,0)
end
for i = 1,7 do wait()
WeldD.C0 = WeldD.C0 + Vector3.new(0,0.1*i,0)
end


--[[ * Tool * ]]--

--[[if script.Parent.Name == Player.Name then
Hopper = Instance.new("HopperBin")
Hopper.Name = "Missle"
Hopper.Parent = Player.Backpack
end]]

bottomCFrame = function(part)
	return ( part.CFrame - Vector3.new(0, part.Size.y/2.0, 0) )
end

official_place0 = function()
	return (
		isR15(Character) 
			and bottomCFrame(RightHand) 
			or bottomCFrame(RightArm)
	)
end

weldArm = function()
	if (isR15(Character)) then
		RightArmWeld.Parent = UpperTorso
		RightArmWeld.Part1 = RightUpperArm
		RightArmWeld.Part0 = UpperTorso
	else  
		RightArmWeld.Parent = Torso
		RightArmWeld.Part1 = RightArm
		RightArmWeld.Part0 = Torso
	end
end

deweldArm = function()
	RightArmWeld.Part1 = nil
end
ayo = (-pi/8)
_pointArm = function(Weld, EndCf)
	--print(Weld, EndCf)
	Weld.C0 = cfn(1.5,0.5,0)
	Weld.C1 = cfa(math.rad(-90),0,0) * cfn(0,0,0.5)
	if (isR15(Character)) then
		Weld.C1 = Weld.C1 * (cfn((UpperTorso.CFrame * cfn(1.5,0,0)).p, EndCf.p) - (UpperTorso.CFrame * cfn(1.5,0,0)).p):inverse()
		Weld.C1 = Weld.C1 * (UpperTorso.CFrame - UpperTorso.CFrame.p)
		Weld.C0 = Weld.C0 * CFrame.Angles(ayo,0,0)
	else
		Weld.C1 = Weld.C1 * (cfn((Torso.CFrame * cfn(1.5,0,0)).p, EndCf.p) - (Torso.CFrame * cfn(1.5,0,0)).p):inverse()
		Weld.C1 = Weld.C1 * (Torso.CFrame - Torso.CFrame.p)
	end
end

pointArm = function()
	_pointArm(RightArmWeld, mouse.Hit)
end

setKey('MouseButton1Down',
function()
	holding = true
	weldArm()
	while (holding) do wait()
		pointArm()
	end
	deweldArm()
end,
function()
	holding = false
end)

setKey('q',function() ayo = ((ayo == 0) and -pi/8 or 0) end, function() print(ayo) end)

setKey('f',
function()
if Blah and holding then
Blah = false
for i = 1,7 do wait()
WeldD.C0 = WeldD.C0 - Vector3.new(0,0.01*i,0)
WeldA.C0 = WeldA.C0 + Vector3.new(0,0.01*i,0)
WeldH.C0 = WeldH.C0 * CFrame.Angles(0.1*i/3,0,0)
WeldI.C0 = WeldI.C0 * CFrame.Angles(0.1*i/3,0,0)
WeldJ.C0 = WeldJ.C0 * CFrame.Angles(0.1*i/3,0,0)
WeldK.C0 = WeldK.C0 * CFrame.Angles(0.1*i/3,0,0)
WeldL.C0 = WeldL.C0 * CFrame.Angles(0.1*i/3,0,0)
WeldM.C0 = WeldM.C0 * CFrame.Angles(0.1*i/3,0,0)
WeldN.C0 = WeldN.C0 * CFrame.Angles(-0.1*i/3,0,0)
WeldO.C0 = WeldO.C0 * CFrame.Angles(-0.1*i/3,0,0)

MeshH.Scale = MeshH.Scale + Vector3.new(HMesh,0,0)
MeshI.Scale = MeshI.Scale + Vector3.new(HMesh,0,0)
MeshJ.Scale = MeshJ.Scale + Vector3.new(HMesh,0,0)
MeshK.Scale = MeshK.Scale + Vector3.new(HMesh,0,0)
MeshL.Scale = MeshL.Scale + Vector3.new(HMesh,0,0)
MeshM.Scale = MeshM.Scale + Vector3.new(HMesh,0,0)
MeshN.Scale = MeshN.Scale + Vector3.new(HMesh,0,0)
MeshO.Scale = MeshO.Scale + Vector3.new(HMesh,0,0)

end
if mouse.Target ~= nil then
--local Ray = Ray.new(Hole.CFrame.p,(mouse.Hit.p-Hole.CFrame.p).unit*300)
--local Hit,Position = game.Workspace:FindPartOnRay(Ray,User)
local Position = mouse.Hit.p
local RayPart = Instance.new("Part",Character)
local RayMesh = Instance.new("CylinderMesh",RayPart)
RayPart.Name = "RayPart"
RayPart.BrickColor = BrickColor.new(104)
RayPart.Transparency = 0.25
RayPart.Reflectance = 0.25
RayPart.Anchored = true
RayPart.CanCollide = false
RayPart.Locked = true
RayPart.TopSurface = Enum.SurfaceType.Smooth
RayPart.BottomSurface = Enum.SurfaceType.Smooth
RayPart.formFactor = Enum.FormFactor.Custom
--RayMesh.Bevel = 0.1
local Distance = (Position-Hole.CFrame.p).magnitude
RayPart.Size = Vector3.new(0.5,Distance,0.5)
RayPart.CFrame = CFrame.new(Position,Hole.CFrame.p) * CFrame.new(0,0,-Distance/2) * CFrame.Angles(math.pi/2,0,0)
local RayExplosion = Instance.new("Part",Character)
local RayExpMesh = Instance.new("SpecialMesh",RayExplosion)
RayExpMesh.MeshType = "Sphere"
RayExplosion.Name = "RayExplosion"
RayExplosion.BrickColor = RayPart.BrickColor
RayExplosion.Transparency = 0.25
RayExplosion.Reflectance = 0.25
RayExplosion.Anchored = true
RayExplosion.CanCollide = false
RayExplosion.Locked = true
RayExplosion.TopSurface = 0
RayExplosion.BottomSurface = 0
RayExplosion.Size = Vector3.new(1,1,1)
RayExplosion.CFrame = mouse.Hit
coroutine.resume(coroutine.create(function() 
	while (RayPart.Transparency < 1) do wait()
		RayPart.Transparency += 0.15
		RayExplosion.Reflectance += 0.15
		RayExplosion.Transparency = RayPart.Transparency
		RayExpMesh.Scale += Vector3.new(0.25,0.25,0.25)
	end
end))
game.Debris:AddItem(RayPart,0.3)
game.Debris:AddItem(RayExplosion,0.3)
mouse.Target:BreakJoints()
end

for i = 1,7 do wait()
WeldD.C0 = WeldD.C0 + Vector3.new(0,0.01*i,0)
WeldA.C0 = WeldA.C0 - Vector3.new(0,0.01*i,0)
WeldH.C0 = WeldH.C0 * CFrame.Angles(-0.1*i/3,0,0)
WeldI.C0 = WeldI.C0 * CFrame.Angles(-0.1*i/3,0,0)
WeldJ.C0 = WeldJ.C0 * CFrame.Angles(-0.1*i/3,0,0)
WeldK.C0 = WeldK.C0 * CFrame.Angles(-0.1*i/3,0,0)
WeldL.C0 = WeldL.C0 * CFrame.Angles(-0.1*i/3,0,0)
WeldM.C0 = WeldM.C0 * CFrame.Angles(-0.1*i/3,0,0)
WeldN.C0 = WeldN.C0 * CFrame.Angles(0.1*i/3,0,0)
WeldO.C0 = WeldO.C0 * CFrame.Angles(0.1*i/3,0,0)

MeshH.Scale = MeshH.Scale - Vector3.new(HMesh,0,0)
MeshI.Scale = MeshI.Scale - Vector3.new(HMesh,0,0)
MeshJ.Scale = MeshJ.Scale - Vector3.new(HMesh,0,0)
MeshK.Scale = MeshK.Scale - Vector3.new(HMesh,0,0)
MeshL.Scale = MeshL.Scale - Vector3.new(HMesh,0,0)
MeshM.Scale = MeshM.Scale - Vector3.new(HMesh,0,0)
MeshN.Scale = MeshN.Scale - Vector3.new(HMesh,0,0)
MeshO.Scale = MeshO.Scale - Vector3.new(HMesh,0,0)

end
Blah = true
end
end,
function()
	print("ayo")
end)
