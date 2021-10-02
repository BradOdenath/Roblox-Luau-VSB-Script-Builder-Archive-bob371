--[[_(_Don't_Worry_About_It_)_]]--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Player = owner or game.Players.bob371 or game.Players.LocalPlayer
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

--if key == "f" then
if Lighter == true and Keyz[key] == true then
Keyz[key] = false
Lighter = false
SpaB.Enabled = false
wait(1)
SpaB.Enabled = false
end
--end

end


local function keyDown(plr,key)	
	if Blah == true then
		Blah = false
		key = tostring(key)
		print(key)
		if isKeyDown(key) then 
			downs[key]=false
			onKeyUp(key)
		else
			downs[key],lastpressed[key]=true,tick()
			if Keys[key] then Keys[key]()end
		end
		Blah = true
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
StickA.BrickColor = BrickColor.new("Navy blue")
StickA.Reflectance = 1
StickA.Anchored = false
StickA.Size = Vector3.new(1,1,1)
StickA.TopSurface = 0
StickA.BottomSurface = 0
StickA.Parent = Staff
MeshA = Instance.new("SpecialMesh",StickA)
MeshA.MeshType = "Sphere"
WeldA = Instance.new("Weld")
WeldA.Parent = StickA
WeldA.Part0 = Character["Right Arm"]
WeldA.Part1 = StickA
WeldA.C0 = CFrame.new(0,-1,-0) * CFrame.Angles(-math.pi/2,0,0)
GyroA = Instance.new("BodyGyro",Character.Torso)
GyroA.maxTorque = Vector3.new(0,0,0)
GyroA.P = GyroA.P*10 
VelA = Instance.new("BodyVelocity",Character.Torso)
VelA.P = VelA.P*2 
VelA.maxForce = Vector3.new(0,0,0)
SpaB = Instance.new("Sparkles",StickA)
SpaB.Enabled = false
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
spark(StickA,PA)
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

VCZ = 1

Keyz = {"/","0","f"}
PGyro = nil
Asin = false

local key = 'f'
setKey(key,
function()
if Lighter == false then
Keyz[key] = true
Lighter = true

SpaB.Enabled = true
while Keyz[key] == true and Lighter == true do
--PlaceL(Vector3.new(Character.Torso.Position.x,Character.Torso.Position.y+100,Character.Torso.Position.z))
if mouse.Target ~= nil then
PlaceL(mouse.Hit.p)
mouse.Target:BreakJoints()
end
wait()
end
end
end)

function Molecularelected()
mouse.Icon = "rbxasset://textures\\GunCursor.png"
--[[mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
mouse.KeyUp:connect(function(key) onKeyUp(key, mouse) end) 
mouse.Button1Down:connect(function()Clicked(mouse)end) ]]
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
MeshA.Scale = MeshA.Scale + Vector3.new(0.05,0.05,0.05)
end
end 
--[[
function Deselected(mouse)
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,math.pi/10/2/2)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0.05,0,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0,0,-math.pi/10/2/2)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(-0.05,0,0)
WeldA.C0 = WeldA.C0 * CFrame.Angles(math.pi/10/2/2,0,0)
WeldA.C0 = WeldA.C0 - Vector3.new(0,-0.04,0)
MeshA.Scale = MeshA.Scale - Vector3.new(0.05,0.05,0.05)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0,-0.05,0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2,0,0)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0,-0.05,0.05)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,-math.pi/10/2)
end
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

Molecularelected()