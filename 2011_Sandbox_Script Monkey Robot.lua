-- ring mesh: http://www.roblox.com/asset/?id=3270017

Player = game.Players.bob371
Character = Player.Character

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
ddddddd.ResponseDialog = "Sorry, you cannot have bob371's puppy dog script :P"
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

Keys = {
e = false,
r = false
}

if script.Parent.className ~= "HopperBin" then 
Hopper = Instance.new("HopperBin") 
Hopper.Name = "Robot" 
Hopper.Parent = Player.Backpack
script.Parent = Hopper 
end 

function Clicked(Mouse) 
end 

function UnClicked(Mouse) 
end 

function onKeyDown(key) 

if key == "f" then
CreateRobot()
end

if key == "u" then --Forward
Keys[key] = true 
while Keys[key] == true do wait(0.03) 

for i,v in pairs(wheel:GetChildren()) do
if v:findFirstChild("Weld") ~= nil then
if Keys[key] ~= true then return end
v.Weld.C0 = v.Weld.C0 * CFrame.Angles(0,0,-math.pi/20)
else
end
end

if Keys[key] ~= true then return end

Character.RRobot.RMotor.BodyVelocity.velocity = (Character.RRobot.RMotor.BodyGyro.cframe * CFrame.Angles(0,math.pi/2,0)).lookVector * 20

end 
end 

if key == "j" then --Backward
Keys[key] = true 
while Keys[key] == true do wait(0.03) 

for i,v in pairs(wheel:GetChildren()) do
if v:findFirstChild("Weld") ~= nil then
if Keys[key] ~= true then return end
v.Weld.C0 = v.Weld.C0 * CFrame.Angles(0,0,math.pi/20)
else
end
end

if Keys[key] ~= true then return end

Character.RRobot.RMotor.BodyVelocity.velocity = (Character.RRobot.RMotor.BodyGyro.cframe * CFrame.Angles(0,math.pi/2,0)).lookVector * -20

end 
end 

if key == "k" then --Forward
Keys[key] = true 
while Keys[key] == true do wait(0.03) 
Character.RRobot.RMotor.BodyGyro.cframe = Character.RRobot.RMotor.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.314,0)
if Keys[key] ~= true then return end
end 
end 

if key == "h" then --Forward
Keys[key] = true 
while Keys[key] == true do wait(0.03) 
Character.RRobot.RMotor.BodyGyro.cframe = Character.RRobot.RMotor.CFrame * CFrame.fromEulerAnglesXYZ(0,0.314,0)
if Keys[key] ~= true then return end
end 
end 

end 


function onKeyUp(key) 
Keys[key] = false 
if key == "u" or key == "j" then
for i = 1,2 do wait()
Character.RRobot.RMotor.BodyVelocity.velocity = Vector3.new(0,0,0)
end
end
end 

function Selected(Mouse) 
Mouse.KeyDown:connect(onKeyDown) 
Mouse.KeyUp:connect(onKeyUp) 
Mouse.Button1Down:connect(function()Clicked(Mouse)end) 
Mouse.Button1Up:connect(function()UnClicked(Mouse)end) 
end 

function Deselected(Mouse) 

end 

script.Parent.Selected:connect(Selected) 
script.Parent.Deselected:connect(Deselected) 

-----------------------------------------------
