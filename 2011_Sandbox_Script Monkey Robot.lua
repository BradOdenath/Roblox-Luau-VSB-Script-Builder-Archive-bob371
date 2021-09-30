-- ring mesh: http://www.roblox.com/asset/?id=3270017

--[[
	Framework: Roblox
	Language: Lua
	Project: Script/ HopperBin Events
	Coders: supergod800
]]--

local Player = owner or game.Players.bob371
local Character = Player.Character

local Keys,downs,lastpressed={},{},{}
local function isKeyDown(key) return downs[tostring(key)] or false end
local function setKey(key,func) Keys[key]=func end
local function timePassed(key)
    local t = tick() return math.max(t - (lastpressed[key] or t),0)
end

local onKeyUp = function(key) 
	Keyzdown[key] = false
	if key == "u" or key == "j" then
		for i = 1,2 do wait()
			Character.RRobot.RMotor.BodyVelocity.velocity = Vector3.new(0,0,0)
		end
	end
end 

local function keyDown(plr,key)
    key = tostring(key)
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

function CreateRobot()
coroutine.resume(coroutine.create(function()
pcall(function() Character.RRobot:Remove() end)
robot = Instance.new("Model")
robot.Name = "RRobot"
robot.Parent = Character

n = Instance.new("Part")
n.Anchored = false
n.Locked = true
n.CanCollide = true
n.formFactor = "Symmetric"
n.Shape = "Ball"
n.Size = Vector3.new(2,2,2)
n.BrickColor = BrickColor.new("Really black")
n.Name = "RMotor"
n.TopSurface = 0
n.BottomSurface = 0
n.Parent = robot
n.CFrame = Character.Torso.CFrame
m = Instance.new("SpecialMesh")
m.MeshType = "FileMesh"
m.Scale = Vector3.new(2,2,2)
m.MeshId = "http://www.roblox.com/asset/?id=3270017"
m.Parent = n
g = Instance.new("BodyGyro")
g.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
g.Parent = n
b = Instance.new("BodyVelocity")
b.maxForce = Vector3.new(math.huge,0,math.huge)
b.velocity = Vector3.new(0,0,0)
b.Parent = n

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(2,2,2)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "FileMesh"
m.Scale = Vector3.new(1.75,1.75,1.5)
m.MeshId = "http://www.roblox.com/asset/?id=3270017"
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

--WheelStart 

wheel = Instance.new("Model")
wheel.Name = "Wheel"
wheel.Parent = robot

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(2,2,2)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = wheel
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Head"
m.Scale = Vector3.new(0.05,0.9,0.05)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(2,2,2)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = wheel
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Head"
m.Scale = Vector3.new(0.05,0.9,0.05)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,3.14/2)

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(2,2,2)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = wheel
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Head"
m.Scale = Vector3.new(0.05,0.9,0.05)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,3.14/2/2)

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(2,2,2)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = wheel
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Head"
m.Scale = Vector3.new(0.05,0.9,0.05)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,-3.14/2/2)

--EndBikeWheelBlaBlaBla

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(2,2,2)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "FileMesh"
m.Scale = Vector3.new(0.15,0.15,1.5)
m.MeshId = "http://www.roblox.com/asset/?id=3270017"
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(2,2,2)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Head"
m.Scale = Vector3.new(0.05,0.5,0.05)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Head"
m.Scale = Vector3.new(0.2,1,0.2)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,-0.4,0.4) * CFrame.fromEulerAnglesXYZ(0,0,0)

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Head"
m.Scale = Vector3.new(0.2,1,0.2)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,-0.4,-0.4) * CFrame.fromEulerAnglesXYZ(0,0,0)

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Sphere"
m.Scale = Vector3.new(0.2,0.2,0.2)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,-0.85,-0.4) * CFrame.fromEulerAnglesXYZ(0,0,0)

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Head"
m.Scale = Vector3.new(0.2,0.2,0.2)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,-0.8,-0.56) * CFrame.fromEulerAnglesXYZ(0.2,0,0)

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Sphere"
m.Scale = Vector3.new(0.2,0.2,0.2)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,-0.85,0.4) * CFrame.fromEulerAnglesXYZ(0,0,0)

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Head"
m.Scale = Vector3.new(0.2,0.2,0.2)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,-0.8,0.56) * CFrame.fromEulerAnglesXYZ(-0.2,0,0)

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Sphere"
m.Scale = Vector3.new(0.2,0.2,0.2)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,-0.728,0.72) * CFrame.fromEulerAnglesXYZ(-0.4,0,0)

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Sphere"
m.Scale = Vector3.new(0.2,0.2,0.2)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,-0.728,-0.72) * CFrame.fromEulerAnglesXYZ(0.4,0,0)

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Head"
m.Scale = Vector3.new(0.18,0.4,0.18)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,-0.8,-0.8) * CFrame.fromEulerAnglesXYZ(0.5,0,0)

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Head"
m.Scale = Vector3.new(0.18,0.4,0.18)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,-0.8,0.8) * CFrame.fromEulerAnglesXYZ(-0.5,0,0)

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Head"
m.Scale = Vector3.new(0.18,0.6,0.18)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,0,-1.225) * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Head"
m.Scale = Vector3.new(0.18,2.5,0.18)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,-2,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really black")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Head"
m.Scale = Vector3.new(0.22,1.35,0.22)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,-2,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Head"
m.Scale = Vector3.new(0.5,2.25,0.5)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,-2.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Sphere"
m.Scale = Vector3.new(0.75,2,0.75)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,-2.85,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

-- [[ * HEAD * ]] ---

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Sphere"
m.Scale = Vector3.new(1.2,1.2,1.2)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,-4.125,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

--Dialog

d = Instance.new("Dialog")
d.InitialPrompt = "Hello"
d.Tone = "Enemy"
d.Parent = p

dd = Instance.new("DialogChoice")
dd.UserDialog = "Who are you?"
dd.ResponseDialog = "I am bob371's Robot."
dd.Parent = d

ddd = Instance.new("DialogChoice")
ddd.UserDialog = "Can I have you for my own? :D"
ddd.ResponseDialog = "No!"
ddd.Parent = dd
dddd = Instance.new("DialogChoice")
dddd.UserDialog = "Can I atleast control you? 3:"
dddd.ResponseDialog = "Sure :D"
dddd.Parent = ddd
ddddd = Instance.new("DialogChoice")
ddddd.UserDialog = "Really? =D"
ddddd.ResponseDialog = "NOPE! =P"
ddddd.Parent = dddd

ddd = Instance.new("DialogChoice")
ddd.UserDialog = "Do you know how to script?"
ddd.ResponseDialog = "Yes, very well."
ddd.Parent = dd
dddd = Instance.new("DialogChoice")
dddd.UserDialog = "Can you make me something? :D"
dddd.ResponseDialog = "Depends, what do you want?"
dddd.Parent = ddd

ddddd = Instance.new("DialogChoice")
ddddd.UserDialog = "A Gun"
ddddd.ResponseDialog = "Ask bob371, if he says hes busy, leave him alone!"
ddddd.Parent = dddd

ddddd = Instance.new("DialogChoice")
ddddd.UserDialog = "A Supersuit"
ddddd.ResponseDialog = "What kind of supersuit? :3"
ddddd.Parent = dddd
dddddd = Instance.new("DialogChoice")
dddddd.UserDialog = "An animal :D"
dddddd.ResponseDialog = "What kind of aniMAL? :3"
dddddd.Parent = ddddd
ddddddd = Instance.new("DialogChoice")
ddddddd.UserDialog = "Kitty Kat :3"
ddddddd.ResponseDialog = "Send bob371 a message asking for the cat script :D"
ddddddd.Parent = dddddd
ddddddd = Instance.new("DialogChoice")
ddddddd.UserDialog = "A Puppy dog :)"
ddddddd.ResponseDialog = "Send bob371 a message asking for the puppy dog script :P"
ddddddd.Parent = dddddd
ddddddd = Instance.new("DialogChoice")
ddddddd.UserDialog = "A Bird :)"
ddddddd.ResponseDialog = "I don't do birds, sorry :P"
ddddddd.Parent = dddddd
ddddddd = Instance.new("DialogChoice")
ddddddd.UserDialog = "A Reptile :o"
ddddddd.ResponseDialog = "I have a crocidile? :D"
ddddddd.Parent = dddddd
dddddddd = Instance.new("DialogChoice")
dddddddd.UserDialog = "Can I Have It? :D"
dddddddd.ResponseDialog = "NOPE! =P"
dddddddd.Parent = dddddd

ddddd = Instance.new("DialogChoice")
ddddd.UserDialog = "A Car"
ddddd.ResponseDialog = "What Color?"
ddddd.Parent = dddd
dddddd = Instance.new("DialogChoice")
dddddd.UserDialog = "Red"
dddddd.ResponseDialog = "Sorry, we are all out of red =P"
dddddd.Parent = ddddd
dddddd = Instance.new("DialogChoice")
dddddd.UserDialog = "Yellow"
dddddd.ResponseDialog = "Sorry, we are all out of yellow =P"
dddddd.Parent = ddddd
dddddd = Instance.new("DialogChoice")
dddddd.UserDialog = "Blue"
dddddd.ResponseDialog = "Sorry, we are all out of blue =P"
dddddd.Parent = ddddd

ddddd = Instance.new("DialogChoice")
ddddd.UserDialog = "Something else."
ddddd.ResponseDialog = "Send bob371 a detailed message of what you want, don't cry if he doesn't make it :|"
ddddd.Parent = dddd


--Dialog

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really black")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Sphere"
m.Scale = Vector3.new(1.2,0.6,1.2)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0.1,-4.145,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

-- [[ * ARM A * ]] --

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Head"
m.Scale = Vector3.new(0.5,2.25/2,0.5)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,-3,0.5) * CFrame.fromEulerAnglesXYZ(0,0,0)

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Head"
m.Scale = Vector3.new(0.475,2.3/2,0.475)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0.625,-2,-0.1) * CFrame.fromEulerAnglesXYZ(0.2,0.2,0.2)

-- [[ * ARM B * ]] --

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Head"
m.Scale = Vector3.new(0.5,2.25/2,0.5)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0,-3,-0.5) * CFrame.fromEulerAnglesXYZ(0,0,0)

p = Instance.new("Part")
p.Anchored = false
p.Locked = true
p.CanCollide = true
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Mid gray")
p.Name = "Wheel"
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = robot
p.CFrame = CFrame.new(0,2,0)
m = Instance.new("SpecialMesh")
m.MeshType = "Head"
m.Scale = Vector3.new(0.475,2.3/2,0.475)
m.Parent = p
w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
w.Part1 = n
w.C0 = CFrame.new(0.625,-2,0.1) * CFrame.fromEulerAnglesXYZ(-0.2,-0.2,0.2)
end))
end

-----------------------

local forwardKey = 'u'
local backwardKey = 'j'
local leftKey = 'h'
local rightKey = 'k'

Keyzdown = {
u = false,
j = false,
k = false,
h = false
}

setKey('f', CreateRobot())

setKey(forwardKey, function()
	Keyzdown[forwardKey] = true 
	while Keyzdown[forwardKey] == true do wait(0.03) 
		for i,v in pairs(wheel:GetChildren()) do
			if v:findFirstChild("Weld") ~= nil then
				if Keyzdown[forwardKey] ~= true then return end
				v.Weld.C0 = v.Weld.C0 * CFrame.Angles(0,0,-math.pi/20)
			end 
		end
		if Keyzdown[forwardKey] ~= true then return end
		Character.RRobot.RMotor.BodyVelocity.velocity = (Character.RRobot.RMotor.BodyGyro.cframe * CFrame.Angles(0,math.pi/2,0)).lookVector * 20
	end
end)

setKey(backwardKey, function()	
	Keyzdown[backwardKey] = true 
	while Keyzdown[backwardKey] == true do wait(0.03) 	
		for i,v in pairs(wheel:GetChildren()) do
			if v:findFirstChild("Weld") ~= nil then
				if Keyzdown[backwardKey] ~= true then return end
				v.Weld.C0 = v.Weld.C0 * CFrame.Angles(0,0,math.pi/20)
			end
		end
		if Keyzdown[backwardKey] ~= true then return end
		Character.RRobot.RMotor.BodyVelocity.velocity = (Character.RRobot.RMotor.BodyGyro.cframe * CFrame.Angles(0,math.pi/2,0)).lookVector * -20
	end 
end)

setKey(leftKey, function()
	Keyzdown[leftKey] = true 
	while Keyzdown[leftKey] == true do wait(0.03) 
		Character.RRobot.RMotor.BodyGyro.cframe = Character.RRobot.RMotor.CFrame * CFrame.fromEulerAnglesXYZ(0,0.314,0)
		if Keyzdown[leftKey] ~= true then return end
	end
end)

setKey(rightKey, function()
	Keyzdown[rightKey] = true 
	while Keyzdown[rightKey] == true do wait(0.03) 
		Character.RRobot.RMotor.BodyGyro.cframe = Character.RRobot.RMotor.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.314,0)
		if Keyzdown[rightKey] ~= true then return end
	end 
end)
