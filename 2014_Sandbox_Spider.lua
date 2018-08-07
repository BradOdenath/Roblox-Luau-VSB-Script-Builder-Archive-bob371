--[[

	Project compilation between myself and another user, DoogleFox.
	
	Essentially a controllable,
	four legged, hot air balloon, fire spitting, dog.

]]


script.Parent = nil
script:ClearAllChildren()

movespeed = 40

Player = game.Players.LocalPlayer
Character = Player.Character

Character.Torso.CFrame = Character.Torso.CFrame + Vector3.new(0,20,0)

Sit = Character.Humanoid.Sit

ArmLength = 5

pcall(function() Character["£HoverCraft"]:Remove() end)
pcall(function() Player.Backpack.BNS:Remove() end)

HoverCraft = Instance.new("Model")
HoverCraft.Name = "£HoverCraft"
HoverCraft.Parent = game.Workspace

Seat = Instance.new("VehicleSeat")
Seat.Anchored = false
Seat.CanCollide = true
Seat.Locked = true
Seat.HeadsUpDisplay = false
Seat.Size = Vector3.new(4,1,4)
Seat.TopSurface = 0
Seat.BottomSurface = 0
Seat.BrickColor = BrickColor.Black()
Seat.Parent = HoverCraft
Seat.CFrame = Character.Torso.CFrame - Vector3.new(0,3,0)
seatlight = Instance.new("PointLight",Seat)
seatlight.Brightness = 0.5
seatlight.Color = Color3.new(0.5,0.5,0.5)
seatlight.Range = 30

game.Workspace.CurrentCamera.CameraSubject = Seat
Character.Humanoid.WalkSpeed = 0
Character.Torso.CFrame = game.Workspace.Base.CFrame + CFrame.new(0,20,0)

PartA = Instance.new("Part")
PartA.Anchored = false
PartA.CanCollide = true
PartA.Locked = true
PartA.formFactor = "Custom"
PartA.Size = Vector3.new(6,0.5,12)
PartA.TopSurface = 0
PartA.BottomSurface = 0
PartA.Parent = HoverCraft
WeldA = Instance.new("Weld")
WeldA.Part0 = PartA
WeldA.Part1 = Seat
WeldA.Parent = Seat
WeldA.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)

PartB = Instance.new("Part")
PartB.Anchored = false
PartB.CanCollide = true
PartB.Locked = true
PartB.formFactor = "Custom"
PartB.Size = Vector3.new(12,0.5,6)
PartB.TopSurface = 0
PartB.BottomSurface = 0
PartB.Parent = HoverCraft
PartB.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldB = Instance.new("Weld")
WeldB.Part0 = PartA
WeldB.Part1 = PartB
WeldB.Parent = PartB
WeldB.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)

PartB = Instance.new("Part")
PartB.Anchored = false
PartB.CanCollide = true
PartB.Locked = true
PartB.formFactor = "Custom"
PartB.Size = Vector3.new(12,0.5,6)
PartB.TopSurface = 0
PartB.BottomSurface = 0
PartB.Parent = HoverCraft
PartB.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldB = Instance.new("Weld")
WeldB.Part0 = PartA
WeldB.Part1 = PartB
WeldB.Parent = PartB
WeldB.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)

PartC = Instance.new("Part")
PartC.Anchored = false
PartC.CanCollide = true
PartC.Locked = true
PartC.formFactor = "Custom"
PartC.Size = Vector3.new(12,0.5,4)
PartC.TopSurface = 0
PartC.BottomSurface = 0
PartC.Parent = HoverCraft
PartC.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldC = Instance.new("Weld")
WeldC.Part0 = PartA
WeldC.Part1 = PartC
WeldC.Parent = PartC
WeldC.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,math.pi/2/2,0)

PartD = Instance.new("Part")
PartD.Anchored = false
PartD.CanCollide = true
PartD.Locked = true
PartD.formFactor = "Custom"
PartD.Size = Vector3.new(12,0.5,4)
PartD.TopSurface = 0
PartD.BottomSurface = 0
PartD.Parent = HoverCraft
PartD.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldD = Instance.new("Weld")
WeldD.Part0 = PartA
WeldD.Part1 = PartD
WeldD.Parent = PartD
WeldD.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,-math.pi/2/2,0)

PartE = Instance.new("Part")
PartE.Anchored = false
PartE.CanCollide = true
PartE.Locked = true
PartE.formFactor = "Custom"
PartE.Size = Vector3.new(1,1,4)
PartE.TopSurface = 0
PartE.BottomSurface = 0
PartE.BrickColor = BrickColor.Black()
PartE.Parent = HoverCraft
PartE.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldE = Instance.new("Weld")
WeldE.Part0 = PartA
WeldE.Part1 = PartE
WeldE.Parent = PartE
WeldE.C0 = CFrame.new(4,0,4) * CFrame.Angles(0,-math.pi/2/2,0)

PartF = Instance.new("Part")
PartF.Anchored = false
PartF.CanCollide = true
PartF.Locked = true
PartF.formFactor = "Custom"
PartF.Size = Vector3.new(1,1,4)
PartF.TopSurface = 0
PartF.BottomSurface = 0
PartF.BrickColor = BrickColor.Black()
PartF.Parent = HoverCraft
PartF.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldF = Instance.new("Weld")
WeldF.Part0 = PartA
WeldF.Part1 = PartF
WeldF.Parent = PartF
WeldF.C0 = CFrame.new(-4,0,-4) * CFrame.Angles(0,-math.pi/2/2,0)

PartG = Instance.new("Part")
PartG.Anchored = false
PartG.CanCollide = true
PartG.Locked = true
PartG.formFactor = "Custom"
PartG.Size = Vector3.new(1,1,4)
PartG.TopSurface = 0
PartG.BottomSurface = 0
PartG.BrickColor = BrickColor.Black()
PartG.Parent = HoverCraft
PartG.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldG = Instance.new("Weld")
WeldG.Part0 = PartA
WeldG.Part1 = PartG
WeldG.Parent = PartG
WeldG.C0 = CFrame.new(4,0,-4) * CFrame.Angles(0,math.pi/2/2,0)

PartH = Instance.new("Part")
PartH.Anchored = false
PartH.CanCollide = true
PartH.Locked = true
PartH.formFactor = "Custom"
PartH.Size = Vector3.new(1,1,4)
PartH.TopSurface = 0
PartH.BottomSurface = 0
PartH.BrickColor = BrickColor.Black()
PartH.Parent = HoverCraft
PartH.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldH = Instance.new("Weld")
WeldH.Part0 = PartA
WeldH.Part1 = PartH
WeldH.Parent = PartH
WeldH.C0 = CFrame.new(-4,0,4) * CFrame.Angles(0,math.pi/2/2,0)

PartI = Instance.new("Part")
PartI.Anchored = false
PartI.CanCollide = true
PartI.Locked = true
PartI.formFactor = "Custom"
PartI.Size = Vector3.new(4,0.5,3.5)
PartI.TopSurface = 0
PartI.BottomSurface = 0
PartI.Parent = HoverCraft
PartI.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldI = Instance.new("Weld")
WeldI.Part0 = PartA
WeldI.Part1 = PartI
WeldI.Parent = PartI
WeldI.C0 = CFrame.new(-3.25,1.5,3.25) * CFrame.Angles(0,math.pi/2/2,math.pi/2/2)

PartJ = Instance.new("Part")
PartJ.Anchored = false
PartJ.CanCollide = true
PartJ.Locked = true
PartJ.formFactor = "Custom"
PartJ.Size = Vector3.new(4,0.5,3.5)
PartJ.TopSurface = 0
PartJ.BottomSurface = 0
PartJ.Parent = HoverCraft
PartJ.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldJ = Instance.new("Weld")
WeldJ.Part0 = PartA
WeldJ.Part1 = PartJ
WeldJ.Parent = PartJ
WeldJ.C0 = CFrame.new(3.25,1.5,-3.25) * CFrame.Angles(0,math.pi/2/2,-math.pi/2/2)

PartK = Instance.new("Part")
PartK.Anchored = false
PartK.CanCollide = true
PartK.Locked = true
PartK.formFactor = "Custom"
PartK.Size = Vector3.new(4,0.5,3.5)
PartK.TopSurface = 0
PartK.BottomSurface = 0
PartK.Parent = HoverCraft
PartK.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldK = Instance.new("Weld")
WeldK.Part0 = PartA
WeldK.Part1 = PartK
WeldK.Parent = PartK
WeldK.C0 = CFrame.new(3.25,1.5,3.25) * CFrame.Angles(0,-math.pi/2/2,-math.pi/2/2)

PartL = Instance.new("Part")
PartL.Anchored = false
PartL.CanCollide = true
PartL.Locked = true
PartL.formFactor = "Custom"
PartL.Size = Vector3.new(4,0.5,3.5)
PartL.TopSurface = 0
PartL.BottomSurface = 0
PartL.Parent = HoverCraft
PartL.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldL = Instance.new("Weld")
WeldL.Part0 = PartA
WeldL.Part1 = PartL
WeldL.Parent = PartL
WeldL.C0 = CFrame.new(-3.25,1.5,-3.25) * CFrame.Angles(0,-math.pi/2/2,math.pi/2/2)

PartM = Instance.new("Part")
PartM.Anchored = false
PartM.CanCollide = true
PartM.Locked = true
PartM.formFactor = "Custom"
PartM.Size = Vector3.new(1,1,4)
PartM.TopSurface = 0
PartM.BottomSurface = 0
PartM.BrickColor = BrickColor.Black()
PartM.Parent = HoverCraft
PartM.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldM = Instance.new("Weld")
WeldM.Part0 = PartA
WeldM.Part1 = PartM
WeldM.Parent = PartM
WeldM.C0 = CFrame.new(-2.25,2.75,-2.25) * CFrame.Angles(0,-math.pi/2/2,0)

PartN = Instance.new("Part")
PartN.Anchored = false
PartN.CanCollide = true
PartN.Locked = true
PartN.formFactor = "Custom"
PartN.Size = Vector3.new(1,1,4)
PartN.TopSurface = 0
PartN.BottomSurface = 0
PartN.BrickColor = BrickColor.Black()
PartN.Parent = HoverCraft
PartN.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldN = Instance.new("Weld")
WeldN.Part0 = PartA
WeldN.Part1 = PartN
WeldN.Parent = PartN
WeldN.C0 = CFrame.new(2.25,2.75,2.25) * CFrame.Angles(0,-math.pi/2/2,0)

PartO = Instance.new("Part")
PartO.Anchored = false
PartO.CanCollide = true
PartO.Locked = true
PartO.formFactor = "Custom"
PartO.Size = Vector3.new(1,1,4)
PartO.TopSurface = 0
PartO.BottomSurface = 0
PartO.BrickColor = BrickColor.Black()
PartO.Parent = HoverCraft
PartO.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldO = Instance.new("Weld")
WeldO.Part0 = PartA
WeldO.Part1 = PartO
WeldO.Parent = PartO
WeldO.C0 = CFrame.new(-2.25,2.75,2.25) * CFrame.Angles(0,math.pi/2/2,0)

PartP = Instance.new("Part")
PartP.Anchored = false
PartP.CanCollide = true
PartP.Locked = true
PartP.formFactor = "Custom"
PartP.Size = Vector3.new(1,1,4)
PartP.TopSurface = 0
PartP.BottomSurface = 0
PartP.BrickColor = BrickColor.Black()
PartP.Parent = HoverCraft
PartP.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldP = Instance.new("Weld")
WeldP.Part0 = PartA
WeldP.Part1 = PartP
WeldP.Parent = PartP
WeldP.C0 = CFrame.new(2.25,2.75,-2.25) * CFrame.Angles(0,math.pi/2/2,0)

PartQ = Instance.new("Part")
PartQ.Anchored = false
PartQ.CanCollide = true
PartQ.Locked = true
PartQ.formFactor = "Custom"
PartQ.Size = Vector3.new(1,1,2.5)
PartQ.TopSurface = 0
PartQ.BottomSurface = 0
PartQ.BrickColor = BrickColor.Black()
PartQ.Parent = HoverCraft
PartQ.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldQ = Instance.new("Weld")
WeldQ.Part0 = PartA
WeldQ.Part1 = PartQ
WeldQ.Parent = PartQ
WeldQ.C0 = CFrame.new(0,2.75,3.5) * CFrame.Angles(0,math.pi/2,0)

PartR = Instance.new("Part")
PartR.Anchored = false
PartR.CanCollide = true
PartR.Locked = true
PartR.formFactor = "Custom"
PartR.Size = Vector3.new(1,1,2.5)
PartR.TopSurface = 0
PartR.BottomSurface = 0
PartR.BrickColor = BrickColor.Black()
PartR.Parent = HoverCraft
PartR.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldR = Instance.new("Weld")
WeldR.Part0 = PartA
WeldR.Part1 = PartR
WeldR.Parent = PartR
WeldR.C0 = CFrame.new(0,2.75,-3.5) * CFrame.Angles(0,math.pi/2,0)

PartS = Instance.new("Part")
PartS.Anchored = false
PartS.CanCollide = true
PartS.Locked = true
PartS.formFactor = "Custom"
PartS.Size = Vector3.new(1,1,2.5)
PartS.TopSurface = 0
PartS.BottomSurface = 0
PartS.BrickColor = BrickColor.Black()
PartS.Parent = HoverCraft
PartS.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldS = Instance.new("Weld")
WeldS.Part0 = PartA
WeldS.Part1 = PartS
WeldS.Parent = PartS
WeldS.C0 = CFrame.new(3.5,2.75,0) * CFrame.Angles(0,math.pi,0)

PartT = Instance.new("Part")
PartT.Anchored = false
PartT.CanCollide = true
PartT.Locked = true
PartT.formFactor = "Custom"
PartT.Size = Vector3.new(1,1,2.5)
PartT.TopSurface = 0
PartT.BottomSurface = 0
PartT.BrickColor = BrickColor.Black()
PartT.Parent = HoverCraft
PartT.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldT = Instance.new("Weld")
WeldT.Part0 = PartA
WeldT.Part1 = PartT
WeldT.Parent = PartT
WeldT.C0 = CFrame.new(-3.5,2.75,0) * CFrame.Angles(0,math.pi,0)

PartU = Instance.new("Part")
PartU.Anchored = false
PartU.CanCollide = true
PartU.Locked = true
PartU.formFactor = "Custom"
PartU.Size = Vector3.new(4,1,4)
PartU.TopSurface = 0
PartU.BottomSurface = 0
PartU.BrickColor = BrickColor.Black()
PartU.Parent = HoverCraft
PartU.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldU = Instance.new("Weld")
WeldU.Part0 = Seat
WeldU.Part1 = PartU
WeldU.Parent = PartU
WeldU.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,math.pi/2/2,0)

PartV = Instance.new("Part")
PartV.Anchored = false
PartV.CanCollide = false
PartV.Locked = true
PartV.formFactor = "Custom"
PartV.Size = Vector3.new(3,4,1)
PartV.TopSurface = 0
PartV.BottomSurface = 0
PartV.BrickColor = BrickColor.Black()
PartV.Parent = HoverCraft
PartV.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldV = Instance.new("Weld")
WeldV.Part0 = Seat
WeldV.Part1 = PartV
WeldV.Parent = PartV
WeldV.C0 = CFrame.new(0,2,1)

PartW = Instance.new("Part")
PartW.Anchored = false
PartW.CanCollide = false
PartW.Locked = true
PartW.formFactor = "Custom"
PartW.Size = Vector3.new(2.7,3.7,0.5)
PartW.TopSurface = 0
PartW.BottomSurface = 0
PartW.Parent = HoverCraft
PartW.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldW = Instance.new("Weld")
WeldW.Part0 = Seat
WeldW.Part1 = PartW
WeldW.Parent = PartW
WeldW.C0 = CFrame.new(0,2,0.7)

PartX = Instance.new("Part")
PartX.Anchored = false
PartX.CanCollide = false
PartX.Locked = true
PartX.formFactor = "Custom"
PartX.Size = Vector3.new(1.2,1,3)
PartX.TopSurface = 0
PartX.BottomSurface = 0
PartX.BrickColor = BrickColor.Black()
PartX.Parent = HoverCraft
PartX.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldX = Instance.new("Weld")
WeldX.Part0 = Seat
WeldX.Part1 = PartX
WeldX.Parent = PartX
WeldX.C0 = CFrame.new(1.5,1.8,-0.2)

PartY = Instance.new("Part")
PartY.Anchored = false
PartY.CanCollide = false
PartY.Locked = true
PartY.formFactor = "Custom"
PartY.Size = Vector3.new(1.2,1,3)
PartY.TopSurface = 0
PartY.BottomSurface = 0
PartY.BrickColor = BrickColor.Black()
PartY.Parent = HoverCraft
PartY.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldY = Instance.new("Weld")
WeldY.Part0 = Seat
WeldY.Part1 = PartY
WeldY.Parent = PartY
WeldY.C0 = CFrame.new(-1.5,1.8,-0.2)

PartZ = Instance.new("Part")
PartZ.Anchored = false
PartZ.CanCollide = true
PartZ.Locked = true
PartZ.formFactor = "Custom"
PartZ.Size = Vector3.new(2.7,0.5,2.8)
PartZ.TopSurface = 0
PartZ.BottomSurface = 0
PartZ.Parent = HoverCraft
PartZ.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WeldZ = Instance.new("Weld")
WeldZ.Part0 = Seat
WeldZ.Part1 = PartZ
WeldZ.Parent = PartZ
WeldZ.C0 = CFrame.new(0,0.3,0)

WindowWshr = true

WPartB = Instance.new("Part")
WPartB.Anchored = false
WPartB.CanCollide = WindowWshr
WPartB.Locked = true
WPartB.formFactor = "Custom"
WPartB.Size = Vector3.new(0.5,3,3)
WPartB.TopSurface = 0
WPartB.BottomSurface = 0
WPartB.BrickColor = BrickColor.Blue()
WPartB.Transparency = 0.75
WPartB.Reflectance = 0.1
WPartB.Parent = HoverCraft
WPartB.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldB = Instance.new("Weld")
WWeldB.Part0 = PartA
WWeldB.Part1 = WPartB
WWeldB.Parent = WPartB
WWeldB.C0 = CFrame.new(2,4,2) * CFrame.Angles(0,-math.pi/2/2,math.pi/10)

WPartC = Instance.new("Part")
WPartC.Anchored = false
WPartC.CanCollide = WindowWshr
WPartC.Locked = true
WPartC.formFactor = "Custom"
WPartC.Size = Vector3.new(0.5,3,3)
WPartC.TopSurface = 0
WPartC.BottomSurface = 0
WPartC.BrickColor = BrickColor.Blue()
WPartC.Transparency = 0.75
WPartC.Reflectance = 0.1
WPartC.Parent = HoverCraft
WPartC.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldC = Instance.new("Weld")
WWeldC.Part0 = PartA
WWeldC.Part1 = WPartC
WWeldC.Parent = WPartC
WWeldC.C0 = CFrame.new(2,4,-2) * CFrame.Angles(0,math.pi/2/2,math.pi/10)

WPartD = Instance.new("Part")
WPartD.Anchored = false
WPartD.CanCollide = WindowWshr
WPartD.Locked = true
WPartD.formFactor = "Custom"
WPartD.Size = Vector3.new(0.5,3,3)
WPartD.TopSurface = 0
WPartD.BottomSurface = 0
WPartD.BrickColor = BrickColor.Blue()
WPartD.Transparency = 0.75
WPartD.Reflectance = 0.1
WPartD.Parent = HoverCraft
WPartD.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldD = Instance.new("Weld")
WWeldD.Part0 = PartA
WWeldD.Part1 = WPartD
WWeldD.Parent = WPartD
WWeldD.C0 = CFrame.new(-2,4,-2) * CFrame.Angles(0,-math.pi/2/2,-math.pi/10)

WPartE = Instance.new("Part")
WPartE.Anchored = false
WPartE.CanCollide = WindowWshr
WPartE.Locked = true
WPartE.formFactor = "Custom"
WPartE.Size = Vector3.new(0.5,3,3)
WPartE.TopSurface = 0
WPartE.BottomSurface = 0
WPartE.BrickColor = BrickColor.Blue()
WPartE.Transparency = 0.75
WPartE.Reflectance = 0.1
WPartE.Parent = HoverCraft
WPartE.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldE = Instance.new("Weld")
WWeldE.Part0 = PartA
WWeldE.Part1 = WPartE
WWeldE.Parent = WPartE
WWeldE.C0 = CFrame.new(-2,4,2) * CFrame.Angles(0,math.pi/2/2,-math.pi/10)

WPartF = Instance.new("Part")
WPartF.Anchored = false
WPartF.CanCollide = WindowWshr
WPartF.Locked = true
WPartF.formFactor = "Custom"
WPartF.Size = Vector3.new(0.5,3,1.8)
WPartF.TopSurface = 0
WPartF.BottomSurface = 0
WPartF.BrickColor = BrickColor.Blue()
WPartF.Transparency = 0.75
WPartF.Reflectance = 0.1
WPartF.Parent = HoverCraft
WPartF.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldF = Instance.new("Weld")
WWeldF.Part0 = PartA
WWeldF.Part1 = WPartF
WWeldF.Parent = WPartF
WWeldF.C0 = CFrame.new(3.075,4,0) * CFrame.Angles(0,0,math.pi/10)

WPartG = Instance.new("Part")
WPartG.Anchored = false
WPartG.CanCollide = WindowWshr
WPartG.Locked = true
WPartG.formFactor = "Custom"
WPartG.Size = Vector3.new(0.5,3,1.8)
WPartG.TopSurface = 0
WPartG.BottomSurface = 0
WPartG.BrickColor = BrickColor.Blue()
WPartG.Transparency = 0.75
WPartG.Reflectance = 0.1
WPartG.Parent = HoverCraft
WPartG.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldG = Instance.new("Weld")
WWeldG.Part0 = PartA
WWeldG.Part1 = WPartG
WWeldG.Parent = WPartG
WWeldG.C0 = CFrame.new(-3.075,4,0) * CFrame.Angles(0,0,-math.pi/10)

WPartH = Instance.new("Part")
WPartH.Anchored = false
WPartH.CanCollide = WindowWshr
WPartH.Locked = true
WPartH.formFactor = "Custom"
WPartH.Size = Vector3.new(0.5,3,1.8)
WPartH.TopSurface = 0
WPartH.BottomSurface = 0
WPartH.BrickColor = BrickColor.Blue()
WPartH.Transparency = 0.75
WPartH.Reflectance = 0.1
WPartH.Parent = HoverCraft
WPartH.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldH = Instance.new("Weld")
WWeldH.Part0 = PartA
WWeldH.Part1 = WPartH
WWeldH.Parent = WPartH
WWeldH.C0 = CFrame.new(0,4,3.075) * CFrame.Angles(0,math.pi/2,-math.pi/10)

WPartI = Instance.new("Part")
WPartI.Anchored = false
WPartI.CanCollide = WindowWshr
WPartI.Locked = true
WPartI.formFactor = "Custom"
WPartI.Size = Vector3.new(0.5,3,1.8)
WPartI.TopSurface = 0
WPartI.BottomSurface = 0
WPartI.BrickColor = BrickColor.Blue()
WPartI.Transparency = 0.75
WPartI.Reflectance = 0.1
WPartI.Parent = HoverCraft
WPartI.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldI = Instance.new("Weld")
WWeldI.Part0 = PartA
WWeldI.Part1 = WPartI
WWeldI.Parent = WPartI
WWeldI.C0 = CFrame.new(0,4,-3.075) * CFrame.Angles(0,math.pi/2,math.pi/10)

WPartJ = Instance.new("Part")
WPartJ.Anchored = false
WPartJ.CanCollide = WindowWshr
WPartJ.Locked = true
WPartJ.formFactor = "Custom"
WPartJ.Size = Vector3.new(0.55,3.2,0.55)
WPartJ.TopSurface = 0
WPartJ.BottomSurface = 0
WPartJ.BrickColor = BrickColor.Black()
WPartJ.Parent = HoverCraft
WPartJ.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldJ = Instance.new("Weld")
WWeldJ.Part0 = PartA
WWeldJ.Part1 = WPartJ
WWeldJ.Parent = WPartJ
WWeldJ.C0 = CFrame.new(1,4,-3.075) * CFrame.Angles(0,math.pi/2/2,math.pi/10)

WPartK = Instance.new("Part")
WPartK.Anchored = false
WPartK.CanCollide = WindowWshr
WPartK.Locked = true
WPartK.formFactor = "Custom"
WPartK.Size = Vector3.new(0.55,3.2,0.55)
WPartK.TopSurface = 0
WPartK.BottomSurface = 0
WPartK.BrickColor = BrickColor.Black()
WPartK.Parent = HoverCraft
WPartK.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldK = Instance.new("Weld")
WWeldK.Part0 = PartA
WWeldK.Part1 = WPartK
WWeldK.Parent = WPartK
WWeldK.C0 = CFrame.new(1,4,-3.075) * CFrame.Angles(0,math.pi/2,math.pi/10)

WPartL = Instance.new("Part")
WPartL.Anchored = false
WPartL.CanCollide = WindowWshr
WPartL.Locked = true
WPartL.formFactor = "Custom"
WPartL.Size = Vector3.new(0.55,3.2,0.55)
WPartL.TopSurface = 0
WPartL.BottomSurface = 0
WPartL.BrickColor = BrickColor.Black()
WPartL.Parent = HoverCraft
WPartL.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldL = Instance.new("Weld")
WWeldL.Part0 = PartA
WWeldL.Part1 = WPartL
WWeldL.Parent = WPartL
WWeldL.C0 = CFrame.new(-1,4,-3.075) * CFrame.Angles(0,math.pi/2,math.pi/10)

WPartM = Instance.new("Part")
WPartM.Anchored = false
WPartM.CanCollide = WindowWshr
WPartM.Locked = true
WPartM.formFactor = "Custom"
WPartM.Size = Vector3.new(0.55,3.2,0.55)
WPartM.TopSurface = 0
WPartM.BottomSurface = 0
WPartM.BrickColor = BrickColor.Black()
WPartM.Parent = HoverCraft
WPartM.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldM = Instance.new("Weld")
WWeldM.Part0 = PartA
WWeldM.Part1 = WPartM
WWeldM.Parent = WPartM
WWeldM.C0 = CFrame.new(-1,4,-3.075) * CFrame.Angles(0,-math.pi/2/2,-math.pi/10)

WPartN = Instance.new("Part")
WPartN.Anchored = false
WPartN.CanCollide = WindowWshr
WPartN.Locked = true
WPartN.formFactor = "Custom"
WPartN.Size = Vector3.new(0.55,3.2,0.55)
WPartN.TopSurface = 0
WPartN.BottomSurface = 0
WPartN.BrickColor = BrickColor.Black()
WPartN.Parent = HoverCraft
WPartN.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldN = Instance.new("Weld")
WWeldN.Part0 = PartA
WWeldN.Part1 = WPartN
WWeldN.Parent = WPartN
WWeldN.C0 = CFrame.new(-3.075,4,-1) * CFrame.Angles(0,-math.pi/2/2,-math.pi/10)

WPartO = Instance.new("Part")
WPartO.Anchored = false
WPartO.CanCollide = WindowWshr
WPartO.Locked = true
WPartO.formFactor = "Custom"
WPartO.Size = Vector3.new(0.55,3.2,0.55)
WPartO.TopSurface = 0
WPartO.BottomSurface = 0
WPartO.BrickColor = BrickColor.Black()
WPartO.Parent = HoverCraft
WPartO.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldO = Instance.new("Weld")
WWeldO.Part0 = PartA
WWeldO.Part1 = WPartO
WWeldO.Parent = WPartO
WWeldO.C0 = CFrame.new(-3.075,4,-1) * CFrame.Angles(0,-math.pi,math.pi/10)

WPartP = Instance.new("Part")
WPartP.Anchored = false
WPartP.CanCollide = WindowWshr
WPartP.Locked = true
WPartP.formFactor = "Custom"
WPartP.Size = Vector3.new(0.55,3.2,0.55)
WPartP.TopSurface = 0
WPartP.BottomSurface = 0
WPartP.BrickColor = BrickColor.Black()
WPartP.Parent = HoverCraft
WPartP.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldP = Instance.new("Weld")
WWeldP.Part0 = PartA
WWeldP.Part1 = WPartP
WWeldP.Parent = WPartP
WWeldP.C0 = CFrame.new(-3.075,4,1) * CFrame.Angles(0,-math.pi,math.pi/10)

WPartQ = Instance.new("Part")
WPartQ.Anchored = false
WPartQ.CanCollide = WindowWshr
WPartQ.Locked = true
WPartQ.formFactor = "Custom"
WPartQ.Size = Vector3.new(0.55,3.2,0.55)
WPartQ.TopSurface = 0
WPartQ.BottomSurface = 0
WPartQ.BrickColor = BrickColor.Black()
WPartQ.Parent = HoverCraft
WPartQ.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldQ = Instance.new("Weld")
WWeldQ.Part0 = PartA
WWeldQ.Part1 = WPartQ
WWeldQ.Parent = WPartQ
WWeldQ.C0 = CFrame.new(-3.075,4,1) * CFrame.Angles(0,math.pi/2/2,-math.pi/10)

WPartR = Instance.new("Part")
WPartR.Anchored = false
WPartR.CanCollide = WindowWshr
WPartR.Locked = true
WPartR.formFactor = "Custom"
WPartR.Size = Vector3.new(0.55,3.2,0.55)
WPartR.TopSurface = 0
WPartR.BottomSurface = 0
WPartR.BrickColor = BrickColor.Black()
WPartR.Parent = HoverCraft
WPartR.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldR = Instance.new("Weld")
WWeldR.Part0 = PartA
WWeldR.Part1 = WPartR
WWeldR.Parent = WPartR
WWeldR.C0 = CFrame.new(-1,4,3.075) * CFrame.Angles(0,math.pi/2/2,-math.pi/10)

WPartS = Instance.new("Part")
WPartS.Anchored = false
WPartS.CanCollide = WindowWshr
WPartS.Locked = true
WPartS.formFactor = "Custom"
WPartS.Size = Vector3.new(0.55,3.2,0.55)
WPartS.TopSurface = 0
WPartS.BottomSurface = 0
WPartS.BrickColor = BrickColor.Black()
WPartS.Parent = HoverCraft
WPartS.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldS = Instance.new("Weld")
WWeldS.Part0 = PartA
WWeldS.Part1 = WPartS
WWeldS.Parent = WPartS
WWeldS.C0 = CFrame.new(-1,4,3.075) * CFrame.Angles(0,math.pi/2,-math.pi/10)

WPartT = Instance.new("Part")
WPartT.Anchored = false
WPartT.CanCollide = WindowWshr
WPartT.Locked = true
WPartT.formFactor = "Custom"
WPartT.Size = Vector3.new(0.55,3.2,0.55)
WPartT.TopSurface = 0
WPartT.BottomSurface = 0
WPartT.BrickColor = BrickColor.Black()
WPartT.Parent = HoverCraft
WPartT.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldT = Instance.new("Weld")
WWeldT.Part0 = PartA
WWeldT.Part1 = WPartT
WWeldT.Parent = WPartT
WWeldT.C0 = CFrame.new(1,4,3.075) * CFrame.Angles(0,-math.pi/2,math.pi/10)

WPartU = Instance.new("Part")
WPartU.Anchored = false
WPartU.CanCollide = WindowWshr
WPartU.Locked = true
WPartU.formFactor = "Custom"
WPartU.Size = Vector3.new(0.55,3.2,0.55)
WPartU.TopSurface = 0
WPartU.BottomSurface = 0
WPartU.BrickColor = BrickColor.Black()
WPartU.Parent = HoverCraft
WPartU.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldU = Instance.new("Weld")
WWeldU.Part0 = PartA
WWeldU.Part1 = WPartU
WWeldU.Parent = WPartU
WWeldU.C0 = CFrame.new(1,4,3.075) * CFrame.Angles(0,-math.pi/2/2,math.pi/10)

WPartV = Instance.new("Part")
WPartV.Anchored = false
WPartV.CanCollide = WindowWshr
WPartV.Locked = true
WPartV.formFactor = "Custom"
WPartV.Size = Vector3.new(0.55,3.2,0.55)
WPartV.TopSurface = 0
WPartV.BottomSurface = 0
WPartV.BrickColor = BrickColor.Black()
WPartV.Parent = HoverCraft
WPartV.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldV = Instance.new("Weld")
WWeldV.Part0 = PartA
WWeldV.Part1 = WPartV
WWeldV.Parent = WPartV
WWeldV.C0 = CFrame.new(3.075,4,1) * CFrame.Angles(0,-math.pi/2/2,math.pi/10)

WPartW = Instance.new("Part")
WPartW.Anchored = false
WPartW.CanCollide = WindowWshr
WPartW.Locked = true
WPartW.formFactor = "Custom"
WPartW.Size = Vector3.new(0.55,3.2,0.55)
WPartW.TopSurface = 0
WPartW.BottomSurface = 0
WPartW.BrickColor = BrickColor.Black()
WPartW.Parent = HoverCraft
WPartW.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldW = Instance.new("Weld")
WWeldW.Part0 = PartA
WWeldW.Part1 = WPartW
WWeldW.Parent = WPartW
WWeldW.C0 = CFrame.new(3.075,4,1) * CFrame.Angles(0,-math.pi,-math.pi/10)

WPartX = Instance.new("Part")
WPartX.Anchored = false
WPartX.CanCollide = WindowWshr
WPartX.Locked = true
WPartX.formFactor = "Custom"
WPartX.Size = Vector3.new(0.55,3.2,0.55)
WPartX.TopSurface = 0
WPartX.BottomSurface = 0
WPartX.BrickColor = BrickColor.Black()
WPartX.Parent = HoverCraft
WPartX.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldX = Instance.new("Weld")
WWeldX.Part0 = PartA
WWeldX.Part1 = WPartX
WWeldX.Parent = WPartX
WWeldX.C0 = CFrame.new(3.075,4,-1) * CFrame.Angles(0,-math.pi,-math.pi/10)

WPartY = Instance.new("Part")
WPartY.Anchored = false
WPartY.CanCollide = WindowWshr
WPartY.Locked = true
WPartY.formFactor = "Custom"
WPartY.Size = Vector3.new(0.55,3.2,0.55)
WPartY.TopSurface = 0
WPartY.BottomSurface = 0
WPartY.BrickColor = BrickColor.Black()
WPartY.Parent = HoverCraft
WPartY.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WWeldY = Instance.new("Weld")
WWeldY.Part0 = PartA
WWeldY.Part1 = WPartY
WWeldY.Parent = WPartY
WWeldY.C0 = CFrame.new(3.075,4,-1) * CFrame.Angles(0,math.pi/2/2,math.pi/10)

WHPartB = Instance.new("Part")
WHPartB.Anchored = false
WHPartB.CanCollide = WindowWshr
WHPartB.Locked = true
WHPartB.formFactor = "Custom"
WHPartB.Size = Vector3.new(3,0.55,1.25)
WHPartB.TopSurface = 0
WHPartB.BottomSurface = 0
WHPartB.BrickColor = BrickColor.Black()
WHPartB.Parent = HoverCraft
WHPartB.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WHWeldB = Instance.new("Weld")
WHWeldB.Part0 = PartA
WHWeldB.Part1 = WHPartB
WHWeldB.Parent = WHPartB
WHWeldB.C0 = CFrame.new(2.5,5.5,0) * CFrame.Angles(0,math.pi/2,0)

WHPartC = Instance.new("Part")
WHPartC.Anchored = false
WHPartC.CanCollide = WindowWshr
WHPartC.Locked = true
WHPartC.formFactor = "Custom"
WHPartC.Size = Vector3.new(3,0.55,1.25)
WHPartC.TopSurface = 0
WHPartC.BottomSurface = 0
WHPartC.BrickColor = BrickColor.Black()
WHPartC.Parent = HoverCraft
WHPartC.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WHWeldC = Instance.new("Weld")
WHWeldC.Part0 = PartA
WHWeldC.Part1 = WHPartC
WHWeldC.Parent = WHPartC
WHWeldC.C0 = CFrame.new(-2.5,5.5,0) * CFrame.Angles(0,math.pi/2,0)

WHPartD = Instance.new("Part")
WHPartD.Anchored = false
WHPartD.CanCollide = WindowWshr
WHPartD.Locked = true
WHPartD.formFactor = "Custom"
WHPartD.Size = Vector3.new(3,0.55,1.25)
WHPartD.TopSurface = 0
WHPartD.BottomSurface = 0
WHPartD.BrickColor = BrickColor.Black()
WHPartD.Parent = HoverCraft
WHPartD.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WHWeldD = Instance.new("Weld")
WHWeldD.Part0 = PartA
WHWeldD.Part1 = WHPartD
WHWeldD.Parent = WHPartD
WHWeldD.C0 = CFrame.new(0,5.5,-2.5) * CFrame.Angles(0,0,0)

WHPartE = Instance.new("Part")
WHPartE.Anchored = false
WHPartE.CanCollide = WindowWshr
WHPartE.Locked = true
WHPartE.formFactor = "Custom"
WHPartE.Size = Vector3.new(3,0.55,1.25)
WHPartE.TopSurface = 0
WHPartE.BottomSurface = 0
WHPartE.BrickColor = BrickColor.Black()
WHPartE.Parent = HoverCraft
WHPartE.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WHWeldE = Instance.new("Weld")
WHWeldE.Part0 = PartA
WHWeldE.Part1 = WHPartE
WHWeldE.Parent = WHPartE
WHWeldE.C0 = CFrame.new(0,5.5,2.5) * CFrame.Angles(0,0,0)

WHPartF = Instance.new("Part")
WHPartF.Anchored = false
WHPartF.CanCollide = WindowWshr
WHPartF.Locked = true
WHPartF.formFactor = "Custom"
WHPartF.Size = Vector3.new(2.25,0.55,1.25)
WHPartF.TopSurface = 0
WHPartF.BottomSurface = 0
WHPartF.BrickColor = BrickColor.Black()
WHPartF.Parent = HoverCraft
WHPartF.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WHWeldF = Instance.new("Weld")
WHWeldF.Part0 = PartA
WHWeldF.Part1 = WHPartF
WHWeldF.Parent = WHPartF
WHWeldF.C0 = CFrame.new(1.8,5.5,1.8) * CFrame.Angles(0,math.pi/2/2,0)

WHPartG = Instance.new("Part")
WHPartG.Anchored = false
WHPartG.CanCollide = WindowWshr
WHPartG.Locked = true
WHPartG.formFactor = "Custom"
WHPartG.Size = Vector3.new(2.25,0.55,1.25)
WHPartG.TopSurface = 0
WHPartG.BottomSurface = 0
WHPartG.BrickColor = BrickColor.Black()
WHPartG.Parent = HoverCraft
WHPartG.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WHWeldG = Instance.new("Weld")
WHWeldG.Part0 = PartA
WHWeldG.Part1 = WHPartG
WHWeldG.Parent = WHPartG
WHWeldG.C0 = CFrame.new(-1.8,5.5,-1.8) * CFrame.Angles(0,math.pi/2/2,0)

WHPartH = Instance.new("Part")
WHPartH.Anchored = false
WHPartH.CanCollide = WindowWshr
WHPartH.Locked = true
WHPartH.formFactor = "Custom"
WHPartH.Size = Vector3.new(2.25,0.55,1.25)
WHPartH.TopSurface = 0
WHPartH.BottomSurface = 0
WHPartH.BrickColor = BrickColor.Black()
WHPartH.Parent = HoverCraft
WHPartH.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WHWeldH = Instance.new("Weld")
WHWeldH.Part0 = PartA
WHWeldH.Part1 = WHPartH
WHWeldH.Parent = WHPartH
WHWeldH.C0 = CFrame.new(-1.8,5.5,1.8) * CFrame.Angles(0,-math.pi/2/2,0)

WHPartI = Instance.new("Part")
WHPartI.Anchored = false
WHPartI.CanCollide = WindowWshr
WHPartI.Locked = true
WHPartI.formFactor = "Custom"
WHPartI.Size = Vector3.new(2.25,0.55,1.25)
WHPartI.TopSurface = 0
WHPartI.BottomSurface = 0
WHPartI.BrickColor = BrickColor.Black()
WHPartI.Parent = HoverCraft
WHPartI.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
WHWeldI = Instance.new("Weld")
WHWeldI.Part0 = PartA
WHWeldI.Part1 = WHPartI
WHWeldI.Parent = WHPartI
WHWeldI.C0 = CFrame.new(1.8,5.5,-1.8) * CFrame.Angles(0,-math.pi/2/2,0)

HPartB = Instance.new("Part")
HPartB.Anchored = false
HPartB.CanCollide = WindowWshr
HPartB.Locked = true
HPartB.formFactor = "Custom"
HPartB.Size = Vector3.new(0.4,2,0.4)
HPartB.TopSurface = 0
HPartB.BottomSurface = 0
HPartB.Parent = HoverCraft
HPartB.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
HWeldB = Instance.new("Weld")
HWeldB.Part0 = PartA
HWeldB.Part1 = HPartB
HWeldB.Parent = HPartB
HWeldB.C0 = CFrame.new(0,5.8,2.5) * CFrame.Angles(0,0,math.pi/2)

HPartC = Instance.new("Part")
HPartC.Anchored = false
HPartC.CanCollide = WindowWshr
HPartC.Locked = true
HPartC.formFactor = "Custom"
HPartC.Size = Vector3.new(1.95,0.3,1.95)
HPartC.TopSurface = 0
HPartC.BottomSurface = 0
HPartC.Parent = HoverCraft
HPartC.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
HWeldC = Instance.new("Weld")
HWeldC.Part0 = HPartB
HWeldC.Part1 = HPartC
HWeldC.Parent = HPartC
HWeldC.C0 = CFrame.new(0,0,-1) * CFrame.Angles(0,0,-math.pi/2)

HPartD = Instance.new("Part")
HPartD.Anchored = false
HPartD.CanCollide = WindowWshr
HPartD.Locked = true
HPartD.formFactor = "Custom"
HPartD.Size = Vector3.new(1.95,0.3,1.95)
HPartD.TopSurface = 0
HPartD.BottomSurface = 0
HPartD.Parent = HoverCraft
HPartD.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
HWeldD = Instance.new("Weld")
HWeldD.Part0 = HPartC
HWeldD.Part1 = HPartD
HWeldD.Parent = HPartD
HWeldD.C0 = CFrame.new(0,0,-3) * CFrame.Angles(0,0,0)

HPartE = Instance.new("Part")
HPartE.Anchored = false
HPartE.CanCollide = WindowWshr
HPartE.Locked = true
HPartE.formFactor = "Custom"
HPartE.Size = Vector3.new(1.95,0.3,1.95)
HPartE.TopSurface = 0
HPartE.BottomSurface = 0
HPartE.Parent = HoverCraft
HPartE.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
HWeldE = Instance.new("Weld")
HWeldE.Part0 = HPartC
HWeldE.Part1 = HPartE
HWeldE.Parent = HPartE
HWeldE.C0 = CFrame.new(1.5,0,-1.5) * CFrame.Angles(0,0,0)

HPartF = Instance.new("Part")
HPartF.Anchored = false
HPartF.CanCollide = WindowWshr
HPartF.Locked = true
HPartF.formFactor = "Custom"
HPartF.Size = Vector3.new(1.95,0.3,1.95)
HPartF.TopSurface = 0
HPartF.BottomSurface = 0
HPartF.Parent = HoverCraft
HPartF.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
HWeldF = Instance.new("Weld")
HWeldF.Part0 = HPartC
HWeldF.Part1 = HPartF
HWeldF.Parent = HPartF
HWeldF.C0 = CFrame.new(-1.5,0,-1.5) * CFrame.Angles(0,0,0)

HPartG = Instance.new("Part")
HPartG.Anchored = false
HPartG.CanCollide = WindowWshr
HPartG.Locked = true
HPartG.formFactor = "Custom"
HPartG.Size = Vector3.new(1.95,0.3,1.95)
HPartG.TopSurface = 0
HPartG.BottomSurface = 0
HPartG.BrickColor = BrickColor.Black()
HPartG.Parent = HoverCraft
HPartG.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
HWeldG = Instance.new("Weld")
HWeldG.Part0 = HPartC
HWeldG.Part1 = HPartG
HWeldG.Parent = HPartG
HWeldG.C0 = CFrame.new(0,-0.05,-1.5) * CFrame.Angles(0,math.pi/2/2,0)

HPartH = Instance.new("Part")
HPartH.Anchored = false
HPartH.CanCollide = WindowWshr
HPartH.Locked = true
HPartH.formFactor = "Custom"
HPartH.Size = Vector3.new(1.95,0.3,2.2)
HPartH.TopSurface = 0
HPartH.BottomSurface = 0
HPartH.Parent = HoverCraft
HPartH.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
HWeldH = Instance.new("Weld")
HWeldH.Part0 = HPartG
HWeldH.Part1 = HPartH
HWeldH.Parent = HPartH
HWeldH.C0 = CFrame.new(1.5,0.05,0) * CFrame.Angles(0,0,0)

HPartI = Instance.new("Part")
HPartI.Anchored = false
HPartI.CanCollide = WindowWshr
HPartI.Locked = true
HPartI.formFactor = "Custom"
HPartI.Size = Vector3.new(1.95,0.3,2.2)
HPartI.TopSurface = 0
HPartI.BottomSurface = 0
HPartI.Parent = HoverCraft
HPartI.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
HWeldI = Instance.new("Weld")
HWeldI.Part0 = HPartG
HWeldI.Part1 = HPartI
HWeldI.Parent = HPartI
HWeldI.C0 = CFrame.new(-1.5,0.05,0) * CFrame.Angles(0,0,0)

HPartJ = Instance.new("Part")
HPartJ.Anchored = false
HPartJ.CanCollide = WindowWshr
HPartJ.Locked = true
HPartJ.formFactor = "Custom"
HPartJ.Size = Vector3.new(1.95,0.3,2.2)
HPartJ.TopSurface = 0
HPartJ.BottomSurface = 0
HPartJ.Parent = HoverCraft
HPartJ.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
HWeldJ = Instance.new("Weld")
HWeldJ.Part0 = HPartG
HWeldJ.Part1 = HPartJ
HWeldJ.Parent = HPartJ
HWeldJ.C0 = CFrame.new(0,0.05,1.5) * CFrame.Angles(0,math.pi/2,0)

HPartK = Instance.new("Part")
HPartK.Anchored = false
HPartK.CanCollide = WindowWshr
HPartK.Locked = true
HPartK.formFactor = "Custom"
HPartK.Size = Vector3.new(1.95,0.3,2.2)
HPartK.TopSurface = 0
HPartK.BottomSurface = 0
HPartK.Parent = HoverCraft
HPartK.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
HWeldK = Instance.new("Weld")
HWeldK.Part0 = HPartG
HWeldK.Part1 = HPartK
HWeldK.Parent = HPartK
HWeldK.C0 = CFrame.new(0,0.05,-1.5) * CFrame.Angles(0,math.pi/2,0)

GunPartA = Instance.new("Part")
GunPartA.Anchored = false
GunPartA.CanCollide = true
GunPartA.Locked = true
GunPartA.formFactor = "Custom"
GunPartA.Size = Vector3.new(2.1,2.5,1)
GunPartA.TopSurface = 0
GunPartA.BottomSurface = 0
GunPartA.Parent = HoverCraft
GunPartA.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldA = Instance.new("Weld")
GunWeldA.Part0 = Seat
GunWeldA.Part1 = GunPartA
GunWeldA.Parent = GunPartA
GunWeldA.C0 = CFrame.new(0,1.1,-3.5)

GunPartB = Instance.new("Part")
GunPartB.Anchored = false
GunPartB.CanCollide = true
GunPartB.Locked = true
GunPartB.formFactor = "Custom"
GunPartB.Size = Vector3.new(2,2,2)
GunPartB.TopSurface = 0
GunPartB.BottomSurface = 0
GunPartB.Parent = HoverCraft
GunPartB.BrickColor = BrickColor.Black()
GunPartB.Shape = "Ball"
GunPartB.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldB = Instance.new("Weld")
GunWeldB.Part0 = Seat
GunWeldB.Part1 = GunPartB
GunWeldB.Parent = GunPartB
GunWeldB.C0 = CFrame.new(0,1.3,-3.8)

GunPartC = Instance.new("Part")
GunPartC.Anchored = false
GunPartC.CanCollide = true
GunPartC.Locked = true
GunPartC.formFactor = "Custom"
GunPartC.Size = Vector3.new(1.2,1.2,2.4)
GunPartC.TopSurface = 0
GunPartC.BottomSurface = 0
GunPartC.Parent = HoverCraft
GunPartC.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldC = Instance.new("Weld")
GunWeldC.Part0 = GunPartB
GunWeldC.Part1 = GunPartC
GunWeldC.Parent = GunPartC
GunWeldC.C0 = CFrame.new(0,0,-1)

GunPartD = Instance.new("Part")
GunPartD.Anchored = false
GunPartD.CanCollide = true
GunPartD.Locked = true
GunPartD.formFactor = "Custom"
GunPartD.Size = Vector3.new(2,2,2)
GunPartD.TopSurface = 0
GunPartD.BottomSurface = 0
GunPartD.Parent = HoverCraft
GunPartD.BrickColor = BrickColor.Black()
GunPartD.Shape = "Ball"
GunPartD.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldD = Instance.new("Weld")
GunWeldD.Part0 = GunPartC
GunWeldD.Part1 = GunPartD
GunWeldD.Parent = GunPartD
GunWeldD.C0 = CFrame.new(0,0,-1)

GunPartE = Instance.new("Part")
GunPartE.Anchored = false
GunPartE.CanCollide = true
GunPartE.Locked = true
GunPartE.formFactor = "Custom"
GunPartE.Size = Vector3.new(1.2,0.4,1.8)
GunPartE.TopSurface = 0
GunPartE.BottomSurface = 0
GunPartE.Parent = HoverCraft
GunPartE.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldE = Instance.new("Weld")
GunWeldE.Part0 = GunPartD
GunWeldE.Part1 = GunPartE
GunWeldE.Parent = GunPartE
GunWeldE.C0 = CFrame.new(0,-0.5,-1) * CFrame.Angles(0.2,0,0)

GunPartF = Instance.new("Part")
GunPartF.Anchored = false
GunPartF.CanCollide = true
GunPartF.Locked = true
GunPartF.formFactor = "Custom"
GunPartF.Size = Vector3.new(1.2,0.4,1.8)
GunPartF.TopSurface = 0
GunPartF.BottomSurface = 0
GunPartF.Parent = HoverCraft
GunPartF.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldF = Instance.new("Weld")
GunWeldF.Part0 = GunPartD
GunWeldF.Part1 = GunPartF
GunWeldF.Parent = GunPartF
GunWeldF.C0 = CFrame.new(1,-0.35,-1) * CFrame.Angles(0.2,0,0.3)

GunPartG = Instance.new("Part")
GunPartG.Anchored = false
GunPartG.CanCollide = true
GunPartG.Locked = true
GunPartG.formFactor = "Custom"
GunPartG.Size = Vector3.new(1.2,0.4,1.8)
GunPartG.TopSurface = 0
GunPartG.BottomSurface = 0
GunPartG.Parent = HoverCraft
GunPartG.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldG = Instance.new("Weld")
GunWeldG.Part0 = GunPartD
GunWeldG.Part1 = GunPartG
GunWeldG.Parent = GunPartG
GunWeldG.C0 = CFrame.new(-1,-0.35,-1) * CFrame.Angles(0.2,0,-0.3)

GunPartH = Instance.new("Part")
GunPartH.Anchored = false
GunPartH.CanCollide = true
GunPartH.Locked = true
GunPartH.formFactor = "Custom"
GunPartH.Size = Vector3.new(1.2,0.4,1.2)
GunPartH.TopSurface = 0
GunPartH.BottomSurface = 0
GunPartH.Parent = HoverCraft
GunPartH.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldH = Instance.new("Weld")
GunWeldH.Part0 = GunPartD
GunWeldH.Part1 = GunPartH
GunWeldH.Parent = GunPartH
GunWeldH.C0 = CFrame.new(-0.8,-0.2,-1.9) * CFrame.Angles(0.5,math.pi/2/2,-0.4)

GunPartI = Instance.new("Part")
GunPartI.Anchored = false
GunPartI.CanCollide = true
GunPartI.Locked = true
GunPartI.formFactor = "Custom"
GunPartI.Size = Vector3.new(1.2,0.4,1.2)
GunPartI.TopSurface = 0
GunPartI.BottomSurface = 0
GunPartI.Parent = HoverCraft
GunPartI.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldI = Instance.new("Weld")
GunWeldI.Part0 = GunPartD
GunWeldI.Part1 = GunPartI
GunWeldI.Parent = GunPartI
GunWeldI.C0 = CFrame.new(0.8,-0.2,-1.9) * CFrame.Angles(0.5,-math.pi/2/2,0.4)

GunPartJ = Instance.new("Part")
GunPartJ.Anchored = false
GunPartJ.CanCollide = true
GunPartJ.Locked = true
GunPartJ.formFactor = "Custom"
GunPartJ.Size = Vector3.new(1.6,0.4,1.2)
GunPartJ.TopSurface = 0
GunPartJ.BottomSurface = 0
GunPartJ.Parent = HoverCraft
GunPartJ.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldJ = Instance.new("Weld")
GunWeldJ.Part0 = GunPartD
GunWeldJ.Part1 = GunPartJ
GunWeldJ.Parent = GunPartJ
GunWeldJ.C0 = CFrame.new(0,-0.2,-2.2) * CFrame.Angles(0.3,0,0)

GunPartJ = Instance.new("Part")
GunPartJ.Anchored = false
GunPartJ.CanCollide = true
GunPartJ.Locked = true
GunPartJ.formFactor = "Custom"
GunPartJ.Size = Vector3.new(1.6,0.4,1.2)
GunPartJ.TopSurface = 0
GunPartJ.BottomSurface = 0
GunPartJ.Parent = HoverCraft
GunPartJ.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldJ = Instance.new("Weld")
GunWeldJ.Part0 = GunPartD
GunWeldJ.Part1 = GunPartJ
GunWeldJ.Parent = GunPartJ
GunWeldJ.C0 = CFrame.new(0,-0.2,-2.2) * CFrame.Angles(0.3,0,0)

GunPartK = Instance.new("Part")
GunPartK.Anchored = false
GunPartK.CanCollide = true
GunPartK.Locked = true
GunPartK.formFactor = "Custom"
GunPartK.Size = Vector3.new(2,2,2)
GunPartK.TopSurface = 0
GunPartK.BottomSurface = 0
GunPartK.BrickColor = BrickColor.Black()
GunPartK.Shape = "Ball"
GunPartK.Parent = HoverCraft
GunPartK.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldK = Instance.new("Weld")
GunWeldK.Part0 = GunPartC
GunWeldK.Part1 = GunPartK
GunWeldK.Parent = GunPartK
GunWeldK.C0 = CFrame.new(0,0.1,-1) * CFrame.Angles(0,0,0)

GunPartL = Instance.new("Part")
GunPartL.Anchored = false
GunPartL.CanCollide = true
GunPartL.Locked = true
GunPartL.formFactor = "Custom"
GunPartL.Size = Vector3.new(1.6,1.2,0.4)
GunPartL.TopSurface = 0
GunPartL.BottomSurface = 0
GunPartL.Parent = HoverCraft
GunPartL.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldL = Instance.new("Weld")
GunWeldL.Part0 = GunPartK
GunWeldL.Part1 = GunPartL
GunWeldL.Parent = GunPartL
GunWeldL.C0 = CFrame.new(0,0.6,0.2) * CFrame.Angles(0,0,0)

GunPartM = Instance.new("Part")
GunPartM.Anchored = false
GunPartM.CanCollide = true
GunPartM.Locked = true
GunPartM.formFactor = "Custom"
GunPartM.Size = Vector3.new(1.3,1.2,0.4)
GunPartM.TopSurface = 0
GunPartM.BottomSurface = 0
GunPartM.Parent = HoverCraft
GunPartM.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldM = Instance.new("Weld")
GunWeldM.Part0 = GunPartL
GunWeldM.Part1 = GunPartM
GunWeldM.Parent = GunPartM
GunWeldM.C0 = CFrame.new(1.2,-0.1,0) * CFrame.Angles(0,0,-0.2)

GunPartN = Instance.new("Part")
GunPartN.Anchored = false
GunPartN.CanCollide = true
GunPartN.Locked = true
GunPartN.formFactor = "Custom"
GunPartN.Size = Vector3.new(1.3,1.2,0.4)
GunPartN.TopSurface = 0
GunPartN.BottomSurface = 0
GunPartN.Parent = HoverCraft
GunPartN.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldN = Instance.new("Weld")
GunWeldN.Part0 = GunPartL
GunWeldN.Part1 = GunPartN
GunWeldN.Parent = GunPartN
GunWeldN.C0 = CFrame.new(-1.2,-0.1,0) * CFrame.Angles(0,0,0.2)

GunPartO = Instance.new("Part")
GunPartO.Anchored = false
GunPartO.CanCollide = true
GunPartO.Locked = true
GunPartO.formFactor = "Custom"
GunPartO.Size = Vector3.new(1.6,0.4,1.4)
GunPartO.TopSurface = 0
GunPartO.BottomSurface = 0
GunPartO.Parent = HoverCraft
GunPartO.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldO = Instance.new("Weld")
GunWeldO.Part0 = GunPartL
GunWeldO.Part1 = GunPartO
GunWeldO.Parent = GunPartO
GunWeldO.C0 = CFrame.new(0,0.6,-0.5) * CFrame.Angles(0.24,0,0)

GunPartP = Instance.new("Part")
GunPartP.Anchored = false
GunPartP.CanCollide = true
GunPartP.Locked = true
GunPartP.formFactor = "Custom"
GunPartP.Size = Vector3.new(1.4,0.4,1.4)
GunPartP.TopSurface = 0
GunPartP.BottomSurface = 0
GunPartP.Parent = HoverCraft
GunPartP.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldP = Instance.new("Weld")
GunWeldP.Part0 = GunPartO
GunWeldP.Part1 = GunPartP
GunWeldP.Parent = GunPartP
GunWeldP.C0 = CFrame.new(-1.3,-0.15,0) * CFrame.Angles(0,0,0.25)

GunPartQ = Instance.new("Part")
GunPartQ.Anchored = false
GunPartQ.CanCollide = true
GunPartQ.Locked = true
GunPartQ.formFactor = "Custom"
GunPartQ.Size = Vector3.new(1.4,0.4,1.4)
GunPartQ.TopSurface = 0
GunPartQ.BottomSurface = 0
GunPartQ.Parent = HoverCraft
GunPartQ.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldQ = Instance.new("Weld")
GunWeldQ.Part0 = GunPartO
GunWeldQ.Part1 = GunPartQ
GunWeldQ.Parent = GunPartQ
GunWeldQ.C0 = CFrame.new(1.3,-0.15,0) * CFrame.Angles(0,0,-0.25)

GunPartR = Instance.new("Part")
GunPartR.Anchored = false
GunPartR.CanCollide = true
GunPartR.Locked = true
GunPartR.formFactor = "Custom"
GunPartR.Size = Vector3.new(0.4,1,1.4)
GunPartR.TopSurface = 0
GunPartR.BottomSurface = 0
GunPartR.Parent = HoverCraft
GunPartR.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldR = Instance.new("Weld")
GunWeldR.Part0 = GunPartO
GunWeldR.Part1 = GunPartR
GunWeldR.Parent = GunPartR
GunWeldR.C0 = CFrame.new(1.65,-0.8,0) * CFrame.Angles(0,0,-0.25)

GunPartS = Instance.new("Part")
GunPartS.Anchored = false
GunPartS.CanCollide = true
GunPartS.Locked = true
GunPartS.formFactor = "Custom"
GunPartS.Size = Vector3.new(0.4,1,1.4)
GunPartS.TopSurface = 0
GunPartS.BottomSurface = 0
GunPartS.Parent = HoverCraft
GunPartS.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldS = Instance.new("Weld")
GunWeldS.Part0 = GunPartO
GunWeldS.Part1 = GunPartS
GunWeldS.Parent = GunPartS
GunWeldS.C0 = CFrame.new(-1.65,-0.8,0) * CFrame.Angles(0,0,0.25)

GunPartT = Instance.new("Part")
GunPartT.Anchored = false
GunPartT.CanCollide = true
GunPartT.Locked = true
GunPartT.formFactor = "Custom"
GunPartT.Size = Vector3.new(1.4,0.5,3)
GunPartT.TopSurface = 0
GunPartT.BottomSurface = 0
GunPartT.Parent = HoverCraft
GunPartT.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldT = Instance.new("Weld")
GunWeldT.Part0 = GunPartO
GunWeldT.Part1 = GunPartT
GunWeldT.Parent = GunPartT
GunWeldT.C0 = CFrame.new(0,-0.59,-1.89) * CFrame.Angles(-0.4,0,0)

GunPartU = Instance.new("Part")
GunPartU.Anchored = false
GunPartU.CanCollide = true
GunPartU.Locked = true
GunPartU.formFactor = "Custom"
GunPartU.Size = Vector3.new(1.4,0.5,3)
GunPartU.TopSurface = 0
GunPartU.BottomSurface = 0
GunPartU.Parent = HoverCraft
GunPartU.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldU = Instance.new("Weld")
GunWeldU.Part0 = GunPartT
GunWeldU.Part1 = GunPartU
GunWeldU.Parent = GunPartU
GunWeldU.C0 = CFrame.new(-1.2,-0.15,0) * CFrame.Angles(0,0,0.25)

GunPartV = Instance.new("Part")
GunPartV.Anchored = false
GunPartV.CanCollide = true
GunPartV.Locked = true
GunPartV.formFactor = "Custom"
GunPartV.Size = Vector3.new(1.4,0.5,3)
GunPartV.TopSurface = 0
GunPartV.BottomSurface = 0
GunPartV.Parent = HoverCraft
GunPartV.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldV = Instance.new("Weld")
GunWeldV.Part0 = GunPartT
GunWeldV.Part1 = GunPartV
GunWeldV.Parent = GunPartV
GunWeldV.C0 = CFrame.new(1.2,-0.15,0) * CFrame.Angles(0,0,-0.25)

GunPartW = Instance.new("Part")
GunPartW.Anchored = false
GunPartW.CanCollide = true
GunPartW.Locked = true
GunPartW.formFactor = "Custom"
GunPartW.Size = Vector3.new(0.4,0.85,3)
GunPartW.TopSurface = 0
GunPartW.BottomSurface = 0
GunPartW.Parent = HoverCraft
GunPartW.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldW = Instance.new("Weld")
GunWeldW.Part0 = GunPartT
GunWeldW.Part1 = GunPartW
GunWeldW.Parent = GunPartW
GunWeldW.C0 = CFrame.new(1.7,-0.45,0) * CFrame.Angles(0,0,-0.25)

GunPartX = Instance.new("Part")
GunPartX.Anchored = false
GunPartX.CanCollide = true
GunPartX.Locked = true
GunPartX.formFactor = "Custom"
GunPartX.Size = Vector3.new(0.4,0.85,3)
GunPartX.TopSurface = 0
GunPartX.BottomSurface = 0
GunPartX.Parent = HoverCraft
GunPartX.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldX = Instance.new("Weld")
GunWeldX.Part0 = GunPartT
GunWeldX.Part1 = GunPartX
GunWeldX.Parent = GunPartX
GunWeldX.C0 = CFrame.new(-1.7,-0.45,0) * CFrame.Angles(0,0,0.25)

GunPartY = Instance.new("Part")
GunPartY.Anchored = false
GunPartY.CanCollide = true
GunPartY.Locked = true
GunPartY.formFactor = "Custom"
GunPartY.Size = Vector3.new(0.1,1,1)
GunPartY.TopSurface = 0
GunPartY.BottomSurface = 0
GunPartY.Parent = HoverCraft
GunPartY.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldY = Instance.new("Weld")
GunWeldY.Part0 = GunPartX
GunWeldY.Part1 = GunPartY
GunWeldY.Parent = GunPartY
GunWeldY.C0 = CFrame.new(0,-0.4,-0.6) * CFrame.Angles(math.pi/2/2,0,0)

GunPartZ = Instance.new("Part")
GunPartZ.Anchored = false
GunPartZ.CanCollide = true
GunPartZ.Locked = true
GunPartZ.formFactor = "Custom"
GunPartZ.Size = Vector3.new(0.1,1,1)
GunPartZ.TopSurface = 0
GunPartZ.BottomSurface = 0
GunPartZ.Parent = HoverCraft
GunPartZ.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
GunWeldZ = Instance.new("Weld")
GunWeldZ.Part0 = GunPartW
GunWeldZ.Part1 = GunPartZ
GunWeldZ.Parent = GunPartZ
GunWeldZ.C0 = CFrame.new(0,-0.4,-0.6) * CFrame.Angles(math.pi/2/2,0,0)

EyePartA = Instance.new("Part")
EyePartA.Anchored = false
EyePartA.CanCollide = true
EyePartA.Locked = true
EyePartA.formFactor = "Custom"
EyePartA.Size = Vector3.new(0.6,0.6,0.6)
EyePartA.TopSurface = 0
EyePartA.BottomSurface = 0
EyePartA.BrickColor = BrickColor.Black()
EyePartA.Parent = HoverCraft
EyeMeshA = Instance.new("SpecialMesh",EyePartA)
EyeMeshA.MeshType = "Sphere"
EyePartA.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
EyeWeldA = Instance.new("Weld")
EyeWeldA.Part0 = GunPartT
EyeWeldA.Part1 = EyePartA
EyeWeldA.Parent = EyePartA
EyeWeldA.C0 = CFrame.new(1,0.3,0) * CFrame.Angles(0,0,0)

EyePartB = Instance.new("Part")
EyePartB.Anchored = false
EyePartB.CanCollide = true
EyePartB.Locked = true
EyePartB.formFactor = "Custom"
EyePartB.Size = Vector3.new(0.6,0.6,0.6)
EyePartB.TopSurface = 0
EyePartB.BottomSurface = 0
EyePartB.BrickColor = BrickColor.Black()
EyePartB.Parent = HoverCraft
EyeMeshB = Instance.new("SpecialMesh",EyePartB)
EyeMeshB.MeshType = "Sphere"
EyePartB.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
EyeWeldB = Instance.new("Weld")
EyeWeldB.Part0 = GunPartT
EyeWeldB.Part1 = EyePartB
EyeWeldB.Parent = EyePartB
EyeWeldB.C0 = CFrame.new(-1,0.2,0) * CFrame.Angles(0,0,0)

J1PartA = Instance.new("Part")
J1PartA.Anchored = false
J1PartA.CanCollide = true
J1PartA.Locked = true
J1PartA.formFactor = "Custom"
J1PartA.Shape = "Ball"
J1PartA.Size = Vector3.new(2,2,2)
J1PartA.TopSurface = 0
J1PartA.BottomSurface = 0
J1PartA.BrickColor = BrickColor.Black()
J1PartA.Parent = HoverCraft
J1PartA.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J1WeldA = Instance.new("Weld")
J1WeldA.Part0 = PartI
J1WeldA.Part1 = J1PartA
J1WeldA.Parent = J1PartA
J1WeldA.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)

J1PartB = Instance.new("Part")
J1PartB.Anchored = false
J1PartB.CanCollide = true
J1PartB.Locked = true
J1PartB.formFactor = "Custom"
J1PartB.Size = Vector3.new(1,ArmLength,1)
J1PartB.TopSurface = 0
J1PartB.BottomSurface = 0
J1PartB.Parent = HoverCraft
J1PartB.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J1WeldB = Instance.new("Weld")
J1WeldB.Part0 = J1PartA
J1WeldB.Part1 = J1PartB
J1WeldB.Parent = J1PartB
J1WeldB.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J1PartC = Instance.new("Part")
J1PartC.Anchored = false
J1PartC.CanCollide = true
J1PartC.Locked = true
J1PartC.formFactor = "Custom"
J1PartC.Shape = "Ball"
J1PartC.Size = Vector3.new(2,2,2)
J1PartC.TopSurface = 0
J1PartC.BottomSurface = 0
J1PartC.BrickColor = BrickColor.Black()
J1PartC.Parent = HoverCraft
J1PartC.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J1WeldC = Instance.new("Weld")
J1WeldC.Part0 = J1PartB
J1WeldC.Part1 = J1PartC
J1WeldC.Parent = J1PartC
J1WeldC.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J1PartD = Instance.new("Part")
J1PartD.Anchored = false
J1PartD.CanCollide = true
J1PartD.Locked = true
J1PartD.formFactor = "Custom"
J1PartD.Size = Vector3.new(1,ArmLength,1)
J1PartD.TopSurface = 0
J1PartD.BottomSurface = 0
J1PartD.Parent = HoverCraft
J1PartD.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J1WeldD = Instance.new("Weld")
J1WeldD.Part0 = J1PartC
J1WeldD.Part1 = J1PartD
J1WeldD.Parent = J1PartD
J1WeldD.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J1PartE = Instance.new("Part")
J1PartE.Anchored = false
J1PartE.CanCollide = true
J1PartE.Locked = true
J1PartE.formFactor = "Custom"
J1PartE.Shape = "Ball"
J1PartE.Size = Vector3.new(2,2,2)
J1PartE.TopSurface = 0
J1PartE.BottomSurface = 0
J1PartE.BrickColor = BrickColor.Black()
J1PartE.Parent = HoverCraft
J1PartE.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J1WeldE = Instance.new("Weld")
J1WeldE.Part0 = J1PartD
J1WeldE.Part1 = J1PartE
J1WeldE.Parent = J1PartE
J1WeldE.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J1PartF = Instance.new("Part")
J1PartF.Anchored = false
J1PartF.CanCollide = true
J1PartF.Locked = true
J1PartF.formFactor = "Custom"
J1PartF.Size = Vector3.new(1,ArmLength,1)
J1PartF.TopSurface = 0
J1PartF.BottomSurface = 0
J1PartF.Parent = HoverCraft
J1PartF.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J1WeldF = Instance.new("Weld")
J1WeldF.Part0 = J1PartE
J1WeldF.Part1 = J1PartF
J1WeldF.Parent = J1PartF
J1WeldF.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J1PartG = Instance.new("Part")
J1PartG.Anchored = false
J1PartG.CanCollide = true
J1PartG.Locked = true
J1PartG.formFactor = "Custom"
J1PartG.Shape = "Ball"
J1PartG.Size = Vector3.new(2,2,2)
J1PartG.TopSurface = 0
J1PartG.BottomSurface = 0
J1PartG.BrickColor = BrickColor.Black()
J1PartG.Parent = HoverCraft
J1PartG.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J1WeldG = Instance.new("Weld")
J1WeldG.Part0 = J1PartF
J1WeldG.Part1 = J1PartG
J1WeldG.Parent = J1PartG
J1WeldG.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J1PartH = Instance.new("Part")
J1PartH.Anchored = false
J1PartH.CanCollide = true
J1PartH.Locked = true
J1PartH.formFactor = "Custom"
J1PartH.Size = Vector3.new(1,1,ArmLength/2)
J1PartH.TopSurface = 0
J1PartH.BottomSurface = 0
J1PartH.Parent = HoverCraft
J1PartH.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J1WeldH = Instance.new("Weld")
J1WeldH.Part0 = J1PartG
J1WeldH.Part1 = J1PartH
J1WeldH.Parent = J1PartH
J1WeldH.C0 = CFrame.new(0,math.pi/5,ArmLength/4) * CFrame.Angles(-math.pi/5,0,0)

J1PartI = Instance.new("Part")
J1PartI.Anchored = false
J1PartI.CanCollide = true
J1PartI.Locked = true
J1PartI.formFactor = "Custom"
J1PartI.Size = Vector3.new(1,1,ArmLength/2)
J1PartI.TopSurface = 0
J1PartI.BottomSurface = 0
J1PartI.Parent = HoverCraft
J1PartI.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J1WeldI = Instance.new("Weld")
J1WeldI.Part0 = J1PartG
J1WeldI.Part1 = J1PartI
J1WeldI.Parent = J1PartI
J1WeldI.C0 = CFrame.new(0,math.pi/5,-ArmLength/4) * CFrame.Angles(math.pi/5,0,0)

J2PartA = Instance.new("Part")
J2PartA.Anchored = false
J2PartA.CanCollide = true
J2PartA.Locked = true
J2PartA.formFactor = "Custom"
J2PartA.Shape = "Ball"
J2PartA.Size = Vector3.new(2,2,2)
J2PartA.TopSurface = 0
J2PartA.BottomSurface = 0
J2PartA.BrickColor = BrickColor.Black()
J2PartA.Parent = HoverCraft
J2PartA.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J2WeldA = Instance.new("Weld")
J2WeldA.Part0 = PartJ
J2WeldA.Part1 = J2PartA
J2WeldA.Parent = J2PartA
J2WeldA.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,math.pi,0)

J2PartB = Instance.new("Part")
J2PartB.Anchored = false
J2PartB.CanCollide = true
J2PartB.Locked = true
J2PartB.formFactor = "Custom"
J2PartB.Size = Vector3.new(1,ArmLength,1)
J2PartB.TopSurface = 0
J2PartB.BottomSurface = 0
J2PartB.Parent = HoverCraft
J2PartB.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J2WeldB = Instance.new("Weld")
J2WeldB.Part0 = J2PartA
J2WeldB.Part1 = J2PartB
J2WeldB.Parent = J2PartB
J2WeldB.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J2PartC = Instance.new("Part")
J2PartC.Anchored = false
J2PartC.CanCollide = true
J2PartC.Locked = true
J2PartC.formFactor = "Custom"
J2PartC.Shape = "Ball"
J2PartC.Size = Vector3.new(2,2,2)
J2PartC.TopSurface = 0
J2PartC.BottomSurface = 0
J2PartC.BrickColor = BrickColor.Black()
J2PartC.Parent = HoverCraft
J2PartC.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J2WeldC = Instance.new("Weld")
J2WeldC.Part0 = J2PartB
J2WeldC.Part1 = J2PartC
J2WeldC.Parent = J2PartC
J2WeldC.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J2PartD = Instance.new("Part")
J2PartD.Anchored = false
J2PartD.CanCollide = true
J2PartD.Locked = true
J2PartD.formFactor = "Custom"
J2PartD.Size = Vector3.new(1,ArmLength,1)
J2PartD.TopSurface = 0
J2PartD.BottomSurface = 0
J2PartD.Parent = HoverCraft
J2PartD.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J2WeldD = Instance.new("Weld")
J2WeldD.Part0 = J2PartC
J2WeldD.Part1 = J2PartD
J2WeldD.Parent = J2PartD
J2WeldD.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J2PartE = Instance.new("Part")
J2PartE.Anchored = false
J2PartE.CanCollide = true
J2PartE.Locked = true
J2PartE.formFactor = "Custom"
J2PartE.Shape = "Ball"
J2PartE.Size = Vector3.new(2,2,2)
J2PartE.TopSurface = 0
J2PartE.BottomSurface = 0
J2PartE.BrickColor = BrickColor.Black()
J2PartE.Parent = HoverCraft
J2PartE.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J2WeldE = Instance.new("Weld")
J2WeldE.Part0 = J2PartD
J2WeldE.Part1 = J2PartE
J2WeldE.Parent = J2PartE
J2WeldE.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J2PartF = Instance.new("Part")
J2PartF.Anchored = false
J2PartF.CanCollide = true
J2PartF.Locked = true
J2PartF.formFactor = "Custom"
J2PartF.Size = Vector3.new(1,ArmLength,1)
J2PartF.TopSurface = 0
J2PartF.BottomSurface = 0
J2PartF.Parent = HoverCraft
J2PartF.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J2WeldF = Instance.new("Weld")
J2WeldF.Part0 = J2PartE
J2WeldF.Part1 = J2PartF
J2WeldF.Parent = J2PartF
J2WeldF.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J2PartG = Instance.new("Part")
J2PartG.Anchored = false
J2PartG.CanCollide = true
J2PartG.Locked = true
J2PartG.formFactor = "Custom"
J2PartG.Shape = "Ball"
J2PartG.Size = Vector3.new(2,2,2)
J2PartG.TopSurface = 0
J2PartG.BottomSurface = 0
J2PartG.BrickColor = BrickColor.Black()
J2PartG.Parent = HoverCraft
J2PartG.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J2WeldG = Instance.new("Weld")
J2WeldG.Part0 = J2PartF
J2WeldG.Part1 = J2PartG
J2WeldG.Parent = J2PartG
J2WeldG.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J2PartH = Instance.new("Part")
J2PartH.Anchored = false
J2PartH.CanCollide = true
J2PartH.Locked = true
J2PartH.formFactor = "Custom"
J2PartH.Size = Vector3.new(1,1,ArmLength/2)
J2PartH.TopSurface = 0
J2PartH.BottomSurface = 0
J2PartH.Parent = HoverCraft
J2PartH.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J2WeldH = Instance.new("Weld")
J2WeldH.Part0 = J2PartG
J2WeldH.Part1 = J2PartH
J2WeldH.Parent = J2PartH
J2WeldH.C0 = CFrame.new(0,math.pi/5,ArmLength/4) * CFrame.Angles(-math.pi/5,0,0)

J2PartI = Instance.new("Part")
J2PartI.Anchored = false
J2PartI.CanCollide = true
J2PartI.Locked = true
J2PartI.formFactor = "Custom"
J2PartI.Size = Vector3.new(1,1,ArmLength/2)
J2PartI.TopSurface = 0
J2PartI.BottomSurface = 0
J2PartI.Parent = HoverCraft
J2PartI.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J2WeldI = Instance.new("Weld")
J2WeldI.Part0 = J2PartG
J2WeldI.Part1 = J2PartI
J2WeldI.Parent = J2PartI
J2WeldI.C0 = CFrame.new(0,math.pi/5,-ArmLength/4) * CFrame.Angles(math.pi/5,0,0)

J3PartA = Instance.new("Part")
J3PartA.Anchored = false
J3PartA.CanCollide = true
J3PartA.Locked = true
J3PartA.formFactor = "Custom"
J3PartA.Shape = "Ball"
J3PartA.Size = Vector3.new(2,2,2)
J3PartA.TopSurface = 0
J3PartA.BottomSurface = 0
J3PartA.BrickColor = BrickColor.Black()
J3PartA.Parent = HoverCraft
J3PartA.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J3WeldA = Instance.new("Weld")
J3WeldA.Part0 = PartK
J3WeldA.Part1 = J3PartA
J3WeldA.Parent = J3PartA
J3WeldA.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,math.pi,0)

J3PartB = Instance.new("Part")
J3PartB.Anchored = false
J3PartB.CanCollide = true
J3PartB.Locked = true
J3PartB.formFactor = "Custom"
J3PartB.Size = Vector3.new(1,ArmLength,1)
J3PartB.TopSurface = 0
J3PartB.BottomSurface = 0
J3PartB.Parent = HoverCraft
J3PartB.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J3WeldB = Instance.new("Weld")
J3WeldB.Part0 = J3PartA
J3WeldB.Part1 = J3PartB
J3WeldB.Parent = J3PartB
J3WeldB.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J3PartC = Instance.new("Part")
J3PartC.Anchored = false
J3PartC.CanCollide = true
J3PartC.Locked = true
J3PartC.formFactor = "Custom"
J3PartC.Shape = "Ball"
J3PartC.Size = Vector3.new(2,2,2)
J3PartC.TopSurface = 0
J3PartC.BottomSurface = 0
J3PartC.BrickColor = BrickColor.Black()
J3PartC.Parent = HoverCraft
J3PartC.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J3WeldC = Instance.new("Weld")
J3WeldC.Part0 = J3PartB
J3WeldC.Part1 = J3PartC
J3WeldC.Parent = J3PartC
J3WeldC.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J3PartD = Instance.new("Part")
J3PartD.Anchored = false
J3PartD.CanCollide = true
J3PartD.Locked = true
J3PartD.formFactor = "Custom"
J3PartD.Size = Vector3.new(1,ArmLength,1)
J3PartD.TopSurface = 0
J3PartD.BottomSurface = 0
J3PartD.Parent = HoverCraft
J3PartD.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J3WeldD = Instance.new("Weld")
J3WeldD.Part0 = J3PartC
J3WeldD.Part1 = J3PartD
J3WeldD.Parent = J3PartD
J3WeldD.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J3PartE = Instance.new("Part")
J3PartE.Anchored = false
J3PartE.CanCollide = true
J3PartE.Locked = true
J3PartE.formFactor = "Custom"
J3PartE.Shape = "Ball"
J3PartE.Size = Vector3.new(2,2,2)
J3PartE.TopSurface = 0
J3PartE.BottomSurface = 0
J3PartE.BrickColor = BrickColor.Black()
J3PartE.Parent = HoverCraft
J3PartE.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J3WeldE = Instance.new("Weld")
J3WeldE.Part0 = J3PartD
J3WeldE.Part1 = J3PartE
J3WeldE.Parent = J3PartE
J3WeldE.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J3PartF = Instance.new("Part")
J3PartF.Anchored = false
J3PartF.CanCollide = true
J3PartF.Locked = true
J3PartF.formFactor = "Custom"
J3PartF.Size = Vector3.new(1,ArmLength,1)
J3PartF.TopSurface = 0
J3PartF.BottomSurface = 0
J3PartF.Parent = HoverCraft
J3PartF.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J3WeldF = Instance.new("Weld")
J3WeldF.Part0 = J3PartE
J3WeldF.Part1 = J3PartF
J3WeldF.Parent = J3PartF
J3WeldF.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J3PartG = Instance.new("Part")
J3PartG.Anchored = false
J3PartG.CanCollide = true
J3PartG.Locked = true
J3PartG.formFactor = "Custom"
J3PartG.Shape = "Ball"
J3PartG.Size = Vector3.new(2,2,2)
J3PartG.TopSurface = 0
J3PartG.BottomSurface = 0
J3PartG.BrickColor = BrickColor.Black()
J3PartG.Parent = HoverCraft
J3PartG.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J3WeldG = Instance.new("Weld")
J3WeldG.Part0 = J3PartF
J3WeldG.Part1 = J3PartG
J3WeldG.Parent = J3PartG
J3WeldG.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J3PartH = Instance.new("Part")
J3PartH.Anchored = false
J3PartH.CanCollide = true
J3PartH.Locked = true
J3PartH.formFactor = "Custom"
J3PartH.Size = Vector3.new(1,1,ArmLength/2)
J3PartH.TopSurface = 0
J3PartH.BottomSurface = 0
J3PartH.Parent = HoverCraft
J3PartH.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J3WeldH = Instance.new("Weld")
J3WeldH.Part0 = J3PartG
J3WeldH.Part1 = J3PartH
J3WeldH.Parent = J3PartH
J3WeldH.C0 = CFrame.new(0,math.pi/5,ArmLength/4) * CFrame.Angles(-math.pi/5,0,0)

J3PartI = Instance.new("Part")
J3PartI.Anchored = false
J3PartI.CanCollide = true
J3PartI.Locked = true
J3PartI.formFactor = "Custom"
J3PartI.Size = Vector3.new(1,1,ArmLength/2)
J3PartI.TopSurface = 0
J3PartI.BottomSurface = 0
J3PartI.Parent = HoverCraft
J3PartI.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J3WeldI = Instance.new("Weld")
J3WeldI.Part0 = J3PartG
J3WeldI.Part1 = J3PartI
J3WeldI.Parent = J3PartI
J3WeldI.C0 = CFrame.new(0,math.pi/5,-ArmLength/4) * CFrame.Angles(math.pi/5,0,0)

J4PartA = Instance.new("Part")
J4PartA.Anchored = false
J4PartA.CanCollide = true
J4PartA.Locked = true
J4PartA.formFactor = "Custom"
J4PartA.Shape = "Ball"
J4PartA.Size = Vector3.new(2,2,2)
J4PartA.TopSurface = 0
J4PartA.BottomSurface = 0
J4PartA.BrickColor = BrickColor.Black()
J4PartA.Parent = HoverCraft
J4PartA.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J4WeldA = Instance.new("Weld")
J4WeldA.Part0 = PartL
J4WeldA.Part1 = J4PartA
J4WeldA.Parent = J4PartA
J4WeldA.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)

J4PartB = Instance.new("Part")
J4PartB.Anchored = false
J4PartB.CanCollide = true
J4PartB.Locked = true
J4PartB.formFactor = "Custom"
J4PartB.Size = Vector3.new(1,ArmLength,1)
J4PartB.TopSurface = 0
J4PartB.BottomSurface = 0
J4PartB.Parent = HoverCraft
J4PartB.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J4WeldB = Instance.new("Weld")
J4WeldB.Part0 = J4PartA
J4WeldB.Part1 = J4PartB
J4WeldB.Parent = J4PartB
J4WeldB.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J4PartC = Instance.new("Part")
J4PartC.Anchored = false
J4PartC.CanCollide = true
J4PartC.Locked = true
J4PartC.formFactor = "Custom"
J4PartC.Shape = "Ball"
J4PartC.Size = Vector3.new(2,2,2)
J4PartC.TopSurface = 0
J4PartC.BottomSurface = 0
J4PartC.BrickColor = BrickColor.Black()
J4PartC.Parent = HoverCraft
J4PartC.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J4WeldC = Instance.new("Weld")
J4WeldC.Part0 = J4PartB
J4WeldC.Part1 = J4PartC
J4WeldC.Parent = J4PartC
J4WeldC.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J4PartD = Instance.new("Part")
J4PartD.Anchored = false
J4PartD.CanCollide = true
J4PartD.Locked = true
J4PartD.formFactor = "Custom"
J4PartD.Size = Vector3.new(1,ArmLength,1)
J4PartD.TopSurface = 0
J4PartD.BottomSurface = 0
J4PartD.Parent = HoverCraft
J4PartD.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J4WeldD = Instance.new("Weld")
J4WeldD.Part0 = J4PartC
J4WeldD.Part1 = J4PartD
J4WeldD.Parent = J4PartD
J4WeldD.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J4PartE = Instance.new("Part")
J4PartE.Anchored = false
J4PartE.CanCollide = true
J4PartE.Locked = true
J4PartE.formFactor = "Custom"
J4PartE.Shape = "Ball"
J4PartE.Size = Vector3.new(2,2,2)
J4PartE.TopSurface = 0
J4PartE.BottomSurface = 0
J4PartE.BrickColor = BrickColor.Black()
J4PartE.Parent = HoverCraft
J4PartE.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J4WeldE = Instance.new("Weld")
J4WeldE.Part0 = J4PartD
J4WeldE.Part1 = J4PartE
J4WeldE.Parent = J4PartE
J4WeldE.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J4PartF = Instance.new("Part")
J4PartF.Anchored = false
J4PartF.CanCollide = true
J4PartF.Locked = true
J4PartF.formFactor = "Custom"
J4PartF.Size = Vector3.new(1,ArmLength,1)
J4PartF.TopSurface = 0
J4PartF.BottomSurface = 0
J4PartF.Parent = HoverCraft
J4PartF.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J4WeldF = Instance.new("Weld")
J4WeldF.Part0 = J4PartE
J4WeldF.Part1 = J4PartF
J4WeldF.Parent = J4PartF
J4WeldF.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J4PartG = Instance.new("Part")
J4PartG.Anchored = false
J4PartG.CanCollide = true
J4PartG.Locked = true
J4PartG.formFactor = "Custom"
J4PartG.Shape = "Ball"
J4PartG.Size = Vector3.new(2,2,2)
J4PartG.TopSurface = 0
J4PartG.BottomSurface = 0
J4PartG.BrickColor = BrickColor.Black()
J4PartG.Parent = HoverCraft
J4PartG.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J4WeldG = Instance.new("Weld")
J4WeldG.Part0 = J4PartF
J4WeldG.Part1 = J4PartG
J4WeldG.Parent = J4PartG
J4WeldG.C0 = CFrame.new(0,ArmLength/2,0) * CFrame.Angles(0,0,0)

J4PartH = Instance.new("Part")
J4PartH.Anchored = false
J4PartH.CanCollide = true
J4PartH.Locked = true
J4PartH.formFactor = "Custom"
J4PartH.Size = Vector3.new(1,1,ArmLength/2)
J4PartH.TopSurface = 0
J4PartH.BottomSurface = 0
J4PartH.Parent = HoverCraft
J4PartH.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J4WeldH = Instance.new("Weld")
J4WeldH.Part0 = J4PartG
J4WeldH.Part1 = J4PartH
J4WeldH.Parent = J4PartH
J4WeldH.C0 = CFrame.new(0,math.pi/5,ArmLength/4) * CFrame.Angles(-math.pi/5,0,0)

J4PartI = Instance.new("Part")
J4PartI.Anchored = false
J4PartI.CanCollide = true
J4PartI.Locked = true
J4PartI.formFactor = "Custom"
J4PartI.Size = Vector3.new(1,1,ArmLength/2)
J4PartI.TopSurface = 0
J4PartI.BottomSurface = 0
J4PartI.Parent = HoverCraft
J4PartI.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
J4WeldI = Instance.new("Weld")
J4WeldI.Part0 = J4PartG
J4WeldI.Part1 = J4PartI
J4WeldI.Parent = J4PartI
J4WeldI.C0 = CFrame.new(0,math.pi/5,-ArmLength/4) * CFrame.Angles(math.pi/5,0,0)

Balloon = Instance.new("Part")
Balloon.Anchored = false
Balloon.CanCollide = true
Balloon.Locked = true
Balloon.formFactor = "Custom"
Balloon.Size = Vector3.new(0.3,0.3,0.3)
Balloon.Transparency = 1
Balloon.TopSurface = 0
Balloon.BottomSurface = 0
Balloon.BrickColor = BrickColor.Black()
Balloon.Parent = HoverCraft
Balloon.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
BalloonW = Instance.new("Weld")
BalloonW.Part0 = PartA
BalloonW.Part1 = Balloon
BalloonW.Parent = Balloon
BalloonW.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
BalloonM = Instance.new("SpecialMesh")
BalloonM.MeshType = "Sphere"
BalloonM.Scale = Vector3.new(1,1,1)
BalloonM.Parent = Balloon

Jump = false

Gyro = Instance.new("BodyGyro")
Gyro.maxTorque = Vector3.new(math.huge,0,math.huge)
Gyro.cframe = CFrame.new(0,0,0)
Gyro.Parent = Seat

AngleVelocity = Instance.new("BodyAngularVelocity")
AngleVelocity.maxTorque = Vector3.new(0,math.huge,0)
AngleVelocity.angularvelocity = Vector3.new(0,0,0)
AngleVelocity.Parent = Seat

DriveVelocity = Instance.new("BodyVelocity")
DriveVelocity.maxForce = Vector3.new(0,0,0)
DriveVelocity.Parent = Seat

function FTBurn(BurntModel)
coroutine.resume(coroutine.create(function()
char = BurntModel

model = Instance.new("Model")
model.Name = "Burnt"
model.Parent = char

for _,j in pairs (char:GetChildren()) do 
	if j.className == "CharacterMesh" then 
		j:Remove() 
	end
end

local part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Really black")
part.Size = Vector3.new(1,1,1)
part.Parent = model
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1.01,2.005,1.01)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Left Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
local part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Really black")
part.Size = Vector3.new(1,1,1)
part.Parent = model
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1.01,2.005,1.01)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Right Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
local part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Really black")
part.Size = Vector3.new(1,1,1)
part.Parent = model
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1.01,2.005,1.01)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Left Leg"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
local part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Really black")
part.Size = Vector3.new(1,1,1)
part.Parent = model
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1.01,2.005,1.01)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Right Leg"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
local part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Really black")
part.Size = Vector3.new(1,1,1)
part.Parent = model
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(2.005,2.005,1.01)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Torso"]
weld.Part0 = weld.Parent
weld.Part1 = part

local part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Really black")
part.Size = Vector3.new(1,1,1)
part.Parent = model
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Head"
mesh.Scale = Vector3.new(1.26,1.26,1.26)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Head"]
weld.Part0 = weld.Parent
weld.Part1 = part

Delay(0,function()
	while wait(1) do
		char.Humanoid.WalkSpeed = math.random(-20,20)
	end
end)

for _,v in pairs(char:GetChildren()) do if v.className == "Part" then Instance.new("Fire",v) end end
for _,v in pairs(model:GetChildren()) do if v.className == "Part" then v.Transparency = 1 end end
for i = 1,1000 do wait()
for _,v in pairs(model:GetChildren()) do if v.className == "Part" then v.Transparency = v.Transparency - 0.001 end end
char.Humanoid:TakeDamage(0.11)
end
for _,v in pairs(char:GetChildren()) do if v.className == "Part" then v.BrickColor = BrickColor.new("Really black") end end
model:Remove()
char:BreakJoints()
end))
end

function LegsDown()
if Mode == 1 then Velocity.Parent = Seat end
for i = 1,6 do wait()
J1WeldA.C0 = J1WeldA.C0 * CFrame.Angles(0,0,-(-math.pi/(math.pi*10)))
J1WeldC.C0 = J1WeldC.C0 * CFrame.Angles(0,0,-(-math.pi/(math.pi*10)))
J1WeldE.C0 = J1WeldE.C0 * CFrame.Angles(0,0,-(-math.pi/(math.pi*10)))
J2WeldA.C0 = J2WeldA.C0 * CFrame.Angles(0,0,-(-math.pi/(math.pi*10)))
J2WeldC.C0 = J2WeldC.C0 * CFrame.Angles(0,0,-(-math.pi/(math.pi*10)))
J2WeldE.C0 = J2WeldE.C0 * CFrame.Angles(0,0,-(-math.pi/(math.pi*10)))
J3WeldA.C0 = J3WeldA.C0 * CFrame.Angles(0,0,-(-math.pi/(math.pi*10)))
J3WeldC.C0 = J3WeldC.C0 * CFrame.Angles(0,0,-(-math.pi/(math.pi*10)))
J3WeldE.C0 = J3WeldE.C0 * CFrame.Angles(0,0,-(-math.pi/(math.pi*10)))
J4WeldA.C0 = J4WeldA.C0 * CFrame.Angles(0,0,-(-math.pi/(math.pi*10)))
J4WeldC.C0 = J4WeldC.C0 * CFrame.Angles(0,0,-(-math.pi/(math.pi*10)))
J4WeldE.C0 = J4WeldE.C0 * CFrame.Angles(0,0,-(-math.pi/(math.pi*10)))
end
end

function LegsUp()
for i = 1,6 do wait()
J1WeldA.C0 = J1WeldA.C0 * CFrame.Angles(0,0,(-math.pi/(math.pi*10)))
J1WeldC.C0 = J1WeldC.C0 * CFrame.Angles(0,0,(-math.pi/(math.pi*10)))
J1WeldE.C0 = J1WeldE.C0 * CFrame.Angles(0,0,(-math.pi/(math.pi*10)))
J2WeldA.C0 = J2WeldA.C0 * CFrame.Angles(0,0,(-math.pi/(math.pi*10)))
J2WeldC.C0 = J2WeldC.C0 * CFrame.Angles(0,0,(-math.pi/(math.pi*10)))
J2WeldE.C0 = J2WeldE.C0 * CFrame.Angles(0,0,(-math.pi/(math.pi*10)))
J3WeldA.C0 = J3WeldA.C0 * CFrame.Angles(0,0,(-math.pi/(math.pi*10)))
J3WeldC.C0 = J3WeldC.C0 * CFrame.Angles(0,0,(-math.pi/(math.pi*10)))
J3WeldE.C0 = J3WeldE.C0 * CFrame.Angles(0,0,(-math.pi/(math.pi*10)))
J4WeldA.C0 = J4WeldA.C0 * CFrame.Angles(0,0,(-math.pi/(math.pi*10)))
J4WeldC.C0 = J4WeldC.C0 * CFrame.Angles(0,0,(-math.pi/(math.pi*10)))
J4WeldE.C0 = J4WeldE.C0 * CFrame.Angles(0,0,(-math.pi/(math.pi*10)))
end
end

Legs = 0
LegsDown()

function TempSeats()

local PartAA = Instance.new("Seat")
PartAA.Anchored = false
PartAA.CanCollide = false
PartAA.Locked = true
PartAA.formFactor = "Custom"
PartAA.Size = Vector3.new(2,0.5,2)
PartAA.TopSurface = 0
PartAA.BottomSurface = 0
PartAA.BrickColor = BrickColor.Black()
PartAA.Parent = HoverCraft
PartAA.Name = "TempSeatA"
PartAA.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
local WeldAA = Instance.new("Weld")
WeldAA.Part0 = Seat
WeldAA.Part1 = PartAA
WeldAA.Parent = PartAA
WeldAA.C0 = CFrame.new(0,0.25,4.75) * CFrame.Angles(0,math.pi,0)

local PartBB = Instance.new("Seat")
PartBB.Anchored = false
PartBB.CanCollide = false
PartBB.Locked = true
PartBB.formFactor = "Custom"
PartBB.Size = Vector3.new(2,0.5,2)
PartBB.TopSurface = 0
PartBB.BottomSurface = 0
PartBB.BrickColor = BrickColor.Black()
PartBB.Parent = HoverCraft
PartBB.Name = "TempSeatB"
PartBB.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
local WeldBB = Instance.new("Weld")
WeldBB.Part0 = Seat
WeldBB.Part1 = PartBB
WeldBB.Parent = PartBB
WeldBB.C0 = CFrame.new(-4.75,0.25,0) * CFrame.Angles(0,math.pi/2,0)

local PartCC = Instance.new("Seat")
PartCC.Anchored = false
PartCC.CanCollide = false
PartCC.Locked = true
PartCC.formFactor = "Custom"
PartCC.Size = Vector3.new(2,0.5,2)
PartCC.TopSurface = 0
PartCC.BottomSurface = 0
PartCC.BrickColor = BrickColor.Black()
PartCC.Parent = HoverCraft
PartCC.Name = "TempSeatC"
PartCC.CFrame = Character.Torso.CFrame - Vector3.new(0,2,0)
local WeldCC = Instance.new("Weld")
WeldCC.Part0 = Seat
WeldCC.Part1 = PartCC
WeldCC.Parent = PartCC
WeldCC.C0 = CFrame.new(4.75,0.25,0) * CFrame.Angles(0,-math.pi/2,0)

coroutine.resume(coroutine.create(function()
for i = 1,0,-0.1 do
PartAA.Transparency = i
PartBB.Transparency = i
PartCC.Transparency = i
wait()
end
end))
end



function DelTempSeats()
pcall(function()
local PartAA = HoverCraft.TempSeatA
local PartBB = HoverCraft.TempSeatB
local PartCC = HoverCraft.TempSeatC
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
PartAA.Transparency = i
PartBB.Transparency = i
PartCC.Transparency = i
wait()
end
PartAA:Destroy()
PartBB:Destroy()
PartCC:Destroy()
end))
end)
end

function MakeBall()
DriveVelocity.maxForce = Vector3.new(0,0,0)
DriveVelocity.velocity = Vector3.new(0,0,0)
wait()
Balloon.Transparency = 0
BalloonW.C0 = CFrame.new(0,12,0) * CFrame.Angles(0,0,0)
for i = 1,30 do wait()
BalloonW.C0 = BalloonW.C0 + Vector3.new(0,0.74,0)
BalloonM.Scale = BalloonM.Scale + Vector3.new(5,5,5)
end
DriveVelocity.maxForce = Vector3.new(math.huge,math.huge,math.huge)
DriveVelocity.velocity = Vector3.new(0,math.pi*ArmLength,0)
end

function dmgcounter(part,name)
dmgcm = Instance.new("Model", part.Parent)
dmgcm.Name = name
dmgc = Instance.new("Part", dmgcm)
dmgc.Name = "Head"
dmgc.BrickColor = BrickColor.new("Bright red")
dmgc.FormFactor = "Custom"
dmgc.Size = Vector3.new(0.7,0.2,0.7)
dmgc.TopSurface = "Smooth"
dmgc.BottomSurface = "Smooth"
dmgc.CanCollide = false
dmgc.Anchored = true
Instance.new("Humanoid", dmgcm).MaxHealth = 0
game:GetService("Debris"):AddItem(dmgcm,3)
dmgc.CFrame = CFrame.new(part.CFrame.x+math.random(-2,2),math.random(7,8),part.CFrame.z+math.random(-2,2))
coroutine.resume(coroutine.create(function()
while true do
wait(0.1)
dmgc.CFrame = dmgc.CFrame*CFrame.new(0,0.01,0)
end
end))
end

function DeleBall()
for i = 1,30 do wait()
BalloonW.C0 = BalloonW.C0 - Vector3.new(0,0.74,0)
BalloonM.Scale = BalloonM.Scale - Vector3.new(5,5,5)
end
Balloon.Transparency = 1
BalloonW.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
DriveVelocity.maxForce = Vector3.new(0,0,0)
DriveVelocity.velocity = Vector3.new(0,0,0)
end

Blah = true
EndBlah = true

Mode = 0
Walking = false
Walk = false
WalkA = false
WalkD = false
WalkS = false
WalkW = false

function SpiderWalkW()
if not Walk then
Walk = true
if WalkW then

for i = 1, 2 do wait()
J1WeldA.C0 = J1WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J2WeldA.C0 = J2WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J3WeldA.C0 = J3WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J4WeldA.C0 = J4WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
end
DriveVelocity.maxForce = Vector3.new(math.huge,0,math.huge)
while (Mode == 0) and WalkW do wait()
for i = 1,4 do wait()
J1WeldA.C0 = J1WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J2WeldA.C0 = J2WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J3WeldA.C0 = J3WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J4WeldA.C0 = J4WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
DriveVelocity.velocity = Seat.CFrame.lookVector * movespeed

end
for i = 1,4 do wait()
J1WeldA.C0 = J1WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J2WeldA.C0 = J2WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J3WeldA.C0 = J3WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J4WeldA.C0 = J4WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
DriveVelocity.velocity = Seat.CFrame.lookVector * movespeed

end
end
DriveVelocity.maxForce = Vector3.new(0,0,0)
DriveVelocity.velocity = Vector3.new(0,0,0)
for i = 1, 2 do wait()
J1WeldA.C0 = J1WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J2WeldA.C0 = J2WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J3WeldA.C0 = J3WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J4WeldA.C0 = J4WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
end

end
Walk = false
end
end

function SpiderWalkS()
if not Walk then
Walk = true
if WalkS then

for i = 1, 2 do wait()
J1WeldA.C0 = J1WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J2WeldA.C0 = J2WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J3WeldA.C0 = J3WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J4WeldA.C0 = J4WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
end
DriveVelocity.maxForce = Vector3.new(math.huge,0,math.huge)

while (Mode == 0) and WalkS do wait()
for i = 1,4 do wait()
J1WeldA.C0 = J1WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J2WeldA.C0 = J2WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J3WeldA.C0 = J3WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J4WeldA.C0 = J4WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
DriveVelocity.velocity = Seat.CFrame.lookVector * -15

end
for i = 1,4 do wait()
J1WeldA.C0 = J1WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J2WeldA.C0 = J2WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J3WeldA.C0 = J3WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J4WeldA.C0 = J4WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
DriveVelocity.velocity = Seat.CFrame.lookVector * -15

end
end
DriveVelocity.maxForce = Vector3.new(0,0,0)
DriveVelocity.velocity = Vector3.new(0,0,0)
for i = 1, 2 do wait()
J1WeldA.C0 = J1WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J2WeldA.C0 = J2WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J3WeldA.C0 = J3WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J4WeldA.C0 = J4WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
end

end
Walk = false
end
end

function SpiderWalkA()
if not Walk then
Walk = true
if WalkA then

for i = 1, 2 do wait()
J1WeldA.C0 = J1WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J2WeldA.C0 = J2WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J3WeldA.C0 = J3WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J4WeldA.C0 = J4WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
end
AngleVelocity.angularvelocity = Vector3.new(0,2,0)
while (Mode == 0) and WalkA do wait()
for i = 1,4 do wait()
J1WeldA.C0 = J1WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J2WeldA.C0 = J2WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J3WeldA.C0 = J3WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J4WeldA.C0 = J4WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
end
for i = 1,4 do wait()
J1WeldA.C0 = J1WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J2WeldA.C0 = J2WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J3WeldA.C0 = J3WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J4WeldA.C0 = J4WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
end
end
AngleVelocity.angularvelocity = Vector3.new(0,0,0)
for i = 1, 2 do wait()
J1WeldA.C0 = J1WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J2WeldA.C0 = J2WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J3WeldA.C0 = J3WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J4WeldA.C0 = J4WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
end

end
Walk = false


elseif Walk then

if WalkW then
AngleVelocity.angularvelocity = Vector3.new(0,0.5,0)
while (Mode == 0) and WalkW and WalkA do wait() end
AngleVelocity.angularvelocity = Vector3.new(0,0,0)
end

end
end

function SpiderWalkD()
if not Walk then
Walk = true
if WalkD then

for i = 1, 2 do wait()
J1WeldA.C0 = J1WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J2WeldA.C0 = J2WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J3WeldA.C0 = J3WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J4WeldA.C0 = J4WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
end
AngleVelocity.angularvelocity = Vector3.new(0,-3,0)
while (Mode == 0) and WalkD do wait()
for i = 1,4 do wait()
J1WeldA.C0 = J1WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J2WeldA.C0 = J2WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J3WeldA.C0 = J3WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J4WeldA.C0 = J4WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
end
for i = 1,4 do wait()
J1WeldA.C0 = J1WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J2WeldA.C0 = J2WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J3WeldA.C0 = J3WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
J4WeldA.C0 = J4WeldA.C0 * CFrame.Angles((-math.pi/(math.pi*10)),0,0)
end
end
AngleVelocity.angularvelocity = Vector3.new(0,0,0)
for i = 1, 2 do wait()
J1WeldA.C0 = J1WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J2WeldA.C0 = J2WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J3WeldA.C0 = J3WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
J4WeldA.C0 = J4WeldA.C0 * CFrame.Angles(-(-math.pi/(math.pi*10)),0,0)
end

end
Walk = false


elseif Walk then

if WalkW then
AngleVelocity.angularvelocity = Vector3.new(0,-0.5,0)
while (Mode == 0) and WalkW and WalkD do wait() end
AngleVelocity.angularvelocity = Vector3.new(0,0,0)
end

end
end

function BFlyW()

end

function BFlyA()
if not Walk then
Walk = true
if WalkA then

AngleVelocity.angularvelocity = Vector3.new(0,1,0)
while WalkA do wait() end
AngleVelocity.angularvelocity = Vector3.new(0,0,0)

end
Walk = false
end
end

function BFlyS()
if not Walk then
Walk = true
if WalkS then


end
Walk = false
end
end

function BFlyD()
if not Walk then
Walk = true
if WalkD then

AngleVelocity.angularvelocity = Vector3.new(0,-1,0)
while WalkD do wait() end
AngleVelocity.angularvelocity = Vector3.new(0,0,0)

end
Walk = false
end
end

function HatchUp()
for i = 1,12 do wait()
HWeldB.C0 = HWeldB.C0 * CFrame.Angles(0,-math.pi/24,0)
end
end

function HatchDown()
for i = 1,12 do wait()
HWeldB.C0 = HWeldB.C0 * CFrame.Angles(0,math.pi/24,0)
end
end

function CloseJaw()
for i = 1,7 do wait()
GunWeldD.C0 = GunWeldD.C0 * CFrame.Angles(0.1,0,0)
GunWeldK.C0 = GunWeldK.C0 * CFrame.Angles(-0.1,0,0)
end
end
function OpenJaw()
for i = 1,7 do wait()
GunWeldD.C0 = GunWeldD.C0 * CFrame.Angles(-0.1,0,0)
GunWeldK.C0 = GunWeldK.C0 * CFrame.Angles(0.1,0,0)
end
end


function Cram()
if Mode == 1 then Velocity.Parent = Seat end
for i = 1,18 do wait()
J1WeldA.C0 = J1WeldA.C0 * CFrame.Angles(0,0,(math.pi/(math.pi*10)))
J1WeldC.C0 = J1WeldC.C0 * CFrame.Angles(0,0,(-math.pi/(math.pi*10)))
J1WeldE.C0 = J1WeldE.C0 * CFrame.Angles(0,0,(math.pi/(math.pi*10)))
J2WeldA.C0 = J2WeldA.C0 * CFrame.Angles(0,0,(math.pi/(math.pi*10)))
J2WeldC.C0 = J2WeldC.C0 * CFrame.Angles(0,0,(-math.pi/(math.pi*10)))
J2WeldE.C0 = J2WeldE.C0 * CFrame.Angles(0,0,(math.pi/(math.pi*10)))
J3WeldA.C0 = J3WeldA.C0 * CFrame.Angles(0,0,(math.pi/(math.pi*10)))
J3WeldC.C0 = J3WeldC.C0 * CFrame.Angles(0,0,(-math.pi/(math.pi*10)))
J3WeldE.C0 = J3WeldE.C0 * CFrame.Angles(0,0,(math.pi/(math.pi*10)))
J4WeldA.C0 = J4WeldA.C0 * CFrame.Angles(0,0,(math.pi/(math.pi*10)))
J4WeldC.C0 = J4WeldC.C0 * CFrame.Angles(0,0,(-math.pi/(math.pi*10)))
J4WeldE.C0 = J4WeldE.C0 * CFrame.Angles(0,0,(math.pi/(math.pi*10)))
end
end

function DeCram()
if Mode == 1 then Velocity.Parent = Seat end
for i = 1,18 do wait()
J1WeldA.C0 = J1WeldA.C0 * CFrame.Angles(0,0,(-math.pi/(math.pi*15)))
J1WeldC.C0 = J1WeldC.C0 * CFrame.Angles(0,0,(math.pi/(math.pi*5)))
J1WeldE.C0 = J1WeldE.C0 * CFrame.Angles(0,0,(math.pi/(math.pi*10)))
J2WeldA.C0 = J2WeldA.C0 * CFrame.Angles(0,0,(-math.pi/(math.pi*15)))
J2WeldC.C0 = J2WeldC.C0 * CFrame.Angles(0,0,(math.pi/(math.pi*5)))
J2WeldE.C0 = J2WeldE.C0 * CFrame.Angles(0,0,(math.pi/(math.pi*10)))
J3WeldA.C0 = J3WeldA.C0 * CFrame.Angles(0,0,(-math.pi/(math.pi*15)))
J3WeldC.C0 = J3WeldC.C0 * CFrame.Angles(0,0,(math.pi/(math.pi*5)))
J3WeldE.C0 = J3WeldE.C0 * CFrame.Angles(0,0,(math.pi/(math.pi*10)))
J4WeldA.C0 = J4WeldA.C0 * CFrame.Angles(0,0,(-math.pi/(math.pi*15)))
J4WeldC.C0 = J4WeldC.C0 * CFrame.Angles(0,0,(math.pi/(math.pi*5)))
J4WeldE.C0 = J4WeldE.C0 * CFrame.Angles(0,0,(math.pi/(math.pi*10)))
end
end

function Shoot()

if Mode == 0 then

coroutine.resume(coroutine.create(function()
local Firebawl = Instance.new("Part")
Firebawl.Shape = "Ball"
Firebawl.Size = Vector3.new(2,2,2)
local firelight = Instance.new("PointLight",Firebawl)
firelight.Color = Color3.new(1,0.5,0)
firelight.Brightness = 100
Firebawl.TopSurface = 0
Firebawl.BottomSurface = 0
Firebawl.BrickColor = BrickColor.new("Bright red")
local FirebawlF = Instance.new("Fire",Firebawl)
FirebawlF.Size = 5

coroutine.resume(coroutine.create(function()
while wait(0.1) do
local Firebawl2 = Instance.new("Part",Firebawl)
Firebawl2.formFactor = 3
Firebawl2.Size = Vector3.new(2,2,2)
Firebawl2.BrickColor = BrickColor.new("Bright red")
Firebawl2.CanCollide = false
Firebawl2.Anchored = true
Firebawl2.TopSurface = 0
Firebawl2.BottomSurface = 0
Firebawl2.CFrame = (Firebawl.CFrame*CFrame.new(0,0,1))*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(1,360)))
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
Firebawl2.Transparency = i
local catafirec = Firebawl2.CFrame
Firebawl2.Size = Firebawl2.Size - Vector3.new(0.2,0.2,0.2)
Firebawl2.CFrame = catafirec
wait()
end
Firebawl2:Destroy()
end))
end

end))

local FirebawlVe = Instance.new("BodyVelocity",Firebawl)
FirebawlVe.velocity = Seat.CFrame.lookVector*90
FirebawlVe.maxForce = Vector3.new()*math.huge
Firebawl.CFrame = Seat.CFrame*CFrame.new(0,0,-9.5) 
Firebawl.Parent = workspace
Firebawl.Touched:connect(function(BLAAA)
	if game.Players:GetPlayerFromCharacter(BLAAA.Parent) then
		if BLAAA.Parent ~= Character then
			FTBurn(BLAAA.Parent)
			Firebawl:Destroy() 
			Firebawl2:Destroy()
		end
	end
end)
wait(5)
Firebawl:Destroy()
Firebawl2:Destroy()
end))

elseif Mode == 1 then

coroutine.resume(coroutine.create(function()

local BOMB = Instance.new("Part")
Bomb.formFactor = "Symmetric"
Bomb.Shape = "Ball"
Bomb.Anchored = false
Bomb.Locked = true
Bomb.CanCollide = true
Bomb.BrickColor = BrickColor.new("Really black")
Bomb.Size = Vector3.new(3,3,3)
Bomb.TopSurface = 0
Bomb.BottomSurface = 0
Bomb.Parent = game.Workspace
Bomb.CFrame = Seat.CFrame * CFrame.new(0,0,-9.5,0) * CFrame.Angles(math.pi/math.random(1,10),math.pi/math.random(1,10),math.pi/math.random(1,10))
local BombHandle = Instance.new("Part")
BombHandle.formFactor = "Custom"
BombHandle.Anchored = false
BombHandle.Locked = true
BombHandle.CanCollide = true
BombHandle.BrickColor = BrickColor.new("Really black")
BombHandle.Size = Vector3.new(1.2,1,1.2)
BombHandle.TopSurface = 0
BombHandle.BottomSurface = 0
BombHandle.Parent = Bomb
local BHMesh = Instance.new("SpecialMesh",BombHandle)
local BHWeld = Instance.new("Weld",BombHandle)
BHWeld.Part0 = Bomb
BHWeld.Part1 = BombHandle
BHWeld.C0 = CFrame.new(0,1.5,0)

end))

end

end

Seats = false

hatch = true

if script.Parent == nil or script.Parent.Name == Player.Name or script.Parent.Parent.Name == Player.Name then
Hopper = Instance.new("HopperBin")
Hopper.Name = "BNS"
Hopper.Parent = Player.Backpack
end

function onKeyDown(key)
if Blah == true then
Blah = false

if key == "f" then
OpenJaw()
Shoot()
CloseJaw()
end

if key == "x" then
Cram()
end

if key == "c" then
DeCram()
end

if key == "1" or key == "z" then
if Mode == 0 then
if hatch then
hatch = false
HatchUp()
elseif not hatch then
hatch = true
HatchDown()
end
end
end

if key == "l" then
if Seats == false then
if HoverCraft:FindFirstChild("TempSeatA") or HoverCraft:FindFirstChild("TempSeatB") or HoverCraft:FindFirstChild("TempSeatC") then
Seats = true
DelTempSeats()
Seats = false
else
Seats = true
TempSeats()
Seats = false
end
end
end

if string.byte(key) == 8 then
Character.Torso.CFrame = Seat.CFrame*CFrame.new(0,2,0)
end

if key == "/" then
if Mode == 0 and not Walk then
if not Jump then
Jump = true
LegsDown()
DriveVelocity.maxForce = Vector3.new(math.huge,math.huge,math.huge)
DriveVelocity.velocity = Vector3.new(Seat.CFrame.lookVector.x * (movespeed+10),20,Seat.CFrame.lookVector.z * (movespeed+10))
wait()
LegsUp()
wait(0.6)
DriveVelocity.maxForce = Vector3.new(0,0,0)
DriveVelocity.velocity = Vector3.new(0,0,0)
wait(0.7)
Jump = false
end
end
end

if key == "p" and (not WalkW and not WalkA and not WalkS and not WalkD) and not Walk then
if Mode == 0 then
Mode = 1
if not hatch then HatchDown() hatch = true end
LegsUp()
LegsUp()
MakeBall()
elseif Mode == 1 then
Mode = 0

DeleBall()
LegsDown()
LegsDown()

end

end

Sit = Character.Humanoid.Sit

if Mode == 0 and Sit then

if key == "w" then
WalkW = true
coroutine.resume(coroutine.create(function()
SpiderWalkW()
end))

elseif key == "a" then
WalkA = true
coroutine.resume(coroutine.create(function()
SpiderWalkA()
end))

elseif key == "s" then
WalkS = true
coroutine.resume(coroutine.create(function()
SpiderWalkS()
end))

elseif key == "d" then
WalkD = true
coroutine.resume(coroutine.create(function()
SpiderWalkD()
end))
end

elseif Mode == 1 and Sit then

if key == "w" then
WalkW = true
coroutine.resume(coroutine.create(function()
BFlyW()
end))

elseif key == "a" then
WalkA = true
coroutine.resume(coroutine.create(function()
BFlyA()
end))

elseif key == "s" then
WalkS = true
coroutine.resume(coroutine.create(function()
BFlyS()
end))

elseif key == "d" then
WalkD = true
coroutine.resume(coroutine.create(function()
BFlyD()
end))

end

end

Blah = true
end
end

function onKeyUp(key)
key = key:lower()
if key == "w" then
WalkW = false
elseif key == "a" then
WalkA = false
elseif key == "s" then
WalkS = false
elseif key == "d" then
WalkD = false
end
end

function Selected(Mouse) 
Mouse.Icon = "rbxasset://textures\\GunCursor.png"
Mouse.KeyDown:connect(onKeyDown)
Mouse.KeyUp:connect(onKeyUp)
Mouse.Button1Down:connect(function()    onButton1Down(Mouse)    end)
end 

Hopper.Selected:connect(Selected)
