--[[_(_bob371's_Guided_Missle_)_]]
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------

Player = game.Players.LocalPlayer
Character = Player.Character
script.Parent = Character

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

ArmWeld = Instance.new("Weld") 

--[[ * Arm Weld * ]]--

ArmWeldR = Instance.new("Weld") 

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

if script.Parent.Name == Player.Name then
Hopper = Instance.new("HopperBin")
Hopper.Name = "Javlin"
Hopper.Parent = Player.Backpack
end

Blah = true
EndBlah = true

function Clicked(Mouse)
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
for i = 1,5 do wait()
WeldH.C0 = WeldH.C0 * CFrame.Angles(0,-math.pi/10/2,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2/2,0,-0.1)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(-0.1,0,0.06)
end
for i = 1,5 do wait()
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
P.formFactor = "Custom"
P.TopSurface = 0
P.BottomSurface = 0
P.Parent = Gun
P.Size = Vector3.new(2,2,10)
P.CFrame = CFrame.new(0,250,500)
local G = Instance.new("BodyGyro")
G.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
G.cframe = P.CFrame
G.Parent = P
local V = Instance.new("BodyVelocity")
V.maxForce = Vector3.new(math.huge,math.huge,math.huge)
V.Parent = P
game.Workspace.CurrentCamera.CameraSubject = P
game.Workspace.CurrentCamera.CameraType = "Attach"
wait(0.5)
P.Anchored = false
P.Touched:connect(function() pcall(function() 
local e = Instance.new("Explosion")
e.Position = P.Position
e.BlastRadius = 100
e.BlastPressure = 100000
P.Parent = nil
e.Parent = game.Workspace
end) end)
coroutine.resume(coroutine.create(function()
for i = 1,10 do wait()
BS.BackgroundTransparency = BS.BackgroundTransparency + 0.1
end
end))
while P.Parent == Gun do wait()
G.cframe = CFrame.new(P.Position,Mouse.Hit.p)
V.velocity = G.cframe.lookVector * 200
P.Touched:connect(function() pcall(function() 
local e = Instance.new("Explosion")
e.Position = P.Position
e.BlastRadius = 100
e.BlastPressure = 100000
P.Parent = nil
e.Parent = game.Workspace
end) end)
end
wait(1)
for i = 1,10 do wait()
BS.BackgroundTransparency = BS.BackgroundTransparency - 0.1
end
wait(1)
game.Workspace.CurrentCamera.CameraSubject = Character.Head
game.Workspace.CurrentCamera.CameraType = "Follow"
for i = 1,10 do wait()
BS.BackgroundTransparency = BS.BackgroundTransparency + 0.1
end
Character.Humanoid.WalkSpeed = 16
Blah = true
end
end

function onKeyDown(key)
if Blah == true then
Blah = false

Blah = true
return
end
end


function Selected(Mouse) 
	Mouse.Icon = "rbxasset://textures\\GunCursor.png"
	Mouse.KeyDown:connect(onKeyDown)
	Mouse.Button1Down:connect(function()Clicked(Mouse)end) 
	while not Blah do wait() end
	WeldH.C0 = CFrame.new(-0.55,0,0) * CFrame.Angles(math.pi/2,math.pi/2,0)
	ArmWeld.Parent = Character["Torso"]
	ArmWeld.Part0 = ArmWeld.Parent
	ArmWeld.Part1 = Character["Right Arm"]
	ArmWeld.C0 = CFrame.new(1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
	ArmWeldR.Parent = Character["Torso"]
	ArmWeldR.Part0 = ArmWeldR.Parent
	ArmWeldR.Part1 = Character["Left Arm"]
	ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end 

function Deselected(Mouse)
end

function Dead()
end

Character.Humanoid.Died:connect(Dead)
Hopper.Selected:connect(Selected)
Hopper.Deselected:connect(Deselected) 
