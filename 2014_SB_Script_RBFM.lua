--[[_(_bob371's_Guided_Missle_)_]]
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------

--[[
	Framework: Roblox
	Language: Lua
	Project: Script/ HopperBin Events
	Coders: supergod800, bob371
]]--

Player = owner or game.Players.bob371 or game.Players.LocalPlayer
Character = Player.Character
script.Parent = Character

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

local camera_object = Instance.new("ObjectValue")
local mouse = {}
local keysEvent = Instance.new("RemoteEvent",NLS(string.format([[
    local keysEvent,mouse = script:FindFirstChildWhichIsA("RemoteEvent"),game.Players.LocalPlayer:GetMouse()
    local mousedata = keysEvent:FindFirstChildWhichIsA("RemoteEvent")
	--local camera = workspace.CurrentCamera
	--print(camera)
	--mouse:SetAttribute("Camera",camera)
    mouse.KeyDown:connect(function(plr,key)  keysEvent:FireServer(plr,key) end)
    mouse.KeyUp:connect(function(plr,key) keysEvent:FireServer(plr,key) end)
    mouse.Button1Down:connect(function(plr,key) keysEvent:FireServer(plr,'MouseButton1Down') end)
    mouse.Button1Up:connect(function(plr,key) keysEvent:FireServer(plr,'MouseButton1Down') end)
    
	--pcall(function() print(camera_object) end)
	
	local runserv = game:GetService("RunService")
    while runserv.Stepped:Wait() do
        mousedata:FireServer(plr,{Hit = mouse.Hit,Target = mouse.Target
		--, Camera = camera
		})
    end
    ]],''),
Player.PlayerGui))
	
local mouseEvent = Instance.new('RemoteEvent',keysEvent)
mouseEvent.OnServerEvent:Connect(function(plr,data) mouse = data end)
keysEvent.OnServerEvent:Connect(keyDown)

local lolMissle = function(_missle)
	pcall(function()
		local w = Instance.new("Weld")
		w.Parent = Character.HumanoidRootPart
		w.Part0 = w.Parent
		w.Part1 = _missle
		w.C1 = CFrame.new(0,2.5,0)
		Character.Humanoid.Sit = true
	end)
end


--[[ * Fire Handle * ]]--

pcall(function() Character.Gun:Remove() end)

Gun = Instance.new("Model")
Gun.Name = "Gun"
Gun.Parent = Character

--[[ * Gui * ]]--

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

--[[ * Arm Weld * ]]--

local ArmWeld, ArmWeldR
ArmWeld = Instance.new("Weld") 
ArmWeldR = Instance.new("Weld") 

function DeclareArmWelds()
ArmWeld.Parent = Character["Torso"]
ArmWeld.Part0 = ArmWeld.Parent
ArmWeld.Part1 = Character["Right Arm"]
ArmWeld.C0 = CFrame.new(1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
ArmWeldR.Parent = Character["Torso"]
ArmWeldR.Part0 = ArmWeldR.Parent
ArmWeldR.Part1 = Character["Left Arm"]
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end

DeclareArmWelds()

--[[ * Neck Weld * ]]--

Neck = Instance.new("Weld") 
Neck.Parent = Character["Torso"]
Neck.Part0 = Neck.Parent
Neck.Part1 = Character["Head"]
Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

--[[ * Handle * ]]--

Handle = Instance.new("Part")
Handle.formFactor = "Custom"
Handle.Locked = true
Handle.CanCollide = false
Handle.BrickColor = BrickColor.new(141)
Handle.Anchored = false
Handle.Size = Vector3.new(0.5,1,0.5)
Handle.TopSurface = 0
Handle.BottomSurface = 0
Handle.Parent = Gun
MeshA = Instance.new("BlockMesh",Handle)
--MeshA.Bevel = 0.03
WeldA = Instance.new("Weld")
WeldA.Parent = Handle
WeldA.Part0 = Character["Right Arm"]
WeldA.Part1 = Handle
WeldA.C0 = CFrame.new(0,-1.1,-0.2) * CFrame.Angles(math.pi/2-0.2,0,0)

--[[ * Cann * ]]--

Cann = Instance.new("Part")
Cann.formFactor = "Custom"
Cann.Locked = true
Cann.CanCollide = false
Cann.BrickColor = BrickColor.new(141)
Cann.Anchored = false
Cann.Size = Vector3.new(1.05,3,1.05)
Cann.TopSurface = 0
Cann.BottomSurface = 0
Cann.Parent = Gun
MeshB = Instance.new("CylinderMesh",Cann)
--MeshB.Bevel = 0.1
WeldB = Instance.new("Weld")
WeldB.Parent = Cann
WeldB.Part0 = Handle
WeldB.Part1 = Cann
WeldB.C0 = CFrame.new(0,-0.7,-0.5) * CFrame.Angles(math.pi/2+0.2,0,0)

--[[ * Lense * ]]--

Lense = Instance.new("Part")
Lense.formFactor = "Custom"
Lense.Locked = true
Lense.CanCollide = false
Lense.BrickColor = BrickColor.new("Navy blue")
Lense.Anchored = false
Lense.Size = Vector3.new(0.9,3,0.9)
Lense.Reflectance = 0.1
Lense.TopSurface = 0
Lense.BottomSurface = 0
Lense.Parent = Gun
MeshC = Instance.new("CylinderMesh",Lense)
--MeshC.Bevel = 0.1
WeldC = Instance.new("Weld")
WeldC.Parent = Lense
WeldC.Part0 = Handle
WeldC.Part1 = Lense
WeldC.C0 = CFrame.new(0,-0.7,-0.4) * CFrame.Angles(math.pi/2+0.2,0,0)

--[[ * Back * ]]--

Back = Instance.new("Part")
Back.formFactor = "Custom"
Back.Locked = true
Back.CanCollide = false
Back.BrickColor = BrickColor.new("Really black")
Back.Anchored = false
Back.Size = Vector3.new(1.1,0.2,1.1)
Back.TopSurface = 0
Back.BottomSurface = 0
Back.Parent = Gun
MeshD = Instance.new("CylinderMesh",Back)
--MeshD.Bevel = 0
WeldD = Instance.new("Weld")
WeldD.Parent = Back
WeldD.Part0 = Cann
WeldD.Part1 = Back
WeldD.C0 = CFrame.new(0,-1.5,0) * CFrame.Angles(0,0,0)

--[[ * Stripe1 * ]]--

Stripe1 = Instance.new("Part")
Stripe1.formFactor = "Custom"
Stripe1.Locked = true
Stripe1.CanCollide = false
Stripe1.BrickColor = BrickColor.new("Really black")
Stripe1.Anchored = false
Stripe1.Size = Vector3.new(1.05,2.8,0.2)
Stripe1.TopSurface = 0
Stripe1.BottomSurface = 0
Stripe1.Parent = Gun
MeshE = Instance.new("BlockMesh",Stripe1)
--MeshE.Bevel = 0
WeldE = Instance.new("Weld")
WeldE.Parent = Stripe1
WeldE.Part0 = Cann
WeldE.Part1 = Stripe1
WeldE.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,math.pi/2/2,0)

--[[ * Stripe2 * ]]--

Stripe2 = Instance.new("Part")
Stripe2.formFactor = "Custom"
Stripe2.Locked = true
Stripe2.CanCollide = false
Stripe2.BrickColor = BrickColor.new("Really black")
Stripe2.Anchored = false
Stripe2.Size = Vector3.new(1.05,2.8,0.2)
Stripe2.TopSurface = 0
Stripe2.BottomSurface = 0
Stripe2.Parent = Gun
MeshF = Instance.new("BlockMesh",Stripe2)
--MeshF.Bevel = 0
WeldF = Instance.new("Weld")
WeldF.Parent = Stripe2
WeldF.Part0 = Cann
WeldF.Part1 = Stripe2
WeldF.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,-math.pi/2/2,0)

--[[ * Curb * ]]--

Curb = Instance.new("Part")
Curb.formFactor = "Custom"
Curb.Locked = true
Curb.CanCollide = false
Curb.BrickColor = BrickColor.new(141)
Curb.Anchored = false
Curb.Size = Vector3.new(0.5,0.2,0.5)
Curb.TopSurface = 0
Curb.BottomSurface = 0
Curb.Parent = Gun
MeshG = Instance.new("BlockMesh",Curb)
--MeshG.Bevel = 0
WeldG = Instance.new("Weld")
WeldG.Parent = Curb
WeldG.Part0 = Cann
WeldG.Part1 = Curb
WeldG.C0 = CFrame.new(-0.3,0,0) * CFrame.Angles(0,0,0)

--[[ * Hinged * ]]--

Hinged = Instance.new("Part")
Hinged.formFactor = "Custom"
Hinged.Locked = true
Hinged.CanCollide = false
Hinged.BrickColor = BrickColor.new("Really black")
Hinged.Anchored = false
Hinged.Size = Vector3.new(0.2,0.55,0.2)
Hinged.TopSurface = 0
Hinged.BottomSurface = 0
Hinged.Parent = Gun
MeshH = Instance.new("CylinderMesh",Hinged)
--MeshH.Bevel = 0.025
WeldH = Instance.new("Weld")
WeldH.Parent = Hinged
WeldH.Part0 = Cann
WeldH.Part1 = Hinged
WeldH.C0 = CFrame.new(-0.55,0,0) * CFrame.Angles(math.pi/2,math.pi/2,0)

--[[ * Monitor * ]]--

Monitor = Instance.new("Part")
Monitor.formFactor = "Custom"
Monitor.Locked = true
Monitor.CanCollide = false
Monitor.BrickColor = BrickColor.new(141)
Monitor.Anchored = false
Monitor.Size = Vector3.new(1,0.5,0.2)
Monitor.TopSurface = 0
Monitor.BottomSurface = 0
Monitor.Parent = Gun
MeshI = Instance.new("BlockMesh",Monitor)
--MeshI.Bevel = 0.025
WeldI = Instance.new("Weld")
WeldI.Parent = Monitor
WeldI.Part0 = Hinged
WeldI.Part1 = Monitor
WeldI.C0 = CFrame.new(-0.55,0,0) * CFrame.Angles(0,0,0)

--[[ * Screen * ]]--

Screen = Instance.new("Part")
Screen.formFactor = "Custom"
Screen.Locked = true
Screen.CanCollide = false
Screen.BrickColor = BrickColor.new("Really black")
Screen.Anchored = false
Screen.Size = Vector3.new(1,0.5,0.2)
Screen.Reflectance = 0.1
Screen.TopSurface = 0
Screen.BottomSurface = 0
Screen.Parent = Gun
MeshJ = Instance.new("BlockMesh",Screen)
--MeshJ.Bevel = 0.025
MeshJ.Scale = Vector3.new(0.8,0.8,0.8)
WeldJ = Instance.new("Weld")
WeldJ.Parent = Screen
WeldJ.Part0 = Hinged
WeldJ.Part1 = Screen
WeldJ.C0 = CFrame.new(-0.55,0,0.1) * CFrame.Angles(0,0,0)

--[[ * Tool * ]]--

--[[if script.Parent.Name == Player.Name then
Hopper = Instance.new("HopperBin")
Hopper.Name = "Javlin"
Hopper.Parent = Player.Backpack
end]]

function Weld(Part0, Part1, C0)
	local w = Instance.new("Weld")
	w.Parent = Part0
	w.Part0 = Part0
	w.Part1 = Part1
	w.C0 = C0
	return w
end

function Rocket(core)
	local rocket = Instance.new("Model",core)
	local p = Instance.new("Part")
	p.Locked, p.Anchored, p.CanCollide = true, false, false
	p.Size = Vector3.new(2,10,2)
	p.Parent = rocket
	local m = Instance.new("SpecialMesh",p)
	local w = Weld(core, p, CFrame.Angles(math.pi/2,0,0))
	
end

Blah = true
EndBlah = true

local key = 'MouseButton1Down'
setKey(key, 
function()
if Blah == true then
Blah = false
Character.Humanoid.WalkSpeed = 0
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0,0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2/2,0,0.1)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(-0.1,0,0.06)
WeldA.C0 = WeldA.C0 * CFrame.Angles(-0.1,0,-0.05)
WeldA.C0 = WeldA.C0 - Vector3.new(0.05,-0.03,-0.05)
end
for i = 1,10 do wait()
WeldH.C0 = WeldH.C0 * CFrame.Angles(0,-math.pi/10/2,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2/2,0,-0.1)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(-0.1,0,0.06)
end
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2/2,0,0)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(-0.04,0.075,0.03)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0.1,0,0.05)
WeldA.C0 = WeldA.C0 + Vector3.new(0.05,-0.03,-0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2,-0.05,0.1)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(-0.12,-0.05,0.05)
BS.BackgroundTransparency = BS.BackgroundTransparency - 0.1
end
WeldA.C0 = CFrame.new(0,-1.1,-0.2) * CFrame.Angles(math.pi/2-0.2,0,0)
wait(0.5)
local P = Instance.new("Part")
P.Anchored = true
P.Locked = true
P.CanCollide = false
P.formFactor = "Custom"
P.TopSurface = 0
P.BottomSurface = 0
P.Transparency = 1
P.Parent = Gun
P.Size = Vector3.new(4,4,16)
P.CFrame = CFrame.new(0,250,500)
Rocket(P)
local G = Instance.new("BodyGyro")
G.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
G.CFrame = P.CFrame
G.Parent = P
local V = Instance.new("BodyVelocity")
V.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
V.Parent = P
local status, response = pcall(function()
	workspace.CurrentCamera.CameraSubject = P
	workspace.CurrentCamera.CameraType = "Attach"
end)
lolMissle(P)
print('ayo')
wait(0.5)
P.Anchored = false
P.Touched:connect(function() pcall(function() 
local ff = Instance.new("ForceField",Character)
local e = Instance.new("Explosion")
e.Position = P.Position
e.BlastRadius = 5--100
e.BlastPressure = 100000
P.Parent = nil
e.Parent = game.Workspace
Character.Humanoid.Sit = false
ff:Remove()
end) end)
coroutine.resume(coroutine.create(function()
for i = 1,10 do wait()
BS.BackgroundTransparency = BS.BackgroundTransparency + 0.1
end
end))
while P.Parent == Gun do wait()
G.CFrame = CFrame.new(P.Position,mouse.Hit.p)
V.Velocity = G.CFrame.lookVector * 200
P.Touched:connect(function() pcall(function() 
local e = Instance.new("Explosion")
e.Position = P.Position
e.BlastRadius = 5--100
e.BlastPressure = 100000
P.Parent = nil
e.Parent = game.Workspace
Character.Humanoid.Sit = false
ff:Remove()
end) end)
end
wait(1)
for i = 1,10 do wait()
BS.BackgroundTransparency = BS.BackgroundTransparency - 0.1
end
wait(1)
pcall(function()
	workspace.CurrentCamera.CameraSubject = Character.Head
	workspace.CurrenttCamera.CameraType = "Follow"
end)
for i = 1,10 do wait()
BS.BackgroundTransparency = BS.BackgroundTransparency + 0.1
end
WeldH.C0 = CFrame.new(-0.55,0,0) * CFrame.Angles(math.pi/2,math.pi/2,0)
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(-0.04,0.075,0.03)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2/2,0,0)
WeldA.C0 = WeldA.C0 - Vector3.new(0.05,-0.03,-0.05)
WeldA.C0 = WeldA.C0 * CFrame.Angles(-0.1,0,-0.05)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(-0.12,-0.05,0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2,0.05,-0.1)
end
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(-0.1,0,0.06)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2/2,0,0.1)
WeldH.C0 = WeldH.C0 * CFrame.Angles(0,math.pi/10/2,0)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0,0,0.05)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2/2,0,0)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(-0.1,0,0.06)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2/2,0,-0.1)
WeldA.C0 = WeldA.C0 + Vector3.new(0.05,-0.03,-0.05)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0.1,0,0.05)
end
WeldA.C0 = CFrame.new(0,-1.1,-0.2) * CFrame.Angles(math.pi/2-0.2,0,0)
WeldH.C0 = CFrame.new(-0.55,0,0) * CFrame.Angles(math.pi/2,math.pi/2,0)
DeclareArmWelds()
Character.Humanoid.WalkSpeed = 16
Blah = true
end
end,
function()
emptyFunction(key, 'up')
end
)