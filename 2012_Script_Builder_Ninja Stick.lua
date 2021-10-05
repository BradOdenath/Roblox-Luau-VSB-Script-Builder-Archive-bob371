--[[_(_Don't_Worry_About_It_)_]]--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Player = owner or game.Players.bob371 or game.Players.LocalPlayer

--[[ * Commands * ]]--

--[[

Universal Commands:
P/Ctrl1 = Switch Staff/Rod On/Off
Q/E = Role
Z = Fly
K = Assassin

MiniRod Commands:
X = Knife Slash
V = Ninja Star
R = Dart Gun
C = Gun
Click = Decapitate
L = Suicide Stab

Staff Commands:
V = Russian Grenade
F = Lightning Rod
T = TNT
Click = Choke

]]--

--[[ * Now onto the fun stuff * ]]--

Character = Player.Character
script.Parent = Character
--[[
	Framework: Roblox
	Language: Lua
	Project: Script/ HopperBin Events
	Coders: supergod800, bob371
]]--

local Keys,downs,lastpressed={},{},{}

local function isKeyDown(key) return downs[tostring(key)] or false end


local function _setKey(key,func) Keys[key]=func end
local function setKey(key,func) 
	if typeof(key) == 'table' then 
		for i,v in pairs(key) do 
			_setKey(v, func) 
		end 
	else 
		_setKey(key, func) 
	end
end

local function timePassed(key)
    local t = tick() return math.max(t - (lastpressed[key] or t),0)
end

function onKeyUp(key)
if key == "z" then
if Flying == true and Keyz[key] == true then
Keyz[key] = false
if Veloc then Veloc:Remove() end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0.075,0.05)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10)
end
WeldA.C0 = CFrame.new(0,-1,-0) * CFrame.Angles(-math.pi/2,0,0)
StaffOn = true
Flying = false
end
end

if key == "f" then
if Lighter == true and Keyz[key] == true then
Keyz[key] = false
Lighter = false
SpaB.Enabled = false
Flying = true
for i = 1,10 do wait()
WeldB.C0 = WeldB.C0 + Vector3.new(0,0.1,0)
MeshB.Scale = MeshB.Scale - Vector3.new(0.2,-0.-0.05,0.2)
StickB.Reflectance = StickB.Reflectance - 0.1
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2/2,0,0)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0,-0.05,0.025)
WeldA.C0 = WeldA.C0 * CFrame.Angles(math.pi/10/2/2,0,0)
end
Flying = false
wait()
for i,v in pairs(Assassin:GetChildren()) do
if v.BrickColor == BrickColor.new("Black") then
v.BrickColor = BrickColor.new("White")
end
end
wait(1)
SpaB.Enabled = false
end
end

if key == "q" or key == "e" then
if PGyro ~= nil then PGyro:Remove() end
end

end

local function keyDown(plr,key)	
	key = tostring(key)
	print(key)
	if isKeyDown(key) then 
		downs[key]=false
		onKeyUp(key)
	else
		downs[key],lastpressed[key]=true,tick()
		if Keys[key] then Keys[key]()end
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


--[[ * Fire StickA * ]]--

pcall(function() Character.Staff:Remove() end)

Staff = Instance.new("Model")
Staff.Name = "Staff"
Staff.Parent = Character

Lightning = Instance.new("Model")
Lightning.Name = "Lightning"
Lightning.Parent = Staff

Assassin = Instance.new("Model")
Assassin.Name = "Assassin"
Assassin.Parent = Staff

ROFLBlade = Instance.new("Model")
ROFLBlade.Name = "ROFLBlade"
ROFLBlade.Parent = Staff

--[[ * Arm Weld * ]]--

ArmWeld = Instance.new("Weld") 
ArmWeld.Parent = Character["Torso"]
ArmWeld.Part0 = ArmWeld.Parent
ArmWeld.Part1 = Character["Right Arm"]
ArmWeld.C0 = CFrame.new(1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

--[[ * Arm Weld * ]]--

ArmWeldR = Instance.new("Weld") 
ArmWeldR.Parent = Character["Torso"]
ArmWeldR.Part0 = ArmWeldR.Parent
ArmWeldR.Part1 = Character["Left Arm"]
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

--[[ * Neck Weld * ]]--

Neck = Instance.new("Weld") 
Neck.Parent = Character["Torso"]
Neck.Part0 = Neck.Parent
Neck.Part1 = Character["Head"]
Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

--[[ * StickA * ]]--

StickA = Instance.new("Part")
StickA.formFactor = "Custom"
StickA.Locked = true
StickA.CanCollide = false
StickA.BrickColor = BrickColor.new("Reddish brown")
StickA.Anchored = false
StickA.Size = Vector3.new(0.25,2,0.25)
StickA.TopSurface = 0
StickA.BottomSurface = 0
StickA.Parent = Staff
MeshA = Instance.new("CylinderMesh",StickA)
WeldA = Instance.new("Weld")
WeldA.Parent = StickA
WeldA.Part0 = Character["Right Arm"]
WeldA.Part1 = StickA
WeldA.C0 = CFrame.new(0,-1,-0) * CFrame.Angles(-math.pi/2,0,0)
SoundA = Instance.new("Sound")
SoundA.Parent = StickA

--[[ * StickB * ]]--

StickB = Instance.new("Part")
StickB.formFactor = "Custom"
StickB.Locked = true
StickB.CanCollide = false
StickB.BrickColor = BrickColor.new("Reddish brown")
StickB.Anchored = false
StickB.Size = Vector3.new(0.25,2,0.25)
StickB.TopSurface = 0
StickB.BottomSurface = 0
StickB.Parent = Staff
MeshB = Instance.new("CylinderMesh",StickB)
WeldB = Instance.new("Weld")
WeldB.Parent = StickB
WeldB.Part0 = StickA
WeldB.Part1 = StickB
WeldB.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
SpaB = Instance.new("Sparkles",StickB)
SpaB.Enabled = false

--[[ * StickC * ]]--

StickC = Instance.new("Part")
StickC.formFactor = "Custom"
StickC.Locked = true
StickC.CanCollide = false
StickC.BrickColor = BrickColor.new("Reddish brown")
StickC.Anchored = false
StickC.Size = Vector3.new(0.25,2,0.25)
StickC.TopSurface = 0
StickC.BottomSurface = 0
StickC.Parent = Staff
MeshC = Instance.new("CylinderMesh",StickC)
WeldC = Instance.new("Weld")
WeldC.Parent = StickC
WeldC.Part0 = StickA
WeldC.Part1 = StickC
WeldC.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)

--[[ * Flame * ]]--

Flame = Instance.new("Part")
Flame.formFactor = "Custom"
Flame.Locked = true
Flame.CanCollide = false
Flame.BrickColor = BrickColor.new("Medium stone grey")
Flame.Anchored = false
Flame.Size = Vector3.new(0.5,0.5,0.5)
Flame.Transparency = 1
Flame.TopSurface = 0
Flame.BottomSurface = 0
Flame.Parent = Staff
MeshD = Instance.new("CylinderMesh",Flame)
WeldD = Instance.new("Weld")
WeldD.Parent = Flame
WeldD.Part0 = StickB
WeldD.Part1 = Flame
WeldD.C0 = CFrame.new(0,1,0) * CFrame.Angles(0,0,0)
Fire = Instance.new("Fire",Flame)
Fire.Enabled = false
Fire.Heat = 1000
Fire.Size = 0.1

--[[ * Sound * ]]--

function sound(pitch,volume,id)
SoundA.SoundId = id
SoundA.Pitch = pitch
SoundA.Volume = volume
SoundA:Play()
end

--[[ * Spark * ]]--

function spark(A,B)
	Hit = A.CFrame
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
	mh = A.CFrame
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
			s.Parent = Lightning
			s.BrickColor = BrickColor.White()
			s.Anchored = true 
			s.CanCollide = false
			m = Instance.new("BlockMesh")
			m.Scale = Vector3.new(0.1,0.1,1)
			m.Parent = s
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
		s.Parent = Lightning
		s.BrickColor = BrickColor.White()
		s.Anchored = true 
		s.CanCollide = false
		m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.1,0.1,1)
		m.Parent = s
		clone = s:clone()
		clone.Mesh.Scale = Vector3.new(0.3,0.3,1.1)
		clone.BrickColor = BrickColor.Blue()
		clone.Transparency = 0.8
		clone.Parent = s.Parent
		wait(0.5)
	end
	P:remove()
end

function PlaceL(BB)
coroutine.resume(coroutine.create(function()
local PA = Instance.new("Part")
PA.Anchored = true
PA.Locked = true
PA.CanCollide = false
PA.Transparency = 1
PA.Size = Vector3.new(0.1,0.1,0.1)
PA.Parent = Lightning
PA.CFrame = CFrame.new(BB.x,BB.y,BB.z)
spark(StickB,PA)
for i = 1,10 do wait()
for i,v in pairs(Lightning:GetChildren()) do
if v:IsA("Part") then
v.Transparency = v.Transparency + 0.1
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

--[[ * Tool * ]]--

--[[if script.Parent.Name == Player.Name then
Hopper = Instance.new("HopperBin")
Hopper.Name = "Staff"
Hopper.Parent = Player.Backpack
end]]

Blah = true
StaffOn = false
StaffStuff = false
Flying = false
Lighter = false

function EmExplode(a,e)
coroutine.resume(coroutine.create(function()
while true do wait()
if a.CFrame.y < Character.HumanoidRootPart.CFrame.y then
local Ex = Instance.new("Explosion")
Ex.BlastRadius = e
Ex.BlastPressure = 1000000
Ex.Position = a.Position
Ex.Parent = Character
Instance.new("ForceField",Character)
wait()
for i,v in pairs(Character:GetChildren()) do
if v.className == "ForceField" then v:Remove() end end
Molotov:Remove()
break
end
end
end))
end

setKey('MouseButton1Down',
function()
if Flying == false then
Flying = true

if StaffOn == true then
if mouse.Target ~= nil then
if mouse.Target.Parent:findFirstChild("HumanoidRootPart") ~= nil then
if (mouse.Target.Parent.HumanoidRootPart.Position - Character.HumanoidRootPart.Position).magnitude < 5 then
T = mouse.Target.Parent.HumanoidRootPart
local WeldP = Instance.new("Weld")
WeldP.Parent = Staff
WeldP.Part0 = Character.HumanoidRootPart
WeldP.Part1 = T
WeldP.C0 = CFrame.new(0,0,-1) * CFrame.Angles(0,0,0)
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0,-0.05,0.05)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,-math.pi/10/2)
WeldA.C0 = WeldA.C0 - Vector3.new(0.15,0,0)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0,-0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.new(0,0,-0.05)
end
for i = 1,10 do wait()
--[[ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0.1,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.new(0,0.1,0)]]
WeldP.C0 = WeldP.C0 + Vector3.new(0,0,-0.1)
WeldA.C0 = WeldA.C0 - Vector3.new(0,0.09,0)
MeshA.Scale = MeshA.Scale - Vector3.new(0,0.04,0)
WeldB.C0 = WeldB.C0 * CFrame.Angles(math.pi/10/2/2,0,0)
WeldC.C0 = WeldC.C0 * CFrame.Angles(-math.pi/10/2/2,0,0)
WeldB.C0 = WeldB.C0 - Vector3.new(0,0.075,-0.07)
WeldC.C0 = WeldC.C0 + Vector3.new(0,0.075,0.07)
end
for i = 1,5 do wait()
--[[ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0.1,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.new(0,0.1,0)]]
WeldP.C0 = WeldP.C0 + Vector3.new(0,0,-0.1)
WeldA.C0 = WeldA.C0 - Vector3.new(0,0.09,0)
MeshA.Scale = MeshA.Scale - Vector3.new(0,0.04/5,0)
WeldB.C0 = WeldB.C0 * CFrame.Angles(math.pi/10/2/2,0,0)
WeldC.C0 = WeldC.C0 * CFrame.Angles(-math.pi/10/2/2,0,0)
WeldB.C0 = WeldB.C0 - Vector3.new(0,0.075,-0.035)
WeldC.C0 = WeldC.C0 + Vector3.new(0,0.075,0.035)
end
for i = 1,30 do wait()
--[[ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0.1,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.new(0,0.1,0)]]
WeldP.C0 = WeldP.C0 + Vector3.new(0,0,-0.1/10)
WeldA.C0 = WeldA.C0 - Vector3.new(0,0.09/10,0)
MeshA.Scale = MeshA.Scale - Vector3.new(0,0.04/5/10,0)
WeldB.C0 = WeldB.C0 * CFrame.Angles(math.pi/10/2/2/10,0,0)
WeldC.C0 = WeldC.C0 * CFrame.Angles(-math.pi/10/2/2/10,0,0)
WeldB.C0 = WeldB.C0 - Vector3.new(0,0.075/10,-0.035/10)
WeldC.C0 = WeldC.C0 + Vector3.new(0,0.075/10,0.035/10)
end
T:BreakJoints()
WeldP:Remove()
for i = 1,8 do wait()
--[[ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0.1,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.new(0,0.1,0)]]
WeldA.C0 = WeldA.C0 + Vector3.new(0,0.09,0)
MeshA.Scale = MeshA.Scale + Vector3.new(0,0.04/5,0)
WeldB.C0 = WeldB.C0 * CFrame.Angles(-math.pi/10/2/2,0,0)
WeldC.C0 = WeldC.C0 * CFrame.Angles(math.pi/10/2/2,0,0)
WeldB.C0 = WeldB.C0 + Vector3.new(0,0.075,-0.035)
WeldC.C0 = WeldC.C0 - Vector3.new(0,0.075,0.035)
end
for i = 1,10 do wait()
--[[ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0.1,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.new(0,0.1,0)]]
WeldP.C0 = WeldP.C0 - Vector3.new(0,0,-0.1)
WeldA.C0 = WeldA.C0 + Vector3.new(0,0.09,0)
MeshA.Scale = MeshA.Scale + Vector3.new(0,0.04,0)
WeldB.C0 = WeldB.C0 * CFrame.Angles(-math.pi/10/2/2,0,0)
WeldC.C0 = WeldC.C0 * CFrame.Angles(math.pi/10/2/2,0,0)
WeldB.C0 = WeldB.C0 + Vector3.new(0,0.075,-0.07)
WeldC.C0 = WeldC.C0 - Vector3.new(0,0.075,0.07)
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0,0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.new(0,0,0.05)
end
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2,0,0)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0,-0.05,0.05)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10/2)
WeldA.C0 = WeldA.C0 + Vector3.new(0.15,0,0)
end


end
end
end
end

if StaffOn == false then
if mouse.Target ~= nil then
if mouse.Target.Parent:findFirstChild("HumanoidRootPart") ~= nil then
if (mouse.Target.Parent.HumanoidRootPart.Position - Character.HumanoidRootPart.Position).magnitude < 5 then
T = mouse.Target.Parent.HumanoidRootPart
for i = 1,10 do
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/1.9,0,0)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0.01,-0.05,0.05)
end
local WeldP = Instance.new("Weld")
WeldP.Parent = Staff
WeldP.Part0 = Character.HumanoidRootPart
WeldP.Part1 = T
WeldP.C0 = CFrame.new(0,0,-1) * CFrame.Angles(0,0,0)
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,math.pi/10/2)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(-0.05,-0.05,0)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.05,0,0.05)
WeldC.C0 = WeldC.C0 - Vector3.new(0,0.2,0)
MeshC.Scale = MeshC.Scale - Vector3.new(0.05,-0.01,0.05)
StickC.Reflectance = StickC.Reflectance + 0.1
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0.05,0,0)
WeldA.C0 = WeldA.C0 + Vector3.new(0,0,0.05)
end
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0.1,0)
end
T:BreakJoints()
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0.1,0)
end
wait(0.1)
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,-0.1,0)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(-0.05,0,0)
WeldA.C0 = WeldA.C0 - Vector3.new(0,0,0.05)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0.05,0,0.05)
WeldC.C0 = WeldC.C0 + Vector3.new(0,0.2,0)
MeshC.Scale = MeshC.Scale + Vector3.new(0.05,-0.01,0.05)
StickC.Reflectance = StickC.Reflectance - 0.1
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,-math.pi/10)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/1.9,0,0)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0.01,-0.05,0.05)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,-math.pi/10/2)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(-0.05,-0.05,0)
end
if WeldP then WeldP:Remove() end
end
end
end
end
Flying = false
end
end)

VCZ = 0

Keys = {"z","f","c"}
PGyro = nil
Asin = false
Kni = false

function HRB(H)
if Kni then
H:BreakJoints()
end
end

--[[function onKeyDown(key,mouse)
if Blah == true and Flying == false then
Blah = false]]

setKey('x',
function()
if StaffOn == false then
Flying = true
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,math.pi/5/2)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0.1,0.1,0)
WeldC.C0 = WeldC.C0 - Vector3.new(0,0.4,0)
MeshC.Scale = MeshC.Scale - Vector3.new(0.1,-0.02,0.1)
StickC.Reflectance = StickC.Reflectance + 0.2
end
StickC.Touched:connect(HRB)
Kni = true
for i = 1,8 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/5/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.3,0,0.2)
end
for i = 1,8 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/5/2,0,0)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0.3,0,0.2)
end
Kni = false
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,-math.pi/5/2)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.1,0.1,0)
WeldC.C0 = WeldC.C0 + Vector3.new(0,0.4,0)
MeshC.Scale = MeshC.Scale + Vector3.new(0.1,-0.02,0.1)
StickC.Reflectance = StickC.Reflectance - 0.2
end
Flying = false
end
end)

setKey('v',
function()
if StaffOn == false then
Flying = true
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,math.pi/5/2)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0.1,0.1,0)
WeldC.C0 = WeldC.C0 * CFrame.Angles(math.pi/15,0,0)
WeldB.C0 = WeldB.C0 * CFrame.Angles(-math.pi/15,0,0)
MeshC.Scale = MeshC.Scale - Vector3.new(-0.1,0.02,-0.1)
MeshB.Scale = MeshC.Scale
MeshA.Scale = MeshC.Scale
end
for i = 1,8 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/5/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.3,0,0.2)
end
for i = 1,8 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/5/2,0,0)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0.3,0,0.2)
end
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,-math.pi/5/2)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.1,0.1,0)
MeshC.Scale = MeshC.Scale + Vector3.new(-0.1,0.02,-0.1)
WeldC.C0 = WeldC.C0 * CFrame.Angles(-math.pi/15,0,0)
WeldB.C0 = WeldB.C0 * CFrame.Angles(math.pi/15,0,0)
MeshB.Scale = MeshC.Scale
MeshA.Scale = MeshC.Scale
end
Flying = false
end
end)

setKey('c',
function()
if StaffOn == false then
Flying = true
for i = 1,14 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,-0.05,0.05)
WeldB.C0 = WeldB.C0 + Vector3.new(0,1/14/2,0)
MeshA.Scale = MeshA.Scale - Vector3.new(0,1/14/2,0)
MeshC.Scale = MeshA.Scale
end
for i = 1,8 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2/2,0,0)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0,-0.05/2,0.05/2)
WeldB.C0 = WeldB.C0 * CFrame.Angles(math.pi/8/2,0,0)
WeldB.C0 = WeldB.C0 - Vector3.new(0,0,0.1)
WeldC.C0 = WeldB.C0
MeshC.Scale = MeshB.Scale
end
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0,-0.05,0.05)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,-math.pi/10/2/2)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.05,0,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,0,math.pi/10/2/2)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(-0.05,0,0)
WeldA.C0 = WeldA.C0 + Vector3.new(-0.04,0,-0.01)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,-math.pi/10/2/2,0)
MeshC.Scale = MeshC.Scale - Vector3.new(0.02,0,0.02)
WeldC.C0 = WeldC.C0 + Vector3.new(0,0,-0.1)
end

if mouse.Target ~= nil then
mouse.Target:BreakJoints()
end
for i = 1,3 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2/2,math.pi/10/2/2,0)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0,0.1,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2/2,-math.pi/10/2/2,0)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0,0.1,0)
end
wait()
for i = 1,3 do wait()
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0,0.1,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2/2,math.pi/10/2/2,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0.1,0)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2/2,-math.pi/10/2/2,0)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,math.pi/10/2/2)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0.05,0,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,0,-math.pi/10/2/2)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(-0.05,0,0)
WeldA.C0 = WeldA.C0 - Vector3.new(-0.04,0,-0.01)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,math.pi/10/2/2,0)
MeshC.Scale = MeshC.Scale + Vector3.new(0.02,0,0.02)
WeldC.C0 = WeldC.C0 - Vector3.new(0,0,-0.1)
end
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2,0,0)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0,-0.05,0.05)
end
for i = 1,8 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,-0.05/2,0.05/2)
WeldB.C0 = WeldB.C0 * CFrame.Angles(-math.pi/8/2,0,0)
WeldB.C0 = WeldB.C0 + Vector3.new(0,0,0.1)
WeldC.C0 = WeldB.C0
MeshC.Scale = MeshB.Scale
end
for i = 1,14 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0,-0.05,0.05)
WeldB.C0 = WeldB.C0 - Vector3.new(0,1/14/2,0)
WeldC.C0 = WeldB.C0
MeshA.Scale = MeshA.Scale + Vector3.new(0,1/14/2,0)
MeshC.Scale = MeshA.Scale
end
ArmWeld.C0 = CFrame.new(1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
Flying = false
end
end)

setKey('t',
function()
Flying = true
if StaffOn == true then
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0,-0.05,0.05)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10/2)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,-math.pi/10/2/2)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.05,0,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,0,math.pi/10/2/2)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(-0.05,0,0)
WeldB.C0 = WeldB.C0 - Vector3.new(0,0.2,0)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,math.pi/10/2/2)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0.05,0,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,0,-math.pi/10/2/2)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(-0.05,0,0)
--WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,-math.pi/10/2)
end
for i = 1,10 do wait()
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,-math.pi/10/2/2)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.05,0,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,0,math.pi/10/2/2)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(-0.05,0,0)
--WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10/2)
WeldC.C0 = WeldC.C0 + Vector3.new(0,0.2,0)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,math.pi/10/2/2)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0.05,0,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,0,-math.pi/10/2/2)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(-0.05,0,0)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10/2)
end
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2,0,0)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0,-0.05,0.05)
StickA.Reflectance = StickA.Reflectance + 1/10
StickB.Reflectance = StickA.Reflectance
StickC.Reflectance = StickA.Reflectance
end
WeldD.C0 = CFrame.new(0,1,0) * CFrame.Angles(0,0,0)
StickA.BrickColor = BrickColor.Red()
StickB.BrickColor = StickA.BrickColor
StickC.BrickColor = StickA.BrickColor
Flame.Transparency = 1
WeldD.C0 = CFrame.new(-0.01*12,1,-0.015*3)
MeshD.Scale = Vector3.new(0.1,0,0.1)
for i = 1,12 do wait()
WeldB.C0 = WeldB.C0 + Vector3.new(0.01,0,0.015)
WeldC.C0 = WeldC.C0 + Vector3.new(-0.01,0,0.015)
WeldA.C0 = WeldA.C0 - Vector3.new(0,0.02,0)
MeshB.Scale = MeshB.Scale - Vector3.new(0,0.01,0)
MeshC.Scale = MeshB.Scale
MeshA.Scale = MeshB.Scale
StickA.Reflectance = StickA.Reflectance - 1/12
StickB.Reflectance = StickA.Reflectance
StickC.Reflectance = StickA.Reflectance
end
Flame.Transparency = 0
for i = 1,12 do wait()
MeshD.Scale = MeshD.Scale + Vector3.new(0,2/12,0)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,math.pi/12/2/2,-math.pi/12/2/2)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.05,0,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/12/2,math.pi/10/2/2,math.pi/9/2/2)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(-0.05,-0.05,0.05)
end
for i = 1,6 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,-math.pi/36/2,math.pi/24/2)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(-0.05,-0.05,-0.05*2)
end
print("Down I Go!")
for i = 1,6 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,math.pi/36/2,-math.pi/24/2)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(-0.05,-0.05,-0.05*2)
end
for i = 1,12 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,-math.pi/12/2/2,math.pi/12/2/2)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0.05,0,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/12/2,-math.pi/10/2/2,-math.pi/9/2/2)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(-0.05,-0.05,0.05)
end
ArmWeld.C0 = CFrame.new(1.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
for i = 1,15 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,-0.05,-0.05)
end
wait(0.1)
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0.05*2,0.05*2)
end
----Molotov In Progression

Molotov = Instance.new("Model")
PartA = StickA:Clone()
PartA:BreakJoints()
PartA.CanCollide = true
PartA.Parent = Molotov
PartB = PartA:Clone()
PartB:BreakJoints()
PartB.CanCollide = true
PartB.Parent = Molotov
PartC = PartA:Clone()
PartC:BreakJoints()
PartC.CanCollide = true
PartC.Parent = Molotov
PartD = Flame:Clone()
PartD:BreakJoints()
PartD.CanCollide = true
PartD.Parent = Molotov
Wa = Instance.new("Weld")
Wa.Parent = PartA
Wa.Part0 = PartA
Wa.Part1 = PartB
Wa.C0 = WeldB.C0
Wb = Instance.new("Weld")
Wb.Parent = PartA
Wb.Part0 = PartA
Wb.Part1 = PartC
Wb.C0 = WeldC.C0
Wc = Instance.new("Weld")
Wc.Parent = PartB
Wc.Part0 = PartB
Wc.Part1 = PartD
Wc.C0 = WeldD.C0
G = Instance.new("BodyGyro")
G.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
G.cframe = CFrame.new(PartA.Position,mouse.Hit.p) 
G.Parent = PartA
Vel = Instance.new("BodyVelocity")
Vel.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Vel.velocity = Vector3.new(0,100,0)+G.cframe.lookVector * 50
Vel.Parent = PartA
Molotov.Parent = Staff
StickA.Transparency = 1
StickB.Transparency = 1
StickC.Transparency = 1
Flame.Transparency = 1
wait(1)
EmExplode(PartA,60)
EmExplode(PartB,60)
EmExplode(PartC,60)
EmExplode(PartD,60)
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0.05*2,0.05*2)
end
G:Remove()
Vel:Remove()
Fire.Enabled = false
MeshA.Scale,MeshB.Scale,MeshC.Scale,MeshD.Scale = Vector3.new(0,0,0),Vector3.new(0,0,0),Vector3.new(0,0,0),Vector3.new(0,0,0)
StickA.Transparency = 0
StickB.Transparency = 0
StickC.Transparency = 0
StickA.BrickColor = BrickColor.new("Reddish brown")
StickB.BrickColor = StickA.BrickColor
StickC.BrickColor = StickA.BrickColor
for i = 1,12 do
WeldB.C0 = WeldB.C0 - Vector3.new(0.01,0,0.015)
WeldC.C0 = WeldC.C0 - Vector3.new(-0.01,0,0.015)
WeldA.C0 = WeldA.C0 + Vector3.new(0,0.02,0)
end
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0.05,-0.15)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,-math.pi/10/2)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(-0.05,-0.01,0.03)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,-math.pi/10/2/2/2)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(-0.05,-0.01,0.03)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,math.pi/10/2/2/2)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10/2/2)
MeshA.Scale = MeshA.Scale + Vector3.new(0.1,0.1,0.1)
MeshB.Scale = MeshA.Scale
MeshC.Scale = MeshA.Scale
MeshD.Scale = MeshA.Scale
WeldC.C0 = WeldC.C0 - Vector3.new(0,0.2,0)
WeldB.C0 = WeldB.C0 + Vector3.new(0,0.2,0)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,-0.05,0.05)
end
Flying = false
StaffOn = true
end
end)

setKey('r',
function()
if StaffOn == false then
Flying = true
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,-0.05,0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0,-0.05,0.05)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2,0.1,-0.1)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.05,-0.045,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2,-0.1,0.1)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(-0.05,-0.045,0)
WeldA.C0 = WeldA.C0 - Vector3.new(0,0.005,-0.010)
WeldC.C0 = WeldC.C0 - Vector3.new(0,0.2,0)
WeldB.C0 = WeldB.C0 - Vector3.new(0,0.2,0)
MeshB.Scale = MeshB.Scale - Vector3.new(0.05,0,0.05)
end
for i = 1,10 do wait()
WeldB.C0 = WeldB.C0 - Vector3.new(0,2,0)
end
wait(2)
for i = 1,10 do wait()
WeldB.C0 = WeldB.C0 + Vector3.new(0,2,0)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2,-0.1,0.1)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0.05,-0.045,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2,0.1,-0.1)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(-0.05,-0.045,0)
WeldA.C0 = WeldA.C0 + Vector3.new(0,0.005,-0.010)
WeldC.C0 = WeldC.C0 + Vector3.new(0,0.2,0)
WeldB.C0 = WeldB.C0 + Vector3.new(0,0.2,0)
MeshB.Scale = MeshB.Scale + Vector3.new(0.05,0,0.05)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0,-0.05,0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2,0,0)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0,-0.05,0.05)
end
ArmWeld.C0 = CFrame.new(1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
Flying = false
end)

setKey('e',
function()
PGyro = Instance.new("BodyGyro",Character.HumanoidRootPart)
PGyro.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
PGyro.cframe = Character.HumanoidRootPart.CFrame * CFrame.Angles(0,0,1)
end)
setKey("q",
function()
PGyro = Instance.new("BodyGyro",Character.HumanoidRootPart)
PGyro.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
PGyro.cframe = Character.HumanoidRootPart.CFrame * CFrame.Angles(0,0,-1)
end)

setKey('k',
function()
if Asin then
Asin = false
for i,v in pairs(Assassin:GetChildren()) do
v:Remove()
end
for i,v in pairs(Character:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0
end
end
elseif not Asin then
Asin = true

--for i,v in pairs(Character.Head:GetChildren()) do if v.className == "Decal" then v.Texture = "http://www.roblox.com/asset/?id=9801981" end end
Color=BrickColor.new("Grey")
Color2=BrickColor.new(Color3.new(0,0,0))
part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("White")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1,1.5,1)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["Left Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0.25,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("White")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1,1.5,1)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["Right Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0.25,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Dark orange")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1.05,0.55,1.05)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["Left Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0.75,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Dark orange")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1.05,0.55,1.05)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["Right Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0.75,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1


part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Really black")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1.05,0.4,1.05)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["Left Leg"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,-0.81,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Really black")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1.05,0.4,1.05)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["Right Leg"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,-0.81,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Bright red")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Wedge"
mesh.Scale = Vector3.new(0.95,1.4,0.7)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["Left Leg"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0.15,0.04,-0.05) * CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Bright red")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Wedge"
mesh.Scale = Vector3.new(0.95,1.4,0.7)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["Right Leg"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(-0.15,0.04,-0.05) * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Dark orange")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1.05,0.55,1.05)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["Left Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Dark orange")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1.05,0.55,1.05)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["Right Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Bright red")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1.1,0.4,1.1)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["Right Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Cool yellow")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.98,1,0.98)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["Left Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Cool yellow")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.98,1,0.98)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["Right Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("White")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1,2,1)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["Left Leg"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("White")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1,2,1)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["Right Leg"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("White")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(2,2,1)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["HumanoidRootPart"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Cool yellow")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Head"
mesh.Scale = Vector3.new(1.25,1.25,1.25)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["Head"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("White")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=16952952"
mesh.Scale = Vector3.new(1,1,1)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["Head"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0.3,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Black")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=16952952"
mesh.Scale = Vector3.new(0.95,0.95,0.95)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["Head"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0.3,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Dark orange")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(2.05,0.55,1.05)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["HumanoidRootPart"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,-0.8,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Bright red")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(2.1,0.3,1.1)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["HumanoidRootPart"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,-0.8,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Dark orange")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(2.5,0.5,1.05)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["HumanoidRootPart"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0.1,0.1,0) * CFrame.fromEulerAnglesXYZ(0,0,math.pi/2/2)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Mid gray")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.6,0.6,1.1)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["HumanoidRootPart"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0.1,0.1,0) * CFrame.fromEulerAnglesXYZ(0,0,math.pi/2/2)

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("White")
part.Size = Vector3.new(1,1,1)
part.Parent = Assassin
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.3,0.3,1.15)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = Character["HumanoidRootPart"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0.1,0.1,0) * CFrame.fromEulerAnglesXYZ(0,0,math.pi/2/2)
weld.Parent.Transparency = 1

end
end)

local key = 'f'
setKey(key,function()
if Lighter == false and StaffOn == true then
Keys[key] = true
Lighter = true
Flying = true
for i = 1,10 do wait()
WeldB.C0 = WeldB.C0 - Vector3.new(0,0.1,0)
MeshB.Scale = MeshB.Scale + Vector3.new(0.2,-0.-0.05,0.2)
StickB.Reflectance = StickB.Reflectance + 0.1
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,-0.05,0.025)
WeldA.C0 = WeldA.C0 * CFrame.Angles(-math.pi/10/2/2,0,0)
end
Flying = false
for i,v in pairs(Assassin:GetChildren()) do
if v.BrickColor == BrickColor.new("White") then
v.BrickColor = BrickColor.new("Black")
end
end
while Keyz[key] == true and Lighter == true do
if mouse.Target ~= nil then
PlaceL(mouse.Hit.p)
SpaB.Enabled = true
mouse.Target:BreakJoints()
end
wait()
end
end
end)

setKey('l',
function()
if StaffOn == false then
Flying = true
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,math.pi/10/2)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(-0.05,-0.05,0)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.05,0,0.05)
WeldC.C0 = WeldC.C0 - Vector3.new(0,0.2,0)
MeshC.Scale = MeshC.Scale - Vector3.new(0.05,-0.01,0.05)
StickC.Reflectance = StickC.Reflectance + 0.1
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10)
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0.05,0,0)
WeldA.C0 = WeldA.C0 + Vector3.new(0,0,0.05)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0.1,0.1,0)
end
wait(0.5)
Character:BreakJoints()
end
end)

local key = 'z'
setKey(key,
function()
if Flying == false and StaffOn == true then
Keyz[key] = true 
Flying = true
if VCZ == 0 then
Veloc = Instance.new("BodyVelocity")
Veloc.Parent = StickA
Veloc.velocity = Vector3.new(0,5,0)
Veloc.maxForce = Vector3.new(0,math.huge,0)
elseif VCZ == 1 then
Veloc = Instance.new("BodyPosition")
Veloc.maxForce = Vector3.new(0,math.huge,0)
Veloc.position = Character.HumanoidRootPart.Position + Vector3.new(0,50,0)
Veloc.Parent = Character.HumanoidRootPart
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0,0.075,0.05)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10)
end
while Keyz[key] == true do
for i = 1,10 do wait()
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10)
end
end

elseif Flying == false and StaffOn == false then
Keyz[key] = true 
Flying = true
if VCZ == 0 then
Veloc = Instance.new("BodyVelocity")
Veloc.Parent = Character.HumanoidRootPart
Veloc.velocity = Vector3.new(0,5,0)
Veloc.maxForce = Vector3.new(0,math.huge,0)
elseif VCZ == 1 then
Veloc = Instance.new("BodyPosition")
Veloc.maxForce = Vector3.new(0,math.huge,0)
Veloc.position = Character.HumanoidRootPart.Position + Vector3.new(0,10,0)
Veloc.Parent = Character.HumanoidRootPart
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,-0.05,0.05)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10)
WeldB.C0 = WeldB.C0 + Vector3.new(0,0.2,0)
WeldC.C0 = WeldC.C0 - Vector3.new(0,0.2,0)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0,0.075,0.05)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10)
end
while Keyz[key] == true do
for i = 1,10 do wait()
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10)
end
end
end
end)

setKey({'2','p'},
function()
Flying = true
if StaffOn == false then
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,-0.05,0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0,-0.05,0.05)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10/2)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,-math.pi/10/2/2)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.05,0,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,0,math.pi/10/2/2)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(-0.05,0,0)
WeldA.C0 = WeldA.C0 * CFrame.Angles(-math.pi/10/2/2,0,0)
WeldA.C0 = WeldA.C0 + Vector3.new(0,-0.04,0)
end
for i = 1,20 do wait()
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10)
WeldB.C0 = WeldB.C0 + Vector3.new(0,0.1,0)
WeldC.C0 = WeldC.C0 - Vector3.new(0,0.1,0)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,math.pi/10/2/2)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0.05,0,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,0,-math.pi/10/2/2)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(-0.05,0,0)
WeldA.C0 = WeldA.C0 + Vector3.new(0,0.04,0)
WeldA.C0 = WeldA.C0 * CFrame.Angles(math.pi/10/2/2,0,0)
end
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2,0,0)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0,-0.05,0.05)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,-math.pi/10/2)
end
StaffOn = true
elseif StaffOn == true then
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0,-0.05,0.05)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10/2)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,-math.pi/10/2/2)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.05,0,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,0,math.pi/10/2/2)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(-0.05,0,0)
WeldB.C0 = WeldB.C0 - Vector3.new(0,0.2,0)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,math.pi/10/2/2)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0.05,0,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,0,-math.pi/10/2/2)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(-0.05,0,0)
--WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,-math.pi/10/2)
end
for i = 1,10 do wait()
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,-math.pi/10/2/2)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.05,0,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,0,math.pi/10/2/2)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(-0.05,0,0)
--WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10/2)
WeldC.C0 = WeldC.C0 + Vector3.new(0,0.2,0)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,math.pi/10/2/2)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0.05,0,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,0,-math.pi/10/2/2)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(-0.05,0,0)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10/2)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0,-0.05,0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2,0,0)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0,-0.05,0.05)
end
StaffOn = false
end
Flying = false
end)

setKey('v',
function()
Flying = true
if StaffOn == true then
WeldD.C0 = CFrame.new(0,1,0) * CFrame.Angles(0,0,0)
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0,-0.05,0.05)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,-math.pi/10/2)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,-math.pi/10/2/2)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.05,0,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,0,math.pi/10/2/2)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(-0.05,0,0)
WeldC.C0 = WeldC.C0 + Vector3.new(0,0.2,0)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,math.pi/10/2/2)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0.05,0,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,0,-math.pi/10/2/2)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(-0.05,0,0)
--WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,-math.pi/10/2)
end
for i = 1,10 do wait()
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,-math.pi/10/2/2)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.05,0,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,0,math.pi/10/2/2)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(-0.05,0,0)
--WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10/2)
WeldB.C0 = WeldB.C0 - Vector3.new(0,0.2,0)
end
Flame.Transparency = 0
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,math.pi/10/2/2)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0.05,0,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,0,-math.pi/10/2/2)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(-0.05,0,0)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,-math.pi/10/2)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0,-0.05,0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2,0,0)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0,-0.05,0.05)
end
for i = 1,10 do wait() 
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-0.05,0,0) 
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0.05,-0.1)
WeldA.C0 = WeldA.C0 * CFrame.Angles(-0.1,0,0)
WeldA.C0 = WeldA.C0 - Vector3.new(0,0.05,0)
end
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0,0.2)
end
Fire.Enabled = true
for i = 1,10 do wait() 
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0.05,0,0) 
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0,0.05,-0.1)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0.1,0,0)
WeldA.C0 = WeldA.C0 + Vector3.new(0,0.05,0)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,-0.05,-0.05)
end
for i = 1,15 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,-0.05,-0.05)
end
wait(0.1)
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0.05*2,0.05*2)
end

MeshA.Scale,MeshB.Scale,MeshC.Scale,MeshD.Scale = Vector3.new(0,0,0),Vector3.new(0,0,0),Vector3.new(0,0,0),Vector3.new(0,0,0)
----Molotov In Progression

Molotov = Instance.new("Model")
PartA = StickA:Clone()
PartA:BreakJoints()
PartA.Mesh.Scale = Vector3.new(1,1,1)
PartA.CanCollide = true
PartA.Parent = Molotov
PartB = Flame:Clone()
PartB:BreakJoints()
PartB.Mesh.Scale = Vector3.new(1,1,1)
PartB.Parent = Molotov
WA = Instance.new("Weld")
WA.Parent = PartA
WA.Part0 = PartA
WA.Part1 = PartB
WA.C0 = CFrame.new(0,1,0) * CFrame.Angles(0,0,0)
G = Instance.new("BodyGyro")
G.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
G.cframe = CFrame.new(PartA.Position,mouse.Hit.p) 
G.Parent = PartA
Vel = Instance.new("BodyVelocity")
Vel.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Vel.velocity = Vector3.new(0,100,0)+G.cframe.lookVector * 50
Vel.Parent = PartA
Molotov.Parent = Staff
wait()
EmExplode(PartA,20)
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0.05*2,0.05*2)
end
G:Remove()
Vel:Remove()
--[[coroutine.resume(coroutine.create(function()
wait(10)
Molotov:Remove()
end))]]
----Molotov In Progression
Fire.Enabled = false
wait(1)
Flame.Transparency = 1
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0.05,-0.15)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,-math.pi/10/2)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(-0.05,-0.01,0.03)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,-math.pi/10/2/2/2)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(-0.05,-0.01,0.03)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,math.pi/10/2/2/2)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10/2/2)
MeshA.Scale = MeshA.Scale + Vector3.new(0.1,0.1,0.1)
MeshB.Scale = MeshA.Scale
MeshC.Scale = MeshA.Scale
MeshD.Scale = MeshA.Scale
WeldC.C0 = WeldC.C0 - Vector3.new(0,0.2,0)
WeldB.C0 = WeldB.C0 + Vector3.new(0,0.2,0)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,-0.05,0.05)
end
end
Flying = false
end)

--[[Blah = true
return
end
end]]

--[[function Selected(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png"
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
mouse.KeyUp:connect(function(key) onKeyUp(key, mouse) end) 
mouse.Button1Down:connect(function()Clicked(mouse)end) 
end 

function Deselected(mouse)
end]]

function DeadGuy()
--pcall(function() Character.Head.face:Remove() end)
for i = 1,20 do
for i,v in pairs(Character:GetChildren()) do
if v:IsA("Part") then
v.Anchored = true
end
end
for i,v in pairs(Assassin:GetChildren()) do
if v:IsA("Part") then
v.Anchored = true
end
end
for i,v in pairs(Staff:GetChildren()) do
if v:IsA("Part") then
v.Anchored = true
end
end
for i,v in pairs(Lightning:GetChildren()) do
if v:IsA("Part") then
v.Anchored = true
end
end
end
wait(0.1)
end

--[[Hopper.Selected:connect(Selected)
Hopper.Deselected:connect(Deselected) ]]
Character.Humanoid.Died:connect(DeadGuy)
--[[

for i = 1,20 do wait()
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10)
WeldB.C0 = WeldB.C0 + Vector3.new(0,0.1,0)
WeldC.C0 = WeldC.C0 - Vector3.new(0,0.1,0)
end

]]

ABCDEFG = false

coroutine.resume(coroutine.create(function()
while true do wait()
if ABCDEFG then
if Flying == true then

for i,v in pairs(Staff:GetChildren()) do
if v:IsA("Part") then
a = v:Clone()
a.Anchored = true
a.Locked = true
a.CanCollide = false
a.Parent = ROFLBlade
a.Name = "Part"
a.CFrame = v.CFrame
end
end

end

if Molotov then
for i,v in pairs(Molotov:GetChildren()) do
if Molotov then
if v:IsA("Part") then
a = v:Clone()
a.Anchored = true
a.Locked = true
a.CanCollide = false
a.Parent = ROFLBlade
a.Name = "Part"
a.CFrame = v.CFrame
end
end
end
end

for i,v in pairs(ROFLBlade:GetChildren()) do
if v:IsA("Part") then
if v.Transparency < 1 then
v.Transparency = v.Transparency + 0.1
else
v:Remove()
end
end
end

end
end
end))