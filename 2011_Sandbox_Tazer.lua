--[[_Zap_Zap_:3_(_bob371's_Tazer_)_]]--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Player = game.Players.LocalPlayer
Character = Player.Character
script.Parent = Character

Character.Humanoid.MaxHealth = math.huge

pcall(function() Character.Tazer:Remove() end)

Staff = Instance.new("Model")
Staff.Name = "Tazer"
Staff.Parent = Character

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


--[[ * TBody * ]]--

TBody = Instance.new("Part")
TBody.formFactor = "Custom"
TBody.Locked = true
TBody.CanCollide = false
TBody.BrickColor = BrickColor.new("Really black")
TBody.Anchored = false
TBody.Size = Vector3.new(0.4,1,0.25)
TBody.TopSurface = 0
TBody.BottomSurface = 0
TBody.Parent = Staff
MeshA = Instance.new("BlockMesh",TBody)
MeshA.Bevel = 0.03
WeldA = Instance.new("Weld")
WeldA.Parent = TBody
WeldA.Part0 = Character["Right Arm"]
WeldA.Part1 = TBody
WeldA.C0 = CFrame.new(0,-1,-0) * CFrame.Angles(-math.pi/2,0,0)
SoundA = Instance.new("Sound")
SoundA.Parent = TBody

--[[ * TBodyA * ]]--

TBodyA = Instance.new("Part")
TBodyA.formFactor = "Custom"
TBodyA.Locked = true
TBodyA.CanCollide = false
TBodyA.BrickColor = BrickColor.new("Really black")
TBodyA.Anchored = false
TBodyA.Size = Vector3.new(0.2,0.25,0.25)
TBodyA.TopSurface = 0
TBodyA.BottomSurface = 0
TBodyA.Parent = Staff
MeshA = Instance.new("BlockMesh",TBodyA)
MeshA.Bevel = 0.03
WeldA = Instance.new("Weld")
WeldA.Parent = TBodyA
WeldA.Part0 = TBody
WeldA.Part1 = TBodyA
WeldA.C0 = CFrame.new(0.125,0.5,0) * CFrame.Angles(0,0,0)

--[[ * TBodyB * ]]--

TBodyB = Instance.new("Part")
TBodyB.formFactor = "Custom"
TBodyB.Locked = true
TBodyB.CanCollide = false
TBodyB.BrickColor = BrickColor.new("Really black")
TBodyB.Anchored = false
TBodyB.Size = Vector3.new(0.2,0.25,0.25)
TBodyB.TopSurface = 0
TBodyB.BottomSurface = 0
TBodyB.Parent = Staff
MeshB = Instance.new("BlockMesh",TBodyB)
MeshB.Bevel = 0.03
WeldB = Instance.new("Weld")
WeldB.Parent = TBodyB
WeldB.Part0 = TBody
WeldB.Part1 = TBodyB
WeldB.C0 = CFrame.new(-0.125,0.5,0) * CFrame.Angles(0,0,0)

--[[ * Taze * ]]--

Taze = Instance.new("Part")
Taze.formFactor = "Custom"
Taze.Locked = true
Taze.CanCollide = false
Taze.BrickColor = BrickColor.new("Really black")
Taze.Anchored = false
Taze.Size = Vector3.new(0.2,0.2,0.2)
Taze.TopSurface = 0
Taze.BottomSurface = 0
Taze.Parent = Staff
Taze.Reflectance = 1
MeshB = Instance.new("BlockMesh",Taze)
MeshB.Bevel = 0.03
WeldB = Instance.new("Weld")
WeldB.Parent = Taze
WeldB.Part0 = TBody
WeldB.Part1 = Taze
WeldB.C0 = CFrame.new(0,0.5,0) * CFrame.Angles(0,0,0)
if Taze:IsDescendantOf(Character) then print('yes') end

if script.Parent.Name == Player.Name then
Hopper = Instance.new("HopperBin")
Hopper.Name = "Tazer"
Hopper.Parent = Player.Backpack
end

Blah = true
Relax = false
Tazing = false

function Tazed(hit)
if Tazing == true then
for i,v in pairs(hit.Parent:GetChildren()) do
if v:IsA("Pants") or v:IsA("Shirt") or v:IsA("ShirtGraphic") or v:IsA("CharacterMesh") then
v:Remove()
end
if v:IsA("Hat") then
pcall(function()
v.Handle.Anchored = true
v.Handle.Reflectance = 1
end)
pcall(function()
v.Handle.Mesh.TextureId = ""
end)
end
if v:IsA("Part") then
v.Anchored = true
v.Reflectance = 1
v:BreakJoints()
end
end
end
end


function Clicked(Mouse)
if Blah == true then
Blah = false
if Relax == true then
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/10*3,math.pi/10/10*3,math.pi/10/10*3)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(-0.05*3,0,0.05/2*3)
Neck.C0 = Neck.C0 * CFrame.Angles(math.pi/10/10/2*3,0,0)
Neck.C0 = Neck.C0 + Vector3.new(0,0,0.1/10*3)
end
ArmWeld.C0 = CFrame.new(1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,math.pi/5/2)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0.1,0.1,0)
end
for i = 1,3 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/5/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.3/2,0,0.2/2)
end
Tazing = true
Taze.Touched:connect(Tazed)
TBodyA.Touched:connect(Tazed)
TBodyB.Touched:connect(Tazed)
TBody.Touched:connect(Tazed)
Character["Right Arm"].Touched:connect(Tazed)
for i = 1,2 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/5/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.3/2,0,0.2/2)
end
Character.Humanoid.WalkSpeed = 0
wait(1)
Tazing = false
Character.Humanoid.WalkSpeed = 16
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/5/2,0,0)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0.3/2,0,0.2/2)
end
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,-math.pi/5/2)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.1,0.1,0)
end
for i = 1,5 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/10*3,-math.pi/10/10*3,-math.pi/10/10*3)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(-0.05*3,0,0.05/2*3)
Neck.C0 = Neck.C0 * CFrame.Angles(-math.pi/10/10/2*3,0,0)
Neck.C0 = Neck.C0 - Vector3.new(0,0,0.1/10*3)
end
end
Blah = true
end
end

VCZ = 0

Keys = {}


function onKeyDown(key,Mouse)
if Blah == true then
Blah = false

if key == "p" then

if Relax == false then
Relax = true
for i = 1,15 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/10,-math.pi/10/10,-math.pi/10/10)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(-0.05,0,0.05/2)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/10,math.pi/10/10,math.pi/10/10)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0.05,0,0.05/2)
Neck.C0 = Neck.C0 * CFrame.Angles(-math.pi/10/10/2,0,0)
Neck.C0 = Neck.C0 - Vector3.new(0,0,0.1/10)
end
elseif Relax == true then
Relax = false
for i = 1,15 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/10,math.pi/10/10,math.pi/10/10)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(-0.05,0,0.05/2)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/10,-math.pi/10/10,-math.pi/10/10)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0.05,0,0.05/2)
Neck.C0 = Neck.C0 * CFrame.Angles(math.pi/10/10/2,0,0)
Neck.C0 = Neck.C0 + Vector3.new(0,0,0.1/10)
end
ArmWeld.C0 = CFrame.new(1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end

Blah = true
return
end
end

function onKeyUp(key,Mouse)
end

function Selected(Mouse) 
Mouse.Icon = "rbxasset://textures\\GunCursor.png"
Mouse.KeyDown:connect(function(key) onKeyDown(key, Mouse) end) 
Mouse.KeyUp:connect(function(key) onKeyUp(key, Mouse) end) 
Mouse.Button1Down:connect(function()Clicked(Mouse)end) 
end 

function Deselected(Mouse)
end

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

Hopper.Selected:connect(Selected)
Hopper.Deselected:connect(Deselected) 
Character.Humanoid.Died:connect(DeadGuy)