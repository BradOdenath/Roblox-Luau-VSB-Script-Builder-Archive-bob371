------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- lego
-- blockland

vip = game.Players.LocalPlayer
char = vip.Character
fireon = false
ironman = 0 -- 0 = yes | 1 = no
ironon = "Off"
flying  = "Off"
shooting = "Loaded"
holding = "Off"
forcefield = "Loaded"
fire = false

function HatOn()
for i,v in pairs(script.Parent:GetChildren()) do if v.className == "Hat" then v.Parent = char end end
pcall(function() char.Head.Transparency = 0 char.Head.face.Face = "Front" end)
end

function HatOff()
for i,v in pairs(char:GetChildren()) do if v.className == "Hat" then v.Parent = script.Parent end end
pcall(function() char.Head.Transparency = 1 char.Head.face.Face = "Bottom" end)
end

function ArmPoint(Arm, Weld, EndCf) 
	if (Arm:lower():match("right")) then
		Weld.C0 = CFrame.new(1.5, 0.5, 0)
		Weld.C1 = CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0, 0, 0.5)
		Weld.C1 = Weld.C1 * (CFrame.new((char.Torso.CFrame * CFrame.new(1.5, 0, 0)).p, EndCf.p) - (char.Torso.CFrame * CFrame.new(1.5, 0, 0)).p):inverse()
		Weld.C1 = Weld.C1 * (char.Torso.CFrame - char.Torso.CFrame.p)
		
	elseif (Arm:lower():match("left")) then
		Weld.C0 = CFrame.new(-1.5, 0.5, 0)
		Weld.C1 = CFrame.Angles(math.rad(-90), 0, 0) * CFrame.new(0, 0, 0.5)
		Weld.C1 = Weld.C1 * (CFrame.new((char.Torso.CFrame * CFrame.new(-1.5, 0, 0)).p, EndCf.p) - (char.Torso.CFrame * CFrame.new(-1.5, 0, 0)).p):inverse()
		Weld.C1 = Weld.C1 * (char.Torso.CFrame - char.Torso.CFrame.p)
		
	end
end

if script.Parent.className ~= "HopperBin" then
ironbin = Instance.new("HopperBin")
ironbin.Name = "Iron Man"
ironbin.Parent = vip.Backpack
script.Parent = ironbin
end
BodyVelocity = Instance.new("BodyVelocity") 
BodyGyro= Instance.new("BodyGyro") 
BodyVelocity.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
BodyGyro.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
Torso = char.Torso
ironmodel = Instance.new("Model")
ironmodel.Name = "IronMan"
ironmodel.Parent = char
Main = Instance.new("Hint")
Main.Name = "Main"

function Clicked(Mouse)
if ironon == "Off" then return end
Holding = "On"
while Holding == "On" do
wait()
if flying == "On" then
BodyGyro.cframe = CFrame.new(Torso.Position,Mouse.hit.p) 
BodyVelocity.velocity = BodyGyro.cframe.lookVector * 100
elseif flying == "Off" then
WLft = Instance.new("Weld")
WLft.Parent = char.Torso
WLft.Part0 = char.Torso
WLft.Part1 = char["Left Arm"]
WLgt = Instance.new("Weld")
WLgt.Parent = char.Torso
WLgt.Part0 = char.Torso
WLgt.Part1 = char["Right Arm"]
ArmPoint("Left Arm", WLft, Mouse.hit) 
ArmPoint("Right Arm", WLgt, Mouse.hit) 
end
end
if flying == "On" then
BodyVelocity.Parent = nil
BodyVelocity.velocity = Vector3.new(0,0,0)
BodyVelocity.Parent = Torso
end
end 

function UnClicked(Mouse)
Holding = "Off"
pcall(function()
WLft:Remove()
WLgt:Remove()
end)
end

function onKeyDown(key, Mouse)
if key == "p" then
proof = Instance.new("Hint")
proof.Text = "Iron Man Created By bob371 (NOT FORUMED!!!), Approved By LuigiFan"
proof.Parent = ironmodel
end
if key == "r" then
if forcefield == "Loaded" and ironon == "On" then
--for i = 1,10 do
I = Instance.new("ForceField")
I.Parent = char
forcefield = "Reloading."
wait(1/3)
forcefield = "Reloading.."
wait(1/3)
forcefield = "Reloading..."
wait(1/3)
--end
I.Parent = nil
forcefield = "Loaded"
end
end
if key == "f" then
if shooting == "Loaded" and flying == "On" then
fire = true
local P = Instance.new("Part") 
local Place0 = char.Torso.CFrame * CFrame.new(0,0.25,-0.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local Place1 = Mouse.Hit.p 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 
P.Name = "Laser" 
P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 
P.Parent = game.Workspace 
P.BrickColor = BrickColor.new("Navy blue") 
P.Reflectance = 1
P.Anchored = true 
P.CanCollide = false
local e=Instance.new"Explosion" 
e.Hit:connect(function(part,distance) 
e.BlastPressure = 1e+006 
e.BlastRadius = 10
if distance<10 then 
part:BreakJoints()
part.Anchored = false
Instance.new("Fire").Parent = part
end 
end) 
e.Position = Place1
e.Parent=workspace
--char = game.Workspace.bob371
sound = Instance.new("Sound")
sound.Volume = 100
sound.Pitch = 1
sound.SoundId = "rbxasset://sounds\\Launching rocket.wav"
sound.Parent = char.Torso
sound:Play()
wait(0.1)
P:remove()
fire = false
for i = 1,5 do
shooting = "Reloading."
wait(0.5)
shooting = "Reloading.."
wait(0.5)
shooting = "Reloading..."
wait(0.5)
end
shooting = "Loaded"
end
end
if key == "f" then
if shooting == "Loaded" and flying == "Off" then
fire = true
local P = Instance.new("Part") 
local Place0 = char["Left Arm"].CFrame * CFrame.new(0,-1,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local Place1 = Mouse.Hit.p 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 
P.Name = "Laser" 
P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 
P.Parent = game.Workspace 
P.BrickColor = BrickColor.new("Navy blue") 
P.Reflectance = 1
P.Anchored = true 
P.CanCollide = false
P2 = P:Clone()
Place2 = char["Right Arm"].CFrame * CFrame.new(0,-1,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
P2.CFrame = CFrame.new((Place2.p + Place1)/2,Place2.p) 
P2.Parent = game.Workspace
local e=Instance.new"Explosion" 
e.Hit:connect(function(part,distance) 
e.BlastPressure = 1e+006 
e.BlastRadius = 10
if distance<10 then 
part:BreakJoints()
part.Anchored = false
Instance.new("Fire").Parent = part
end 
end) 
e.Position = Place1
e.Parent=workspace
--char = game.Workspace.bob371
sound = Instance.new("Sound")
sound.Volume = 100
sound.Pitch = 1
sound.SoundId = "rbxasset://sounds\\Launching rocket.wav"
sound.Parent = char.Torso
sound:Play()
wait(0.1)
pcall(function()
P:remove()
P2:Remove()
end)
fire = false
for i = 1,5 do
shooting = "Reloading."
wait(0.5)
shooting = "Reloading.."
wait(0.5)
shooting = "Reloading..."
wait(0.5)
end
shooting = "Loaded"
end
end
if key == "q" then 
if flying == "On" then return end
if ironon == "Off" then
HatOff()
ironon = "On"
if fireon == true then
Main.Text = "| User - "..vip.Name.." | Iron Man - "..ironon.." | Fire - On | Flying - "..flying.." | Gun - "..shooting.." | Shield - "..forcefield.." |"
else
Main.Text = "| User - "..vip.Name.." | Iron Man - "..ironon.." | Fire - Off | Flying - "..flying.." | Gun - "..shooting.." | Shield - "..forcefield.." |"
end
return
end
if ironon == "On" then
HatOn()
ironon = "Off"
if fireon == true then
Main.Text = "| User - "..vip.Name.." | Iron Man - "..ironon.." | Fire - On | Flying - "..flying.." | Gun - "..shooting.." | Shield - "..forcefield.." |"
else
Main.Text = "| User - "..vip.Name.." | Iron Man - "..ironon.." | Fire - Off | Flying - "..flying.." | Gun - "..shooting.." | Shield - "..forcefield.." |"
end
return
end
end
if key == "e" then 
if holding == "Off" and ironon == "On" then
if flying == "Off" then
char.Humanoid.PlatformStand = true
BodyVelocity.Parent = Torso
BodyGyro.Parent = Torso
flying = "On"
if fireon == true then
Main.Text = "| User - "..vip.Name.." | Iron Man - "..ironon.." | Fire - On | Flying - "..flying.." | Gun - "..shooting.." | Shield - "..forcefield.." |"
else
Main.Text = "| User - "..vip.Name.." | Iron Man - "..ironon.." | Fire - Off | Flying - "..flying.." | Gun - "..shooting.." | Shield - "..forcefield.." |"
end
while flying == "On" do wait()
BodyGyro.cframe = CFrame.new(Torso.Position,Mouse.hit.p) 
end
end
if flying == "On" then
char.Humanoid.PlatformStand = false
BodyVelocity.Parent = nil
BodyGyro.Parent = nil
flying = "Off"
if fireon == true then
Main.Text = "| User - "..vip.Name.." | Iron Man - "..ironon.." | Fire - On | Flying - "..flying.." | Gun - "..shooting.." | Shield - "..forcefield.." |"
else
Main.Text = "| User - "..vip.Name.." | Iron Man - "..ironon.." | Fire - Off | Flying - "..flying.." | Gun - "..shooting.." | Shield - "..forcefield.." |"
end
return
end
end
end
end

function Selected(Mouse) 

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Shape = "Ball"
	partz.Reflectance = 1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.new("Navy blue")
	partz.Transparency = ironman
	w = Instance.new("Weld") 
	w.Parent = char["Torso"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0.25,-0.25) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Torso"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.15,0.5,1)
	w = Instance.new("Weld") 
	w.Parent = char["Torso"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,-0.5,-0.35) * CFrame.fromEulerAnglesXYZ(3.14/2,0,3.14)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(2.05,2.05,1.1)
	w = Instance.new("Weld") 
	w.Parent = char["Torso"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Torso"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.15,0.5,1)
	w = Instance.new("Weld") 
	w.Parent = char["Torso"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(-0.4,0.45,-0.35) * CFrame.fromEulerAnglesXYZ(3.14/2,3.14/2/2+0.35,3.14)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Torso"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.15,0.5,1)
	w = Instance.new("Weld") 
	w.Parent = char["Torso"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0.4,0.45,-0.35) * CFrame.fromEulerAnglesXYZ(3.14/2,-3.14/2/2-0.35,3.14)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.1,2.05,1.1)
	w = Instance.new("Weld") 
	w.Parent = char["Right Arm"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.1,2.05,1.1)
	w = Instance.new("Weld") 
	w.Parent = char["Left Arm"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.1,2.05,1.1)
	w = Instance.new("Weld") 
	w.Parent = char["Left Leg"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.1,2.05,1.1)
	w = Instance.new("Weld") 
	w.Parent = char["Right Leg"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.15,0.4,1.15)
	w = Instance.new("Weld") 
	w.Parent = char["Left Arm"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,-0.4,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.15,0.4,1.15)
	w = Instance.new("Weld") 
	w.Parent = char["Right Arm"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,-0.4,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.15,0.8,1.15)
	w = Instance.new("Weld") 
	w.Parent = char["Left Arm"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0.4,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.15,0.8,1.15)
	w = Instance.new("Weld") 
	w.Parent = char["Right Arm"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0.4,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.15,0.8,1.15)
	w = Instance.new("Weld") 
	w.Parent = char["Left Leg"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0.3,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Brick"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.15,0.8,1.15)
	w = Instance.new("Weld") 
	w.Parent = char["Right Leg"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0.3,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.MeshType = "Head"
	mesh.Parent = partz
	mesh.Scale = Vector3.new(1.3,1.3,1.3)
	w = Instance.new("Weld") 
	w.Parent = char["Head"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Shape = "Ball"
	partz.Reflectance = 1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.new("Navy blue")
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.Parent = partz
	mesh.MeshType = "Sphere"
	mesh.Scale = Vector3.new(0.5,0.25,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Right Arm"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,-1,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
	for i = 1,50 do
	fire = Instance.new("Fire")
	fire.Enabled = fireon
	fire.Color = Color3.new(0.1,0.1,1)
	fire.SecondaryColor = Color3.new(205,0,0)
	fire.Parent = partz
	fire.Size = 2
	fire.Heat = 0
	end

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Shape = "Ball"
	partz.Reflectance = 1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.new("Navy blue")
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.Parent = partz
	mesh.MeshType = "Sphere"
	mesh.Scale = Vector3.new(0.5,0.25,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Left Arm"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,-1,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
	for i = 1,50 do
	fire = Instance.new("Fire")
	fire.Enabled = fireon
	fire.Color = Color3.new(0.1,0.1,1)
	fire.SecondaryColor = Color3.new(205,0,0)
	fire.Parent = partz
	fire.Size = 2
	fire.Heat = 0
	end

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Shape = "Ball"
	partz.Reflectance = 1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.new("Navy blue")
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.Parent = partz
	mesh.MeshType = "Sphere"
	mesh.Scale = Vector3.new(0.5,0.25,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Left Leg"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,-1,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Shape = "Ball"
	partz.Reflectance = 1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.new("Navy blue")
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.Parent = partz
	mesh.MeshType = "Sphere"
	mesh.Scale = Vector3.new(0.5,0.25,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Right Leg"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,-1,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("BlockMesh")
	mesh.Parent = partz
	mesh.Scale = Vector3.new(0.8,0.6,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Head"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0,-0.4) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("BlockMesh")
	mesh.Parent = partz
	mesh.Scale = Vector3.new(0.2,0.2,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Head"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0.3,0.35,-0.4) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("BlockMesh")
	mesh.Parent = partz
	mesh.Scale = Vector3.new(0.2,0.2,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Head"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(-0.3,0.35,-0.4) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.5
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Blue()
	partz.Transparency = ironman
	mesh = Instance.new("BlockMesh")
	mesh.Parent = partz
	mesh.Scale = Vector3.new(0.25,0.1,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Head"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(-0.2,0.15,-0.425) * CFrame.fromEulerAnglesXYZ(0,0,-0.2)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.5
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Blue()
	partz.Transparency = ironman
	mesh = Instance.new("BlockMesh")
	mesh.Parent = partz
	mesh.Scale = Vector3.new(0.25,0.1,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Head"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0.2,0.15,-0.425) * CFrame.fromEulerAnglesXYZ(0,0,0.2)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Shape = "Ball"
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	w = Instance.new("Weld") 
	w.Parent = char["Right Arm"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0.8,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Shape = "Ball"
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	w = Instance.new("Weld") 
	w.Parent = char["Left Arm"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,0.8,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("BlockMesh")
	mesh.Parent = partz
	mesh.Scale = Vector3.new(0.7,0.2,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Head"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0,-0.4,-0.4) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Shape = "Ball"
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.Parent = partz
	mesh.MeshType = "Sphere"
	mesh.Scale = Vector3.new(0.25,0.5,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Left Leg"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(-0.55,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Shape = "Ball"
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Yellow()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.Parent = partz
	mesh.MeshType = "Sphere"
	mesh.Scale = Vector3.new(0.25,0.5,0.5)
	w = Instance.new("Weld") 
	w.Parent = char["Right Leg"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0.55,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Shape = "Ball"
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.Parent = partz
	mesh.MeshType = "Head"
	mesh.Scale = Vector3.new(0.8,2,0.8)
	w = Instance.new("Weld") 
	w.Parent = char["Torso"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(0.4,0,0.75) * CFrame.fromEulerAnglesXYZ(0,0,0)

	partz = Instance.new("Part")
	partz.Name = "Torso"
	partz.CanCollide = false
	partz.Locked = true
	partz.TopSurface = 0
	partz.BottomSurface = 0
	partz.Reflectance = 0.1
	partz.Shape = "Ball"
	partz.Parent = ironmodel
	partz.formFactor = "Symmetric"
	partz.Size = Vector3.new(1,1,1)
	partz.BrickColor = BrickColor.Red()
	partz.Transparency = ironman
	mesh = Instance.new("SpecialMesh")
	mesh.Parent = partz
	mesh.MeshType = "Head"
	mesh.Scale = Vector3.new(0.8,2,0.8)
	w = Instance.new("Weld") 
	w.Parent = char["Torso"]
	w.Part0 = w.Parent
	w.Part1 = partz
	w.C0 = CFrame.new(-0.4,0,0.75) * CFrame.fromEulerAnglesXYZ(0,0,0)

	--[[

	flying  = "Off"
	shooting = "Off"
	holding = "Off"

	]]

	HatOff()

	if ironon == "Off" then for i,v in pairs(ironmodel:GetChildren()) do if v.className == "Part" then v.Transparency = 1 end end HatOn() end

	Main.Parent = vip
	--Mouse.KeyDown:connect(onKeyDown)
	Mouse.KeyDown:connect(function(key) onKeyDown(key, Mouse) end) 
	Mouse.Button1Down:connect(function()Clicked(Mouse)end) 
	Mouse.Button1Up:connect(function()UnClicked(Mouse)end)
end 

function Deselected(Mouse)
	for i,v in pairs(ironmodel:GetChildren()) do if v.className == "Part" then v:Remove() end end
	Main.Parent = nil
	ironon = "Off"
	char.Humanoid.PlatformStand = false
	BodyVelocity.Parent = nil
	BodyGyro.Parent = nil
	flying = "Off"
	HatOn()
end

script.Parent.Selected:connect(Selected)
script.Parent.Deselected:connect(Deselected) 

while true do
wait()
if fireon == true then
Main.Text = "| User - "..vip.Name.." | Iron Man - "..ironon.." | Fire - On | Flying - "..flying.." | Gun - "..shooting.." | Shield - "..forcefield.." |"
else
Main.Text = "| User - "..vip.Name.." | Iron Man - "..ironon.." | Fire - Off | Flying - "..flying.." | Gun - "..shooting.." | Shield - "..forcefield.." |"
end
if ironon == "On" then for i,v in pairs(ironmodel:GetChildren()) do if v.className == "Part" then v.Transparency = 0 end end end
if ironon == "Off" then for i,v in pairs(ironmodel:GetChildren()) do if v.className == "Part" then v.Transparency = 1 end end end
end
