-- v.Character.AlternateBody.PlugIn

if script.Parent.className ~= "Model" then

Y = 13.5

Model0 = Instance.new("Script")
Model0.Name = "Bobazor"
Model0.Parent = game.Workspace

Model1 = Instance.new("Model")
Model1.Name = "Model1"
Model1.Parent = Model0

Model5 = Instance.new("Model")
Model5.Name = "Model5"
Model5.Parent = Model0

Model6 = Instance.new("Model")
Model6.Name = "Model6"
Model6.Parent = Model0

Model7 = Instance.new("Model")
Model7.Name = "Model7"
Model7.Parent = Model0

Model8 = Instance.new("Model")
Model8.Name = "Model8"
Model8.Parent = Model0

Model9 = Instance.new("Model")
Model9.Name = "Model9"
Model9.Parent = Model0

Model10 = Instance.new("Model")
Model10.Name = "Model10"
Model10.Parent = Model0

Model11 = Instance.new("Model")
Model11.Name = "Model11"
Model11.Parent = Model0

Part1 = Instance.new("Part")
Part1.BrickColor = BrickColor.new("Navy blue")
Part1.Anchored = true
Part1.Locked = true
Part1.TopSurface = 0
Part1.Transparency = 0
Part1.BottomSurface = 0
Part1.Size = Vector3.new(83,3,83)
Part1.Parent = Model1
Part1.Name = "Base"
Part1.CFrame = CFrame.new(0,Y-13,0)
Mesh1 = Instance.new("CylinderMesh")
Mesh1.Parent = Part1

Part3 = Instance.new("Part")
Part3.BrickColor = BrickColor.new("Dark stone grey")
Part3.Anchored = true
Part3.Locked = true
Part3.TopSurface = 0
Part3.BottomSurface = 0
Part3.Name = "Base"
Part3.Size = Vector3.new(84,1,84)
Part3.Parent = Model1
Part3.CFrame = CFrame.new(-0.5,4+Y,0)
Mesh3 = Instance.new("CylinderMesh")
Mesh3.Parent = Part3

Part3 = Instance.new("Part")
Part3.BrickColor = BrickColor.new("Really black")
Part3.Anchored = true
Part3.Locked = true
Part3.TopSurface = 0
Part3.BottomSurface = 0
Part3.Name = "Base"
Part3.Size = Vector3.new(34,4,11)
Part3.Parent = Model1
Part3.CFrame = CFrame.new(-0.75,Y-13.25,32.55)
Mesh3 = Instance.new("SpecialMesh")
Mesh3.Parent = Part3
Mesh3.MeshType = "Brick"
Mesh3.Scale = Vector3.new(1,0.95,1)

Partb = Instance.new("Part")
Partb.BrickColor = BrickColor.new("Dark stone grey")
Partb.Anchored = true
Partb.Locked = true
Partb.TopSurface = 0
Partb.BottomSurface = 0
Partb.Reflectance = 0.1
Partb.Transparency = 0.5
Partb.Name = "Base"
Partb.Size = Vector3.new(5,5,5)
Partb.Parent = Model10
Partb.CFrame = CFrame.new(0,Y-9,0)
Meshb = Instance.new("CylinderMesh")
Meshb.Parent = Partb
Sparb = Instance.new("Sparkles")
Sparb.Color = Color3.new(205,0,0)
Sparb.Enabled = true
Sparb.Parent = Partb

--  6,Y-10,37.5

--[[Partbz = Instance.new("Part")
Partbz.Color = Color3.new(0,0,205)
Partbz.Anchored = true
Partbz.Locked = true
Partbz.TopSurface = 0
Partbz.BottomSurface = 0
Partbz.Reflectance = 0.1
Partbz.Transparency = 0.5
Partbz.Name = "Base"
Partbz.Size = Vector3.new(5,1,5)
Partbz.Parent = Model10
Partbz.CFrame = CFrame.new(0,Y-17.5,0)
Meshbz = Instance.new("CylinderMesh")
Meshbz.Parent = Partbz
Meshbz.Scale = Vector3.new(1,Y,1)
Meshbz.Offset = Vector3.new(0,Y*0.33,0)
Sparbz = Instance.new("Sparkles")
Sparbz.Color = Color3.new(205,0,0)
Sparbz.Enabled = true
Sparbz.Parent = Partbz]]

Partz = Instance.new("SpawnLocation")
Partz.BrickColor = BrickColor.Green()
Partz.Anchored = true
Partz.CanCollide = false
Partz.Locked = true
Partz.Name = "Base"
Partz.Transparency = 1
Partz.BottomSurface = 0
Partz.Size = Vector3.new(10,1,10)
Partz.Parent = Model1
Partz.CFrame = CFrame.new(0,95,0)

--[[Parts = Instance.new("Part")
Parts.BrickColor = BrickColor.new("Dark stone grey")
Parts.Anchored = true
Parts.Locked = true
Parts.Name = "Base"
Parts.TopSurface = 0
Parts.BottomSurface = 0
Parts.Size = Vector3.new(80,1,80)
Parts.Parent = Model1
Parts.CFrame = CFrame.new(0,4.5+Y,0)
Meshs = Instance.new("SpecialMesh")
Meshs.MeshType = "Sphere"
Meshs.Scale = Vector3.new(1,4,1)
Meshs.Parent = Parts]]

Parts = Instance.new("Part")
Parts.BrickColor = BrickColor.new("Really red")
Parts.Anchored = true
Parts.Locked = true
Parts.Name = "Torso"
Parts.formFactor = "Symmetric"
Parts.TopSurface = 0
Parts.BottomSurface = 0
Parts.Reflectance = 0.1
Parts.Size = Vector3.new(2,2,2)
Parts.Parent = Model10
Parts.CFrame = CFrame.new(0,Y-8.8,0)
Meshs = Instance.new("SpecialMesh")
Meshs.MeshType = "Sphere"
Meshs.Scale = Vector3.new(1,1,1)
Meshs.Parent = Parts
Human = Instance.new("Humanoid")
Human.Parent = Model10

Part7 = Instance.new("Part")
Part7.Locked = true
Part7.BrickColor = BrickColor.new("Really black")
Part7.Anchored = true
Part7.CanCollide = true
Part7.Name = "Base"
Part7.TopSurface = 0
Part7.BottomSurface = 0
Part7.Size = Vector3.new(3,20,4)
Part7.CFrame = CFrame.new(0,-5+Y,40)

Part6 = Instance.new("Part")
Part6.Locked = true
Part6.BrickColor = BrickColor.new("Really black")
Part6.Anchored = true
Part6.CanCollide = true
Part6.Name = "Base"
Part6.TopSurface = 0
Part6.BottomSurface = 0
Part6.Size = Vector3.new(20,4,20)
Part6.CFrame = CFrame.new(0,Y-13,0)

Partd = Instance.new("Part")
Partd.Locked = true
Partd.BrickColor = BrickColor.new("Really black")
Partd.Anchored = true
Partd.CanCollide = true
Partd.Name = "Base"
Partd.TopSurface = 0
Partd.BottomSurface = 0
Partd.Size = Vector3.new(6,10,1)
Partd.Parent = Model1
Partd.CFrame = CFrame.new(0,Y,0)

Partd = Instance.new("Part")
Partd.Locked = true
Partd.BrickColor = BrickColor.new("Really black")
Partd.Anchored = true
Partd.CanCollide = true
Partd.Name = "Base"
Partd.TopSurface = 0
Partd.BottomSurface = 0
Partd.Size = Vector3.new(10,4,40)
Partd.Parent = Model1
Partd.CFrame = CFrame.new(0,Y-13.25,-20)

Partd = Instance.new("Part")
Partd.Locked = true
Partd.BrickColor = BrickColor.new("Really black")
Partd.Anchored = true
Partd.CanCollide = true
Partd.Name = "Base"
Partd.TopSurface = 0
Partd.BottomSurface = 0
Partd.Size = Vector3.new(11,5,11)
Partd.Parent = Model1
Partd.CFrame = CFrame.new(0,Y-13.25,-38)
Instance.new("CylinderMesh").Parent = Partd

Partd = Instance.new("Part")
Partd.Locked = true
Partd.BrickColor = BrickColor.new("Really black")
Partd.Anchored = true
Partd.CanCollide = true
Partd.Name = "Base"
Partd.TopSurface = 0
Partd.BottomSurface = 0
Partd.Size = Vector3.new(11,1.2,11)
Partd.Parent = Model1
Partd.CFrame = CFrame.new(0,Y+3.4,-38)
Instance.new("CylinderMesh").Parent = Partd

Partc = Instance.new("Part")
Partc.Locked = true
Partc.BrickColor = BrickColor.new("Navy blue")
Partc.Anchored = true
Partc.CanCollide = false
Partc.Name = "Base"
Partc.Transparency = 0.5
Partc.TopSurface = 0
Partc.BottomSurface = 0
Partc.Size = Vector3.new(10,20,10)
Partc.Parent = Model1
Partc.CFrame = CFrame.new(0,Y-6.5,-38)
Instance.new("CylinderMesh").Parent = Partc

Partd = Instance.new("Part")
Partd.Locked = true
Partd.BrickColor = BrickColor.new("Really black")
Partd.Anchored = true
Partd.CanCollide = true
Partd.Name = "Base"
Partd.TopSurface = 0
Partd.BottomSurface = 0
Partd.Size = Vector3.new(37,20,1)
Partd.Parent = Model1
Partd.CFrame = CFrame.new(21,Y-5,0)

Partd = Instance.new("Part")
Partd.Locked = true
Partd.BrickColor = BrickColor.new("Really black")
Partd.Anchored = true
Partd.CanCollide = true
Partd.Name = "Base"
Partd.TopSurface = 0
Partd.BottomSurface = 0
Partd.Size = Vector3.new(37,20,1)
Partd.Parent = Model1
Partd.CFrame = CFrame.new(-21,Y-5,0)

Partd = Instance.new("Part")
Partd.Locked = true
Partd.BrickColor = BrickColor.new("Really black")
Partd.Anchored = true
Partd.CanCollide = false
Partd.Name = "Base"
Partd.TopSurface = 0
Partd.BottomSurface = 0
Partd.Size = Vector3.new(6,11,1)
Partd.Parent = Model1
Partd.CFrame = CFrame.new(0,Y-1,0)

for i = 1,12 do
Part2 = Part6:Clone()
Part2.Parent = Model11
Part6.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,1,0)
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,1,0)
Part6.CFrame = Part2.CFrame
wait()
end

Part6.BrickColor = BrickColor.new("Really red")
Part6.Size = Vector3.new(4,4,4)
Part6.CFrame = CFrame.new(0,Y-12.5,0)

for i = 1,12 do
Part2 = Part6:Clone()
Part2.Parent = Model9
Part6.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,1,0)
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,1,0)
Part6.CFrame = Part2.CFrame
wait()
end

Part6.BrickColor = BrickColor.new("Really red")
Part6.formFactor = "Plate"
Part6.Size = Vector3.new(4,0.4,4)
Part6.CFrame = CFrame.new(0,Y-6.5,0)

for i = 1,12 do
Part2 = Part6:Clone()
Part2.Parent = Model10
Part6.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,1,0)
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,1,0)
Part6.CFrame = Part2.CFrame
wait()
end

for i = 1,240 do
Part2 = Part7:Clone()
Part2.Parent = Model1
Part7.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.025,0)
Part7.CFrame = Part2.CFrame * CFrame.new(1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.025,0)
Part2.CFrame = Part2.CFrame * CFrame.new(1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part7.CFrame = Part2.CFrame
wait()
end

Part7.Size = Vector3.new(2,19,1)
Part7.BrickColor = BrickColor.new("Dark stone grey")

for i = 1,6 do
Part2 = Part7:Clone()
Part2.Parent = Model5
Part7.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.025,0)
Part7.CFrame = Part2.CFrame * CFrame.new(1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.025,0)
Part2.CFrame = Part2.CFrame * CFrame.new(1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part7.CFrame = Part2.CFrame
wait()
end

for i = 1,5 do
Part2 = Part7:Clone()
Part2.Parent = Model6
Part7.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.025,0)
Part7.CFrame = Part2.CFrame * CFrame.new(1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.025,0)
Part2.CFrame = Part2.CFrame * CFrame.new(1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part7.CFrame = Part2.CFrame
wait()
end

Part7.BrickColor = BrickColor.new("Really black")
Part7.Size = Vector3.new(3,3,4)

for i = 1,11 do
Part2 = Part7:Clone()
Part2.Parent = Model1
Part7.CFrame = Part2.CFrame * CFrame.new(-1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part7.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.025,0)
Part2.CFrame = Part2.CFrame * CFrame.new(-1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.025,0)
Part2.CFrame = Part2.CFrame + Vector3.new(0,8.5,0)
Part7.CFrame = Part2.CFrame
Part7.CFrame = Part7.CFrame - Vector3.new(0,8.5,0)
wait()
end

Part7.Size = Vector3.new(3,19,3)

for i = 1,11 do
Part2 = Part7:Clone()
Part2.Parent = Model7
Part7.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.025,0)
Part7.CFrame = Part2.CFrame * CFrame.new(1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.025,0)
Part2.CFrame = Part2.CFrame * CFrame.new(1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part7.CFrame = Part2.CFrame
wait()
end

Part7.Size = Vector3.new(3,4,4)

for i = 1,11 do
Part2 = Part7:Clone()
Part2.Parent = Model1
Part7.CFrame = Part2.CFrame * CFrame.new(-1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part7.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.025,0)
Part2.CFrame = Part2.CFrame * CFrame.new(-1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.025,0)
Part2.CFrame = Part2.CFrame - Vector3.new(0,8.4,0)
Part7.CFrame = Part2.CFrame
Part7.CFrame = Part7.CFrame + Vector3.new(0,8.4,0)
wait()
end

Buttonz = Instance.new("Part")
Buttonz.formFactor = "Symmetric"
Buttonz.Name = "Base"
Buttonz.Anchored = true
Buttonz.Locked = true
Buttonz.CanCollide = true
Buttonz.BrickColor = BrickColor.new("Really red")
Buttonz.Size = Vector3.new(2,2,2)
Buttonz.Shape = "Ball"
Buttonz.TopSurface = 0
Buttonz.BottomSurface = 0
Buttonz.Parent = Model1
Buttonz.CFrame = CFrame.new(2,Y-10,38)

Buttons = Instance.new("Part")
Buttons.formFactor = "Symmetric"
Buttons.Anchored = true
Buttons.Locked = true
Buttons.CanCollide = true
Buttons.Name = "Base"
Buttons.Transparency = 0.75
Buttons.BrickColor = BrickColor.new("Really red")
Buttons.Size = Vector3.new(3,3,3)
Buttons.Shape = "Ball"
Buttons.TopSurface = 0
Buttons.BottomSurface = 0
Buttons.Parent = Model1
Buttons.CFrame = CFrame.new(2,Y-10,38)

Buttonn = Instance.new("Part")
Buttonn.formFactor = "Symmetric"
Buttonn.Name = "Base"
Buttonn.Anchored = true
Buttonn.Locked = true
Buttonn.CanCollide = true
Buttonn.BrickColor = BrickColor.new("Really red")
Buttonn.Size = Vector3.new(2,2,2)
Buttonn.Shape = "Ball"
Buttonn.TopSurface = 0
Buttonn.BottomSurface = 0
Buttonn.Parent = Model1
Buttonn.CFrame = CFrame.new(2,Y-10,41.75)

Buttonv = Instance.new("Part")
Buttonv.formFactor = "Symmetric"
Buttonv.Anchored = true
Buttonv.Locked = true
Buttonv.CanCollide = true
Buttonv.Name = "Base"
Buttonv.Transparency = 0.75
Buttonv.BrickColor = BrickColor.new("Really red")
Buttonv.Size = Vector3.new(3,3,3)
Buttonv.Shape = "Ball"
Buttonv.TopSurface = 0
Buttonv.BottomSurface = 0
Buttonv.Parent = Model1
Buttonv.CFrame = CFrame.new(2,Y-10,41.75)

Buttona = Instance.new("Part")
Buttona.formFactor = "Symmetric"
Buttona.Anchored = true
Buttona.Locked = true
Buttona.CanCollide = true
Buttona.Name = "Base"
Buttona.BrickColor = BrickColor.new("Really red")
Buttona.Size = Vector3.new(2,2,2)
Buttona.Shape = "Ball"
Buttona.TopSurface = 0
Buttona.BottomSurface = 0
Buttona.Parent = Model1
Buttona.CFrame = CFrame.new(6,Y-10,37.5)

Buttonb = Instance.new("Part")
Buttonb.formFactor = "Symmetric"
Buttonb.Anchored = true
Buttonb.Locked = true
Buttonb.CanCollide = true
Buttonb.Name = "Base"
Buttonb.Transparency = 0.75
Buttonb.BrickColor = BrickColor.new("Really red")
Buttonb.Size = Vector3.new(3,3,3)
Buttonb.Shape = "Ball"
Buttonb.TopSurface = 0
Buttonb.BottomSurface = 0
Buttonb.Parent = Model1
Buttonb.CFrame = CFrame.new(6,Y-10,37.5)

Buttonh = Instance.new("Part")
Buttonh.formFactor = "Symmetric"
Buttonh.Anchored = true
Buttonh.Locked = true
Buttonh.CanCollide = true
Buttonh.Name = "Base"
Buttonh.BrickColor = BrickColor.new("Really red")
Buttonh.Size = Vector3.new(2,2,2)
Buttonh.Shape = "Ball"
Buttonh.TopSurface = 0
Buttonh.BottomSurface = 0
Buttonh.Parent = Model1
Buttonh.CFrame = CFrame.new(10,Y-10,36.5)

Buttong = Instance.new("Part")
Buttong.formFactor = "Symmetric"
Buttong.Anchored = true
Buttong.Locked = true
Buttong.CanCollide = true
Buttong.Name = "Base"
Buttong.Transparency = 0.75
Buttong.BrickColor = BrickColor.new("Really red")
Buttong.Size = Vector3.new(3,3,3)
Buttong.Shape = "Ball"
Buttong.TopSurface = 0
Buttong.BottomSurface = 0
Buttong.Parent = Model1
Buttong.CFrame = CFrame.new(10,Y-10,36.5)

Buttonj = Instance.new("Part")
Buttonj.formFactor = "Symmetric"
Buttonj.Anchored = true
Buttonj.Locked = true
Buttonj.CanCollide = true
Buttonj.Name = "Base"
Buttonj.BrickColor = BrickColor.new("Lime green")
Buttonj.Size = Vector3.new(2,2,2)
Buttonj.Shape = "Ball"
Buttonj.TopSurface = 0
Buttonj.BottomSurface = 0
Buttonj.Parent = Model1
Buttonj.CFrame = CFrame.new(-11.5,Y-10,36.5)

Buttont = Instance.new("Part")
Buttont.formFactor = "Symmetric"
Buttont.Anchored = true
Buttont.Locked = true
Buttont.CanCollide = true
Buttont.Name = "Base"
Buttont.Transparency = 0.75
Buttont.BrickColor = BrickColor.new("Lime green")
Buttont.Size = Vector3.new(3,3,3)
Buttont.Shape = "Ball"
Buttont.TopSurface = 0
Buttont.BottomSurface = 0
Buttont.Parent = Model1
Buttont.CFrame = CFrame.new(-11.5,Y-10,36.5)

Buttonl = Instance.new("Part")
Buttonl.formFactor = "Symmetric"
Buttonl.Anchored = true
Buttonl.Locked = true
Buttonl.CanCollide = true
Buttonl.Name = "Base"
Buttonl.BrickColor = BrickColor.new("Lime green")
Buttonl.Size = Vector3.new(2,2,2)
Buttonl.Shape = "Ball"
Buttonl.TopSurface = 0
Buttonl.BottomSurface = 0
Buttonl.Parent = Model1
Buttonl.CFrame = CFrame.new(-15.5,Y-10,35)

Buttonm = Instance.new("Part")
Buttonm.formFactor = "Symmetric"
Buttonm.Anchored = true
Buttonm.Locked = true
Buttonm.CanCollide = true
Buttonm.Name = "Base"
Buttonm.Transparency = 0.75
Buttonm.BrickColor = BrickColor.new("Lime green")
Buttonm.Size = Vector3.new(3,3,3)
Buttonm.Shape = "Ball"
Buttonm.TopSurface = 0
Buttonm.BottomSurface = 0
Buttonm.Parent = Model1
Buttonm.CFrame = CFrame.new(-15.5,Y-10,35)

Buttonx = Instance.new("Part")
Buttonx.formFactor = "Symmetric"
Buttonx.Anchored = true
Buttonx.Locked = true
Buttonx.CanCollide = true
Buttonx.Name = "Base"
Buttonx.BrickColor = BrickColor.new("Really red")
Buttonx.Size = Vector3.new(2,2,2)
Buttonx.Shape = "Ball"
Buttonx.TopSurface = 0
Buttonx.BottomSurface = 0
Buttonx.Parent = Model1
Buttonx.CFrame = CFrame.new(14,Y-10,35)

Buttonc = Instance.new("Part")
Buttonc.formFactor = "Symmetric"
Buttonc.Anchored = true
Buttonc.Locked = true
Buttonc.CanCollide = true
Buttonc.Name = "Base"
Buttonc.Transparency = 0.75
Buttonc.BrickColor = BrickColor.new("Really red")
Buttonc.Size = Vector3.new(3,3,3)
Buttonc.Shape = "Ball"
Buttonc.TopSurface = 0
Buttonc.BottomSurface = 0
Buttonc.Parent = Model1
Buttonc.CFrame = CFrame.new(14,Y-10,35)

Buttono = Instance.new("Part")
Buttono.formFactor = "Symmetric"
Buttono.Anchored = true
Buttono.Locked = true
Buttono.CanCollide = true
Buttono.Name = "Base"
Buttono.BrickColor = BrickColor.new("Really red")
Buttono.Size = Vector3.new(1,1,1)
Buttono.Shape = "Ball"
Buttono.TopSurface = 0
Buttono.BottomSurface = 0
Buttono.Parent = Model1
Buttono.CFrame = CFrame.new(0,Y-3,-0.5)
Clickero = Instance.new("ClickDetector")
Clickero.Parent = Buttono

Buttoni = Instance.new("Part")
Buttoni.formFactor = "Symmetric"
Buttoni.Anchored = true
Buttoni.Locked = true
Buttoni.CanCollide = true
Buttoni.Name = "Base"
Buttoni.Transparency = 0.75
Buttoni.BrickColor = BrickColor.new("Really red")
Buttoni.Size = Vector3.new(2,2,2)
Buttoni.Shape = "Ball"
Buttoni.TopSurface = 0
Buttoni.BottomSurface = 0
Buttoni.Parent = Model1
Buttoni.CFrame = CFrame.new(0,Y-3,-0.5)
Clickeri = Instance.new("ClickDetector")
Clickeri.Parent = Buttoni

script.Parent = Model1

end

function Closea()
for i = 1,8 do
for i,v in pairs(script.Parent.Parent.Model6:GetChildren()) do
if v.className == "Part" then
v.CFrame = v.CFrame * CFrame.new(-.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
v.CFrame = v.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.05,0)
end
end
for i,v in pairs(script.Parent.Parent.Model5:GetChildren()) do
if v.className == "Part" then
v.CFrame = v.CFrame * CFrame.new(.59, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
v.CFrame = v.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
end
end
wait()
end
end

function Opena()
for i = 1,8 do
for i,v in pairs(script.Parent.Parent.Model6:GetChildren()) do
if v.className == "Part" then
v.CFrame = v.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
v.CFrame = v.CFrame * CFrame.new(.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
end
for i,v in pairs(script.Parent.Parent.Model5:GetChildren()) do
if v.className == "Part" then
v.CFrame = v.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.05,0)
v.CFrame = v.CFrame * CFrame.new(-.59, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
end
wait()
end
end

function Openb()
Buttonz.BrickColor = BrickColor.new("Lime green")
Buttons.BrickColor = BrickColor.new("Lime green")
Buttonv.BrickColor = BrickColor.new("Lime green")
Buttonn.BrickColor = BrickColor.new("Lime green")
for i = 1,11 do
for i,v in pairs(script.Parent.Parent.Model7:GetChildren()) do
if v.className == "Part" then
v.CFrame = v.CFrame * CFrame.fromEulerAnglesXYZ(0,0.025,0)
v.CFrame = v.CFrame * CFrame.new(1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
end
wait()
end
end

function Closeb()
Buttonz.BrickColor = BrickColor.new("Really red")
Buttons.BrickColor = BrickColor.new("Really red")
Buttonv.BrickColor = BrickColor.new("Really red")
Buttonn.BrickColor = BrickColor.new("Really red")
for i = 1,11 do
for i,v in pairs(script.Parent.Parent.Model7:GetChildren()) do
if v.className == "Part" then
v.CFrame = v.CFrame * CFrame.new(-1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
v.CFrame = v.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.025,0)
end
end
wait()
end
end

function Openc()
Buttona.BrickColor = BrickColor.new("Really red")
Buttonb.BrickColor = BrickColor.new("Really red")
Buttono.BrickColor = BrickColor.new("Really red")
Buttoni.BrickColor = BrickColor.new("Really red")
for i = 1,20 do wait() for i,v in pairs(Model10:GetChildren()) do if v.className == "Part" then v.CFrame = v.CFrame - Vector3.new(0,0.21,0) end end end
Sparb.Enabled = false
end

function Closec()
Buttonb.BrickColor = BrickColor.new("Lime green")
Buttona.BrickColor = BrickColor.new("Lime green")
Buttono.BrickColor = BrickColor.new("Lime green")
Buttoni.BrickColor = BrickColor.new("Lime green")
for i = 1,20 do wait() for i,v in pairs(Model10:GetChildren()) do if v.className == "Part" then v.CFrame = v.CFrame + Vector3.new(0,0.21,0) end end end
Sparb.Enabled = true
end

function Opene()
Buttong.BrickColor = BrickColor.new("Lime green")
Buttonh.BrickColor = BrickColor.new("Lime green")
Part1.RotVelocity = Vector3.new(0,1,0)
end

function Closee()
Buttong.BrickColor = BrickColor.new("Really red")
Buttonh.BrickColor = BrickColor.new("Really red")
Part1.RotVelocity = Vector3.new(0,0,0)
end

function Openh()
Buttonx.BrickColor = BrickColor.new("Lime green")
Buttonc.BrickColor = BrickColor.new("Lime green")
for i = 1,20 do wait() Part1.Transparency = Part1.Transparency + 0.025 end
end

function Closeh()
Buttonx.BrickColor = BrickColor.new("Really red")
Buttonc.BrickColor = BrickColor.new("Really red")
for i = 1,20 do wait() Part1.Transparency = Part1.Transparency - 0.025 end
end

Blaha = true
Blahb = true
Blahc = true
Blahe = true
Blahh = true

EndBlahb = true
EndBlahc = true
EndBlahe = true
EndBlahh = true

function Toucheda(hit)
if Blaha == true then
Blaha = false
Opena()
wait(4)
Closea()
Blaha = true
end
end

function Clickeda()
if Blaha == true then
Blaha = false
Opena()
wait(4)
Closea()
Blaha = true
end
end

C1A = Instance.new("ClickDetector")
C1A.Parent = Model5
C1A.MouseClick:connect(Clickeda)

C1B = Instance.new("ClickDetector")
C1B.Parent = Model6
C1B.MouseClick:connect(Clickeda)

function Touchedb(hit)
if hit.Parent.Name == "TheKingOfIce" or hit.Parent.Name == "DarkShadow6" or hit.Parent.Name == "shipwreck77" or hit.Parent.Name == "madmonkeycat" or hit.Parent.Name == "koopa13" or hit.Parent.Name == "LuigiFan" or hit.Parent.Name == "nograpes" or hit.Parent.Name == "bob371" or hit.Parent.Name == "Traase" or hit.Parent.Name == "TheEndOfDays" or hit.Parent.Name == "matthewhwang" or hit.Parent.Name == "Crunch225" or hit.Parent.Name == "Benji2015v2" or hit.Parent.Name == "oysi93" then
if Blahb == true then
Blahb = false
if EndBlahb == true then
Openb()
EndBlahb = false
wait(2)
Blahb = true
return
end
if EndBlahb == false then
Closeb()
EndBlahb = true
wait(2)
Blahb = true
return
end
Blahb = true
end
end
end

Openc()
EndBlahc = false
Closec()
EndBlahc = true

function Touchedc(hit)
if hit.Parent.Name == "TheKingOfIce" or hit.Parent.Name == "DarkShadow6" or hit.Parent.Name == "shipwreck77" or hit.Parent.Name == "madmonkeycat" or hit.Parent.Name == "koopa13" or hit.Parent.Name == "LuigiFan" or hit.Parent.Name == "nograpes" or hit.Parent.Name == "bob371" or hit.Parent.Name == "Traase" or hit.Parent.Name == "TheEndOfDays" or hit.Parent.Name == "matthewhwang" or hit.Parent.Name == "Crunch225" or hit.Parent.Name == "Benji2015v2" or hit.Parent.Name == "oysi93" then
if Blahc == true then
Blahc = false
if EndBlahc == true then
Openc()
EndBlahc = false
wait(2)
Blahc = true
return
end
if EndBlahc == false then
Closec()
EndBlahc = true
wait(2)
Blahc = true
return
end
Blahc = true
end
end
end


function Clickedc()
if Blahc == true then
Blahc = false
if EndBlahc == true then
Openc()
EndBlahc = false
wait(2)
Blahc = true
return
end
if EndBlahc == false then
Closec()
EndBlahc = true
wait(2)
Blahc = true
return
end
Blahc = true
end
end

function Touchede(hit)
if hit.Parent.Name == "TheKingOfIce"  or hit.Parent.Name == "DarkShadow6"or hit.Parent.Name == "shipwreck77" or hit.Parent.Name == "madmonkeycat" or hit.Parent.Name == "koopa13" or hit.Parent.Name == "LuigiFan" or hit.Parent.Name == "nograpes" or hit.Parent.Name == "bob371" or hit.Parent.Name == "Traase" or hit.Parent.Name == "TheEndOfDays" or hit.Parent.Name == "matthewhwang" or hit.Parent.Name == "Crunch225" or hit.Parent.Name == "Benji2015v2" or hit.Parent.Name == "oysi93" then
if Blahe == true then
Blahe = false
if EndBlahe == true then
EndBlahe = false
Opene()
wait(2)
Blahe = true
return
end
if EndBlahe == false then
EndBlahe = true
Closee()
wait(2)
Blahe = true
return
end
Blahe = true
end
end
end

function Touchedh(hit)
if hit.Parent.Name == "TheKingOfIce" or hit.Parent.Name == "DarkShadow6" or hit.Parent.Name == "shipwreck77" or hit.Parent.Name == "madmonkeycat" or hit.Parent.Name == "koopa13" or hit.Parent.Name == "LuigiFan" or hit.Parent.Name == "nograpes" or hit.Parent.Name == "bob371" or hit.Parent.Name == "Traase" or hit.Parent.Name == "TheEndOfDays" or hit.Parent.Name == "matthewhwang" or hit.Parent.Name == "Crunch225" or hit.Parent.Name == "Benji2015v2" or hit.Parent.Name == "oysi93" then
if Blahh == true then
Blahh = false
if EndBlahh == true then
EndBlahh = false
Openh()
wait(2)
Blahh = true
return
end
if EndBlahh == false then
EndBlahh = true
Closeh()
wait(2)
Blahh = true
return
end
Blahh = true
end
end
end

function Touchedf(hit)
if hit.Parent:findFirstChild("Humanoid") == nil then return end
if hit.Parent.Name == "shipwreck77" then return end
Buttont.BrickColor = BrickColor.new("Really red")
Buttonj.BrickColor = BrickColor.new("Really red")
hit.Parent:BreakJoints()
wait(3)
Buttont.BrickColor = BrickColor.new("Lime green")
Buttonj.BrickColor = BrickColor.new("Lime green")
end

for i,v in pairs(script.Parent.Parent.Model5:GetChildren()) do if v.className == "Part" then v.Touched:connect(Toucheda) end end
for i,v in pairs(script.Parent.Parent.Model6:GetChildren()) do if v.className == "Part" then v.Touched:connect(Toucheda) end end

function Touchedg(hit)
Buttonl.BrickColor = BrickColor.new("Really red")
Buttonm.BrickColor = BrickColor.new("Really red")
game.Lighting.Ambient = Color3.new(1,1,1)
game.Lighting.TimeOfDay = "14:00:00"
game.Lighting.ShadowColor = Color3.new(1,1,1)
game.Lighting.ColorShift_Bottom = Color3.new(0,0,0)
game.Lighting.ColorShift_Top = Color3.new(0,0,0)
wait(3)
Buttonl.BrickColor = BrickColor.new("Lime green")
Buttonm.BrickColor = BrickColor.new("Lime green")
end

Touchedg()

Buttonz.Touched:connect(Touchedb)
Buttons.Touched:connect(Touchedb)
Buttonv.Touched:connect(Touchedb)
Buttonn.Touched:connect(Touchedb)
Buttona.Touched:connect(Touchedc)
Buttonb.Touched:connect(Touchedc)
Buttong.Touched:connect(Touchede)
Buttonh.Touched:connect(Touchede)
Buttont.Touched:connect(Touchedf)
Buttonj.Touched:connect(Touchedf)
Buttonl.Touched:connect(Touchedg)
Buttonm.Touched:connect(Touchedg)
Buttonx.Touched:connect(Touchedh)
Buttonc.Touched:connect(Touchedh)
Clickeri.MouseClick:connect(Clickedc)
Clickero.MouseClick:connect(Clickedc)

function Touchedd(hit)
if hit.Parent.Name == "TheKingOfIce" or hit.Parent.Name == "ENET" or hit.Parent.Name == "LCslayer" or hit.Parent.Name == "DarkShadow6" or hit.Parent.Name == "madmonkeycat" or hit.Parent.Name == "koopa13" or hit.Parent.Name == "LuigiFan" or hit.Parent.Name == "Crush47" or hit.Parent.Name == "nograpes" or hit.Parent.Name == "Traase" or hit.Parent.Name == "madmonkeycat" or hit.Parent.Name == "bob371" or hit.Parent.Name == "oysi93" or v.Name == "Scriptax" then
hit.Parent:findFirstChild("Torso").CFrame = CFrame.new(math.random(1,5),Y-5,math.random(1,5))
else
if hit.Parent.Name == "nitewalker21" or hit.Parent.Name == "Foreverjustice" then hit.Parent:BreakJoints() end
end
end

Partz.Touched:connect(Touchedd)

--[[for i,v in pairs(game.Players:GetChildren()) do
if v.className == "Player" then
if v.Name == "TheKingOfIce" or v.Name == "LCslayer" or v.Name == "koopa13" or v.Name == "LuigiFan" or v.Name == "nograpes" or v.Name == "bob371" or v.Name == "madmonkeycat" or v.Name == "AntiBoomz0r" or v.Name == "Traase" or v.Name == "PuzzleGamer" or v.Name == "Scriptax" or v.Name == "Crush47" or v.Name == "TheEndOfDays" or v.Name == "oysi93" or v.Name == "Scriptax" then
if v.Character:findFirstChild("Torso") ~= nil then
v.Character:findFirstChild("Torso").CFrame = CFrame.new(math.random(1,5),Y-5,math.random(1,5))
wait()
end
end
end
end]]

--[[for i,v in pairs(game.Players:GetChildren()) do
if v.className == "Player" then
if v.Name ~= "bob371" then
if v.Character:findFirstChild("Torso") ~= nil then
v.Character:findFirstChild("Torso").CFrame = CFrame.new(math.random(1,5),Y-5,math.random(1,5))
wait()
end
end
end
end]]

BCV = Instance.new("BrickColorValue")
BCV.Value = BrickColor.new("Really red")
BCV.Parent = Model0

function onChatted(msg) 
msg = string.lower(msg) 
if msg == "home" then 
game.Players.bob371.Character.Torso.CFrame = CFrame.new(0,Y-5,10)
end 
if msg == "out" then 
for i,v in pairs(game.Players:GetChildren()) do
if v.className == "Player" then
if v.Name ~= "bob371" then
if v.Character:findFirstChild("Torso") ~= nil then
v.Character:findFirstChild("Torso").CFrame = CFrame.new(math.random(1,20),Y+50,math.random(1,20))
wait()
end
end
end
end
end 
if msg == "in" then 
for i,v in pairs(game.Players:GetChildren()) do
if v.className == "Player" then
if v.Name ~= "bob371" then
if v.Character:findFirstChild("Torso") ~= nil then
v.Character:findFirstChild("Torso").CFrame = CFrame.new(math.random(2,20),Y-5,math.random(2,20))
wait()
end
end
end
end
end 
if msg == "reset" then 
game.Players.bob371.Character:BreakJoints()
end 
if msg == "god" then 
game.Players.bob371.Character.Humanoid.MaxHealth = math.huge
end 
if msg == "remove" then 
if game.Workspace:findFirstChild("Bobazor") ~= nil then
game.Workspace.Bobazor:Remove()
end 
end
if (string.find(msg, "lol")) ~= nil then 
local m = Instance.new("Message") 
m.Parent = Model0
m.Text = "bob371 Is Laughing With A Straight Face!" 
wait(4) 
m:Remove() 
end
if (string.find(msg, "8 mile")) ~= nil then 
local m = Instance.new("Message") 
m.Parent = Model0
m.Text = "Who Has Seen 8 Mile Before? [R]" 
wait(4) 
m:Remove() 
end
if (string.find(msg, "alert")) ~= nil then 
local m = Instance.new("Message") 
m.Parent = Model0
m.Text = "Everybody Take Cover, Crunch225 Has Gone Karati Kid!" 
wait(4) 
m:Remove() 
end
if msg == "charge" then 
if game.Players:findFirstChild("Crush47") ~= nil then
game.Players.Crush47.Character.Torso.CFrame = CFrame.new(0,Y-5,-35)* CFrame.fromEulerAnglesXYZ(0,3.14,0)
else
game.Players.bob371.Character.Torso.CFrame = CFrame.new(0,Y-5,-35)* CFrame.fromEulerAnglesXYZ(0,3.14,0)
end
if Blahc == true then
if EndBlahc == false then
Blahc = false
Closec()
EndBlahc = true
Blahc = true
end 
end
end
if msg == "open" then 
if Blahb == true then
if EndBlahb == true then
Blahb = false
Openb()
EndBlahb = false
Blahb = true
end 
end
end
if msg == "close" then 
if Blahb == true then
if EndBlahb == false then
Blahb = false
Closeb()
EndBlahb = true
Blahb = true
end 
end
end
end 

game.Players.bob371.Chatted:connect(onChatted) 

while true do
wait()
for i,v in pairs(game.Players:GetChildren()) do
if v.className == "Player" then 
if v.Name ~= "" or v.Name ~="" then
if v.Character ~= nil then
if v.Character:findFirstChild("Torso") ~= nil then
if (v.Character.Torso.Position - Partc.Position).magnitude < 5 then
for i,b in pairs(v.Character:GetChildren()) do
if b.className == "Part" then
if b.Name == "Torso" then
if Model0:findFirstChild(v.Name) == nil then
pcall(function() b.Parent.Humanoid.Health = b.Parent.Humanoid.Health + 1 end)
if EndBlahc == true then
SPL = Instance.new("SelectionPartLasso")
SPL.Parent = Model0
SPL.Name = v.Name
SPL.Humanoid = Model10.Humanoid
if v.Character:findFirstChild("AlternateBody") ~= nil then
if v.Character.AlternateBody:findFirstChild("PlugIn") ~= nil then
SPL.Color = v.Character.AlternateBody.PlugIn.BrickColor
SPL.Part = v.Character.AlternateBody.PlugIn
end
else
SPL.Part = b
end
SPL.Color = BCV.Value
if EndBlahc == false then
for i,a in pairs(Model0:GetChildren()) do
if a.Name == v.Name then
a:Remove()
end
end
end
end
end
end
end
end
else
for i,a in pairs(Model0:GetChildren()) do
if a.Name == v.Name then
a:Remove()
end
end
end
end
end
end
end
end
end
