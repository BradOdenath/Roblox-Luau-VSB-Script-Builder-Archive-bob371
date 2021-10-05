--[[_bob371's_SB_Torch_]]--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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

local function keyDown(plr,key)
    key = tostring(key)
    print(key)
    if isKeyDown(key) then 
        downs[key]=false
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

--[[ * Arm Weld * ]]--

ArmWeld = Instance.new("Weld") 
ArmWeld.Parent = Character["Torso"]
ArmWeld.Part0 = ArmWeld.Parent
ArmWeld.Part1 = Character["Right Arm"]
ArmWeld.C0 = CFrame.new(1.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)

--[[ * Arm Weld * ]]--

ArmWeldR = Instance.new("Weld") 
ArmWeldR.Parent = Character["Torso"]
ArmWeldR.Part0 = ArmWeldR.Parent
ArmWeldR.Part1 = Character["Left Arm"]
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

Stick = Instance.new("Part")
Stick.formFactor = "Custom"
Stick.Locked = true
Stick.CanCollide = false
Stick.BrickColor = BrickColor.new("Reddish brown")
Stick.Anchored = false
Stick.Size = Vector3.new(0.25,2,0.25)
Stick.TopSurface = 0
Stick.BottomSurface = 0
Meshz = Instance.new("CylinderMesh",Stick)
pcall(function() Meshz.Bevel = 0.03 end)

--[[ * StickA * ]]--

StickA = Stick:Clone()
StickA.BrickColor = BrickColor.new("Reddish brown")
StickA.Parent = Staff
MeshA = Instance.new("CylinderMesh",StickA)
pcall(function() MeshA.Bevel = 0.03 end)
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

--[[ * StickB * ]]--

StickB = Stick:Clone()
StickB.BrickColor = BrickColor.new("Reddish brown")
StickB.Parent = Staff
MeshB = Instance.new("CylinderMesh",StickB)
pcall(function() MeshB.Bevel = 0.03 end)
WeldB = Instance.new("Weld")
WeldB.Parent = StickB
WeldB.Part0 = StickA
WeldB.Part1 = StickB
WeldB.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)

--[[ * StickC * ]]--

StickC = Stick:Clone()
StickC.BrickColor = BrickColor.new("Reddishbrown")
StickC.Parent = Staff
MeshC = Instance.new("CylinderMesh",StickC)
pcall(function() MeshC.Bevel = 0.03 end)
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
Flame.TopSurface = 0
Flame.BottomSurface = 0
Flame.Parent = Staff
MeshD = Instance.new("CylinderMesh",Flame)
pcall(function() MeshD.Bevel = 0.03 end)
WeldD = Instance.new("Weld")
WeldD.Parent = Flame
WeldD.Part0 = StickA
WeldD.Part1 = Flame
WeldD.C0 = CFrame.new(0,1,0) * CFrame.Angles(0,0,0)
Fire = Instance.new("Fire",Flame)
Fire.Heat = 1000
Fire.Size = 0.1

function Burner(hit)
if Fire.Enabled == true then
if hit.Parent.Name ~= Player.Name and hit.Parent.Name ~= "SpleenYanks" then 
if hit.Parent:findFirstChild("Humanoid") ~= nil then
for i,v in pairs(hit.Parent:GetChildren()) do
if v.className == "Part" then
pcall(function()
Instance.new("Fire",v)
v.BrickColor = BrickColor.new("Really black")
v:BreakJoints()
end)
end
end
end
end
end
end

--[[ * Tool * ]]--

--[[if script.Parent.Name == Player.Name then
Hopper = Instance.new("HopperBin")
Hopper.Name = "Torch"
Hopper.Parent = Player.Backpack
end]]

Blah = true
StaffOn = false
StaffStuff = false

function Explode(hit)
if hit.Parent.Name ~= Character.Name then
if hit.Parent.Name ~= Staff.Name then
coroutine.resume(coroutine.create(function()
local Ex = Instance.new("Explosion")
Ex.BlastRadius = 20
Ex.BlastPressure = 1000000
Ex.Position = PartA.Position
Ex.Parent = Molotov
Instance.new("ForceField",Character)
wait()
for i,v in pairs(Character:GetChildren()) do
if v.className == "ForceField" then v:Remove() end end
Molotov:Remove()
end))
end
end
end

function EmExplode(a)
coroutine.resume(coroutine.create(function()
while true do wait()
if a.CFrame.y < Character.Torso.CFrame.y then
local Ex = Instance.new("Explosion")
Ex.BlastRadius = 20
Ex.BlastPressure = 1000000
Ex.Position = a.Position
Ex.Parent = Molotov
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
if Blah == true then
Blah = false

if StaffOn == false then
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
PartA = Stick:Clone()
PartA:BreakJoints()
PartA.Mesh.Scale = Vector3.new(1,1,1)
PartA.CanCollide = false
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
PartA.Touched:connect(Explode)
PartB.Touched:connect(Explode)
EmExplode(PartA)
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
for i = 1,5 do wait()
MeshA.Scale = MeshA.Scale + Vector3.new(0.2,0.2,0.2)
MeshB.Scale = MeshA.Scale
MeshC.Scale = MeshA.Scale
MeshD.Scale = MeshA.Scale
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,-0.05,-0.05)
end
for i = 1,10 do wait() 
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-0.2,0,0) 
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0.1,-0.1)
WeldA.C0 = WeldA.C0 * CFrame.Angles(-0.1,0,0)
WeldA.C0 = WeldA.C0 - Vector3.new(0,0.05,0)
end
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0,0.2)
end
Fire.Enabled = true
for i = 1,10 do wait()
WeldA.C0 = WeldA.C0 + Vector3.new(0,0.05,0)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0.1,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,-0.1,0)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0.2,0,0) 
end
Fire.Enabled = true
StaffOn = false
end

Blah = true
end
end)


function onKeyDown(key)
if Blah == true then
Blah = false

if key == [[]] then
if StaffOn == true then
for i = 1,10 do wait() 
Flame.Transparency = Flame.Transparency - 0.1
MeshD.Scale = MeshD.Scale + Vector3.new(0.2,0.2,0.2)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-0.2,0,0) 
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0.1,-0.1)
WeldA.C0 = WeldA.C0 * CFrame.Angles(-0.1,0,0)
WeldA.C0 = WeldA.C0 - Vector3.new(0,-0.15,-0.15)
end
Flame.Transparency = 0
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0,0.2)
end
Fire.Enabled = true
for i = 1,10 do wait()
WeldA.C0 = WeldA.C0 + Vector3.new(0,-0.15,-0.15)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0.1,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,-0.1,0)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0.2,0,0) 
end
for i = 1,10 do wait()
WeldA.C0 = WeldA.C0 + Vector3.new(0.03,-0.01,-0.01)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,-0.15)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.05,-0.1,0)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0.2,0,-0.04) 
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0,-0.07,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0.3,0,0.05) 
end
wait(1)
Exp = Instance.new("Explosion")
Exp.BlastRadius = 20
Exp.BlastPressure = 1000000
Exp.Position = Flame.Position
--Instance.new("ForceField",Character)
Character.Torso.Anchored = true
Exp.Parent = Staff
wait(1)
Character.Torso.Anchored = false
Fire.Enabled = false
for i,v in pairs(Character:GetChildren()) do
if v.className == "ForceField" then v:Remove() end end
for i = 1,10 do wait()
Flame.Transparency = Flame.Transparency + 0.1
MeshD.Scale = MeshD.Scale - Vector3.new(0.2,0.2,0.2)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-0.3,0,-0.05) 
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0,0.07,0)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-0.2,0,0.04) 
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(-0.05,0.1,0)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,0.15)
WeldA.C0 = WeldA.C0 + Vector3.new(-0.03,0.01,0.01)
end
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
ArmWeld.C0 = CFrame.new(1.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)
end
end

if key == "f" then
if StaffOn == true then
for i = 1,10 do wait()
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10/2)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2,0,0)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0,-0.05,0.05)
end
for i = 1,15 do wait()
WeldA.C0 = WeldA.C0 * CFrame.new(0,0.1,0)
end
Character.Humanoid.WalkSpeed = 0
wait()
Character.Humanoid.Jump = true
VelA.velocity = Vector3.new(0,72.5/8,0)+Character.Torso.CFrame.lookVector*15 
VelA.maxForce = Vector3.new(10000,10000,10000)*999 
GyroA.maxTorque = Vector3.new(100000,100000,100000)*999 
GyroA.cframe = Character.Torso.CFrame
for i = 1,32 do 
GyroA.cframe = GyroA.cframe*CFrame.Angles(math.pi/-16,0,0) 
wait() 
end
VelA.velocity = Vector3.new(0,-72.5,0)+Character.Torso.CFrame.lookVector*10 
VelA.maxForce = Vector3.new(0,0,0)
wait(2)
GyroA.maxTorque = Vector3.new(0,0,0)
Character.Humanoid.WalkSpeed = 16
for i = 1,15 do wait()
WeldA.C0 = WeldA.C0 * CFrame.new(0,-0.1,0)
end
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0,-0.05,0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2,0,0)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,-math.pi/10/2)
end
end
end

if key == "p" then
if StaffOn == false then
for i = 1,20 do wait()
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10)
WeldB.C0 = WeldB.C0 + Vector3.new(0,0.1,0)
WeldC.C0 = WeldC.C0 - Vector3.new(0,0.1,0)
WeldD.C0 = WeldD.C0 + Vector3.new(0,0.1,0)
Flame.Transparency = Flame.Transparency + 0.05
end
Hopper.Name = "Staff"
Fire.Enabled = false
StaffOn = true
elseif StaffOn == true and StaffStuff == false then
for i = 1,20 do wait()
--WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0,math.pi/10)
WeldB.C0 = WeldB.C0 - Vector3.new(0,0.1,0)
WeldC.C0 = WeldC.C0 + Vector3.new(0,0.1,0)
WeldD.C0 = WeldD.C0 - Vector3.new(0,0.1,0)
Flame.Transparency = Flame.Transparency - 0.05
end
wait()
Hopper.Name = "Torch"
for i = 1,10 do wait() 
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-0.2,0,0) 
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0.1,-0.1)
WeldA.C0 = WeldA.C0 * CFrame.Angles(-0.1,0,0)
WeldA.C0 = WeldA.C0 - Vector3.new(0,0.05,0)
end
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0,0.2)
end
Fire.Enabled = true
for i = 1,10 do wait()
WeldA.C0 = WeldA.C0 + Vector3.new(0,0.05,0)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0.1,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,-0.1,0)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0.2,0,0) 
end
Fire.Enabled = true
StaffOn = false
end
end

Blah = true
return
end
end

--[[function Selected(mouse) 
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.KeyDown:connect(onKeyDown)
	mouse.Button1Down:connect(function()Clicked(mouse)end) 
end 

function Deselected(mouse)
end

Hopper.Selected:connect(Selected)
Hopper.Deselected:connect(Deselected) ]]
Flame.Touched:connect(Burner)