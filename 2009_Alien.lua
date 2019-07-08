--[[ bob371 - Suit Editor - UFO Creator - Tool Creator | shipwreck77 - Suit Creator | xxSNAKExx - Customer ]]--																							
vip = game.Players.bob371
char = vip.Character
Keys = {
r = false,
e = false,
t = false,
u = false}

po1 = CFrame.new(-0.7,0.5,0.57)
po2 = CFrame.new(0,3,0)
po3 = po1

if vip:findFirstChild("StarterGear") == nil then
SRGR = Instance.new("StarterGear")
SRGR.Parent = vip
end

if script.Parent.className ~= "HopperBin" then
Hopper = Instance.new("HopperBin")
Hopper.Name = "Suit"
if vip.StarterGear:findFirstChild("Suit") ~= nil then vip.StarterGear:findFirstChild("Suit").Parent = nil end
Hopper.Parent = vip.StarterGear
script.Parent = Hopper
char:BreakJoints()
end

ddd = true


function Clicked(Mouse)
local P = Instance.new("Part") 
local Place0 = char.Head.CFrame * po3 * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local Place1 = Mouse.Hit.p 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 
P.Name = "Laser" 
P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 
P.Parent = char
P.TopSurface = 0
P.BottomSurface = 0
P.BrickColor = BrickColor.new("Bright blue") 
for i,v in pairs(char:GetChildren()) do
if (v.className == "Part") then
if (v.BrickColor == BrickColor.new("Bright blue")) then 
v.BrickColor = BrickColor.new("Bright red")
end
end
end
P.Anchored = true 
P.CanCollide = false 
M = Instance.new("SpecialMesh")
M.MeshType = "Brick"
M.Scale = Vector3.new(0.05,0.05,1)
M.Parent = P
local E = Instance.new("Explosion") 
E.Position = Place1 
E.Parent = game.Workspace 
E.BlastPressure = 1e+006 
for i = 1,20 do 
P.Transparency = i*0.05 
wait(0.1) 
end 
P:remove() 
end 

function UnClicked(Mouse)
for i,v in pairs(char:GetChildren()) do
if (v.className == "Part") then
if (v.BrickColor == BrickColor.new("Bright red")) then 
v.BrickColor = BrickColor.new("Bright blue")
end
end
end
end

smokescreen = true

ufo = false

fly = false

veloc = 50

function onKeyDown(key)
if key == "q" then
game.Workspace[vip.Name].Head.BrickColor = BrickColor.Black()
end

if key == "r" then 
if ufo == true then return end
Keys[key] = true 
if char:findFirstChild("Bodypart2") == nil then return end
if smokescreen == false then return end
smokescreen = false
while Keys[key] == true do wait(.05) 
for i = 1,20 do
char.Bodypart2.Transparency = char.Bodypart2.Transparency + 0.05
char.Bodypart2.Mesh.Scale = char.Bodypart2.Mesh.Scale + Vector3.new(0.2,0.2,0.2)
wait()
end
char.Bodypart2.Mesh.Scale = Vector3.new(1.8, 1, 1.5)
char.Bodypart2.Transparency = 0
smokescreen = true
end 
end 

--- Bodypart 0,26,25

if key == "e" then 
if belt6 == nil or belt5 == nil or belt4 == nil or belt3 == nil or belt2 == nil or belt1 == nil then return end
if char:findFirstChild("Bodypart0") == nil or char:findFirstChild("Bodypart26") == nil or char:findFirstChild("Bodypart25") == nil then return end
for i,v in pairs(char:GetChildren()) do if v.className == "Part" and (v.Name ~= "Torso" or v.Name ~= "belt6" or v.Name ~= "belt5" or v.Name ~= "belt4" or v.Name ~= "belt3" or v.Name ~= "belt2" or v.Name ~= "belt1" or v.Name ~= "Bodypart26" or v.Name ~= "Bodypart25" or v.Name ~= "Bodypart0") then v.Transparency = 1 end end
char.Bodypart0.Transparency = 0
char.Bodypart26.Transparency = 0
char.Bodypart25.Transparency = 0.5
po3 = po2
ufo = true
end 

deb = true
--[[
if key == "u" then 
Keys[key] = true 
while Keys[key] == true do

zxy = Color3.new(math.random(),math.random(),math.random())
for i,v in pairs(char:GetChildren()) do
if v.className == "Part" then
if v.BrickColor ~= BrickColor.Black() then
v.Color = zxy
end
end
end
wait(math.random(1,5))
end 
for i,v in pairs(char:GetChildren()) do
if v.className == "Part" then
if v.BrickColor ~= BrickColor.Black() then
v.BrickColor = BrickColor.Blue()
end
end
end
end 
]]

if key == "y" then
if deb == true then
deb = false
vip.Character.Humanoid.WalkSpeed = 0
vip.Character.Humanoid.PlatformStand = true
o = Instance.new("Part")
o.Parent = vip.Character
o.Size = Vector3.new(1,1,1)
o.Shape = 0
o.TopSurface = 0
o.Transparency = 1
o.BottomSurface = 0
o.CanCollide = false
smeshs = Instance.new("SpecialMesh")
smeshs.MeshType = "Sphere"
smeshs.Parent = o
smeshs.Scale = Vector3.new(0,0,0)
weld6 = Instance.new("Weld") 
weld6.Part0 = vip.Character.Torso 
weld6.Part1 = o
weld6.Parent = vip.Character.Torso 
weld6.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 
v = Instance.new("BodyPosition")
v.Parent = o
v.maxForce = Vector3.new(math.huge,math.huge,math.huge)
v.position = vip.Character.Torso.Position + Vector3.new(0,10,0)
for i = 1,100 do
o.Transparency = o.Transparency - 0.01
o.Reflectance = o.Reflectance + 0.01
smeshs.Scale = smeshs.Scale + Vector3.new(0.1,0.1,0.1)
vip.Character.Torso.CFrame = vip.Character.Torso.CFrame * CFrame.fromEulerAnglesXYZ(0,0.25,0)
wait()
end
for i = 1,100 do
o.Transparency = o.Transparency + 0.01
o.Reflectance = o.Reflectance - 0.01
smeshs.Scale = smeshs.Scale - Vector3.new(0.1,0.1,0.1)vip.Character.Torso.CFrame = vip.Character.Torso.CFrame * CFrame.fromEulerAnglesXYZ(0,0.25,0)
wait()
end
vip.Character.Humanoid.WalkSpeed = 16
vip.Character.Humanoid.PlatformStand = false
o:Remove()
deb = true
end
end

if key == "t" then 
if ufo == false then
Keys[key] = true 
if belt6 == nil or belt5 == nil or belt4 == nil or belt3 == nil or belt2 == nil or belt1 == nil then return end
if fly == true then return end
fly = true
while Keys[key] == true do 
velo = Instance.new("BodyVelocity")
velo.velocity = Vector3.new(0,veloc,0)
velo.maxForce = Vector3.new(0,math.huge,0)
velo.Parent = char.Torso
belt6.Transparency = 0
belt5.Transparency = 0
belt4.Transparency = 1
belt3.Transparency = 1
belt2.Transparency = 1
belt1.Transparency = 1
wait(0.01)
belt6.Transparency = 1
belt5.Transparency = 1
belt4.Transparency = 0
belt3.Transparency = 0
belt2.Transparency = 1
belt1.Transparency = 1
wait(0.01)
belt6.Transparency = 1
belt5.Transparency = 1
belt4.Transparency = 1
belt3.Transparency = 1
belt2.Transparency = 0
belt1.Transparency = 0
wait(0.01)
belt6.Transparency = 1
belt5.Transparency = 1
belt4.Transparency = 0
belt3.Transparency = 0
belt2.Transparency = 1
belt1.Transparency = 1
wait(0.01)
velo.Parent = nil
end
belt6.Transparency = 1
belt5.Transparency = 1
belt4.Transparency = 1
belt3.Transparency = 1
belt2.Transparency = 1
belt1.Transparency = 1
wait(0.01)
if velo ~= nil then
velo.Parent = nil
end
fly = false
end 
if ufo == true then
Keys[key] = true 
if belt6 == nil or belt5 == nil or belt4 == nil or belt3 == nil or belt2 == nil or belt1 == nil then return end
if fly == true then return end
fly = true
char.Bodypart25.Transparency = 1
while Keys[key] == true do 
velo = Instance.new("BodyVelocity")
velo.velocity = Vector3.new(0,veloc,0)
velo.maxForce = Vector3.new(0,math.huge,0)
velo.Parent = char.Torso
belt6.Transparency = 1
belt5.Transparency = 1
belt4.Transparency = 1
belt3.Transparency = 1
belt2.Transparency = 1
belt1.Transparency = 1
wait(0.01)
belt6.Transparency = 1
belt5.Transparency = 1
belt4.Transparency = 1
belt3.Transparency = 1
belt2.Transparency = 1
belt1.Transparency = 1
wait(0.01)
belt6.Transparency = 1
belt5.Transparency = 1
belt4.Transparency = 1
belt3.Transparency = 1
belt2.Transparency = 1
belt1.Transparency = 1
wait(0.01)
belt6.Transparency = 1
belt5.Transparency = 1
belt4.Transparency = 1
belt3.Transparency = 1
belt2.Transparency = 1
belt1.Transparency = 1
wait(0.01)
velo.Parent = nil
end
belt6.Transparency = 1
belt5.Transparency = 1
belt4.Transparency = 1
belt3.Transparency = 1
belt2.Transparency = 1
belt1.Transparency = 1
wait(0.01)
if velo ~= nil then
velo.Parent = nil
end
char.Bodypart25.Transparency = 0.5
fly = false
end 
end
end

function onKeyUp(key) 
Keys[key] = false 
end 

function Selected(Mouse) 
if ddd == true then
ddd = false
knifez = Instance.new("Part") 
knifez.formFactor = "Symmetric"
knifez.Size = Vector3.new(1,1,1) 
knifez.BrickColor = BrickColor.new("Bright blue") 
knifez.Parent = char 
knifez.Reflectance = 1
knifez.Name = "Bodypart27" 
knifez.Locked = true 
knifez.CanCollide = false 
knifez.Transparency = 1 
kmeshz = Instance.new("SpecialMesh") 
kmeshz.Parent = knifez
kmeshz.MeshType="Sphere" 
kmeshz.Scale = Vector3.new(0,0,0) 
wz = Instance.new("Weld") 
wz.Parent = char["Torso"] 
wz.Part0 = wz.Parent 
wz.Part1 = knifez
wz.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
char.Humanoid.WalkSpeed = 0
for i = 1,100 do
knifez.Transparency = knifez.Transparency - 0.01
kmeshz.Scale = kmeshz.Scale + Vector3.new(0.1,0.1,0.1)
char.Torso.CFrame = char.Torso.CFrame * CFrame.fromEulerAnglesXYZ(0,0.25,0)
wait()
end
for _,lol in pairs (char:GetChildren()) do 
if lol.className == "Hat" then 
lol:Remove() 
end 
end 
char.Humanoid.MaxHealth = math.huge 
char.Humanoid.Health = char.Humanoid.MaxHealth 
char.Head.BrickColor=BrickColor.new(26) 
char.Head.face:Remove() 
char.Torso.Transparency=1 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.new(194) 
knife.Parent = char 
knife.Name = "Bodypart1" 
knife.Locked = true 
knife.TopSurface="Smooth" 
knife.CanCollide = false 
knife.BrickColor = BrickColor.Black() 
knife.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Brick" 
kmesh.Scale = Vector3.new(2.1, 0.9, 1.2) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.new("Bright blue") 
knife.Parent = char 
knife.Name = "Bodypart2" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Sphere" 
kmesh.Scale = Vector3.new(1.8, 1, 1.5) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1.2,1) 
knife.BrickColor = BrickColor.Black() 
knife.Parent = char 
knife.Name = "Bodypart0" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = 1
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Sphere" 
kmesh.Scale = Vector3.new(12,1.5,12) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,4,0) * CFrame.fromEulerAnglesXYZ(0.1,0,0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1.2,1) 
knife.BrickColor = BrickColor.Blue() 
knife.Parent = char 
knife.Name = "Bodypart26" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = 1
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Sphere" 
kmesh.Scale = Vector3.new(4,3,4) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,4,0) * CFrame.fromEulerAnglesXYZ(0.1,0,0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1.3,1.2,1.3) 
knife.BrickColor = BrickColor.new("Bright blue") 
knife.Parent = char 
knife.Name = "Bodypart25" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = 1
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="FileMesh"
kmesh.MeshId = "http://www.roblox.com/asset/?id=1033714"
kmesh.Scale = Vector3.new(20,40,20) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,-10.08,-1.5) * CFrame.fromEulerAnglesXYZ(0.1,0,0)
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.new("Bright blue") 
knife.Parent = char 
knife.Name = "Bodypart3" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Sphere" 
kmesh.Scale = Vector3.new(0.2, 0.1, 0.2) 
w = Instance.new("Weld") 
w.Parent = char["Head"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0.2,0.2,-0.6) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.new("Bright blue") 
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Sphere" 
kmesh.Scale = Vector3.new(0.2, 0.1, 0.2) 
w = Instance.new("Weld") 
w.Parent = char["Head"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(-0.2,0.2,-0.6) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.new(194) 
knife.Parent = char 
knife.Name = "Bodypart5" 
knife.Locked = true 
knife.TopSurface="Smooth" 
knife.CanCollide = false 
knife.BrickColor = BrickColor.Black() 
knife.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Brick" 
kmesh.Scale = Vector3.new(1.1, 0.9, 1.2) 
w = Instance.new("Weld") 
w.Parent = char["Left Leg"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.new(194) 
knife.Parent = char 
knife.Name = "Bodypart6" 
knife.Locked = true 
knife.TopSurface="Smooth" 
knife.CanCollide = false 
knife.BrickColor = BrickColor.Black() 
knife.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Brick" 
kmesh.Scale = Vector3.new(1.1, 0.9, 1.2) 
w = Instance.new("Weld") 
w.Parent = char["Right Leg"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.new("Bright blue") 
knife.Parent = char 
knife.Name = "Bodypart7" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Sphere" 
kmesh.Scale = Vector3.new(1, 0.9, 1) 
w = Instance.new("Weld") 
w.Parent = char["Right Leg"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(.1, -0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.new("Bright blue") 
knife.Parent = char 
knife.Name = "Bodypart8" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Sphere" 
kmesh.Scale = Vector3.new(1, 0.9, 1) 
w = Instance.new("Weld") 
w.Parent = char["Left Leg"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(-.1, -0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.Parent = char 
knife.Name = "Bodypart9" 
knife.Locked = true 
knife.Reflectance = 0 
knife.CanCollide = false 
knife.BrickColor = BrickColor.Black() 
knife.Transparency=0 
kmesh = Instance.new("SpecialMesh") 
kmesh.MeshType="Torso" 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1, 0.8, 0.9) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0.5,0,0.58) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.Parent = char 
knife.Name = "Bodypart10" 
knife.Locked = true 
knife.Reflectance = 0 
knife.CanCollide = false 
knife.BrickColor = BrickColor.Black() 
knife.Transparency=0 
kmesh = Instance.new("SpecialMesh") 
kmesh.MeshType="Torso" 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1, 0.8, 0.9) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(-0.5,0,0.58) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.new(194) 
knife.Parent = char 
knife.Name = "Bodypart11" 
knife.Locked = true 
knife.TopSurface="Smooth" 
knife.CanCollide = false 
knife.BrickColor = BrickColor.Black() 
knife.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Brick" 
kmesh.Scale = Vector3.new(0.3, 0.8, 1.4) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0.6,0.2,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.new(194) 
knife.Parent = char 
knife.Name = "Bodypart12" 
knife.Locked = true 
knife.TopSurface="Smooth" 
knife.CanCollide = false 
knife.BrickColor = BrickColor.Black() 
knife.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Brick" 
kmesh.Scale = Vector3.new(0.3, 0.8, 1.4) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(-0.6,0.2,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.new("Bright blue") 
knife.Parent = char 
knife.Name = "Bodypart12" 
knife.Locked = true 
knife.TopSurface="Smooth" 
knife.CanCollide = false 
knife.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Brick" 
kmesh.Scale = Vector3.new(0.3, 0.8, 1.4) 
w = Instance.new("Weld") 
w.Parent = char["Right Leg"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0.1,0.2,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.new("Bright blue") 
knife.Parent = char 
knife.Name = "Bodypart12" 
knife.Locked = true 
knife.TopSurface="Smooth" 
knife.CanCollide = false 
knife.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Brick" 
kmesh.Scale = Vector3.new(0.3, 0.8, 1.4) 
w = Instance.new("Weld") 
w.Parent = char["Left Leg"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(-0.1,0.2,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.new(194) 
knife.Parent = char 
knife.Name = "Bodypart13" 
knife.Locked = true 
knife.TopSurface="Smooth" 
knife.CanCollide = false 
knife.BrickColor = BrickColor.Black() 
knife.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Brick" 
kmesh.Scale = Vector3.new(1.1, 0.9, 1.2) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.new(194) 
knife.Parent = char 
knife.Name = "Bodypart14" 
knife.Locked = true 
knife.TopSurface="Smooth" 
knife.CanCollide = false 
knife.BrickColor = BrickColor.Black() 
knife.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Brick" 
kmesh.Scale = Vector3.new(1.1, 0.9, 1.2) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.new("Bright blue") 
knife.Parent = char 
knife.Name = "Bodypart15" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Sphere" 
kmesh.Scale = Vector3.new(1, 0.9, 1) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(-.1, -0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.new("Bright blue") 
knife.Name = "Bodypart16" 
knife.Parent=char 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Sphere" 
kmesh.Scale = Vector3.new(1, 0.9, 1) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(.1, -0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.new(26) 
knife.Parent = char 
knife.Name = "Bodypart17" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Torso" 
kmesh.Scale = Vector3.new(1.1, 0.2, 1.2) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,1.1,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.new(26) 
knife.Parent = char 
knife.Name = "Bodypart18" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Torso" 
kmesh.Scale = Vector3.new(1.1, 0.2, 1.2) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,1.1,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.new("Bright blue") 
knife.Parent = char 
knife.Name = "Bodypart19" 
knife.Locked = true 
knife.TopSurface="Smooth" 
knife.CanCollide = false 
knife.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Brick" 
kmesh.Scale = Vector3.new(0.3, 0.8, 1.4) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.Parent = char 
knife.Name = "Bodypart21" 
knife.Locked = true 
knife.Reflectance = 0 
knife.CanCollide = false 
knife.BrickColor = BrickColor.new(26) 
knife.Transparency=0 
kmesh = Instance.new("SpecialMesh") 
kmesh.MeshType="Brick" 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(0.1,1.1,0.1) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(-0.7,0.7,0.57) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.new("Bright blue") 
knife.Parent = char 
knife.Name = "Bodypart22" 
knife.Locked = true 
knife.TopSurface="Smooth" 
knife.CanCollide = false 
knife.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Brick" 
kmesh.Scale = Vector3.new(0.3, 0.8, 1.4) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.Parent = char 
knife.Name = "Bodypart23" 
knife.Locked = true 
knife.Reflectance = 0 
knife.CanCollide = false 
knife.BrickColor = BrickColor.new("Bright blue") 
knife.Transparency=0 
kmesh = Instance.new("SpecialMesh") 
kmesh.MeshType="Sphere" 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(0.2,0.1,0.2) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(-0.7,2,0.57)
knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.new("Bright blue") 
knife.Parent = char 
knife.Name = "Bodypart24" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = 0 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType="Sphere" 
kmesh.Scale = Vector3.new(1.8, 1, 1.5) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = knife 
belt4 = Instance.new("Part") 
belt4.formFactor = 1 
belt4.Size = Vector3.new(1, 6, 2) 
belt4.BrickColor = BrickColor:Black() 
belt4.TopSurface = 0 
belt4.CanCollide = false 
belt4.Name = "belt4"
belt4.Parent = char 
belt4.BottomSurface = 0 
m6 = Instance.new("SpecialMesh") 
m6.Scale = Vector3.new(1.5,1.5,1.5) 
m6.MeshType = "3" 
m6.Parent = belt4 
weld9 = Instance.new("Weld") 
weld9.Part0 = char.Torso 
weld9.Part1 = belt4
weld9.Parent = char.Torso 
weld9.C0 = CFrame.new(-2.5,-1,2.4)*CFrame.fromEulerAnglesXYZ(2,0,4) 
belt3 = Instance.new("Part") 
belt3.formFactor = 1 
belt3.Size = Vector3.new(1, 6, 2) 
belt3.BrickColor = BrickColor:Black() 
belt3.TopSurface = 0 
belt3.Name = "belt3"
belt3.CanCollide = false 
belt3.Parent = char 
belt3.BottomSurface = 0 
m6 = Instance.new("SpecialMesh") 
m6.Scale = Vector3.new(1.5,1.5,1.5) 
m6.MeshType = "3" 
m6.Parent = belt3
weld8 = Instance.new("Weld") 
weld8.Part0 = char.Torso 
weld8.Part1 = belt3
weld8.Parent = char.Torso 
weld8.C0 = CFrame.new(2.5,-1,2.4)*CFrame.fromEulerAnglesXYZ(2,0,-4) 
belt1 = Instance.new("Part") 
belt1.formFactor = 1 
belt1.Name = "belt1"
belt1.Size = Vector3.new(1, 6, 2) 
belt1.BrickColor = BrickColor:Black() 
belt1.TopSurface = 0 
belt1.CanCollide = false 
belt1.Parent = char 
belt1.BottomSurface = 0 
m6 = Instance.new("SpecialMesh") 
m6.Scale = Vector3.new(1.5,1.5,1.5) 
m6.MeshType = "3" 
m6.Parent = belt1 
weld9 = Instance.new("Weld") 
weld9.Part0 = char.Torso 
weld9.Part1 = belt1 
weld9.Parent = char.Torso 
weld9.C0 = CFrame.new(-2.5,0,2.4)*CFrame.fromEulerAnglesXYZ(1.5,0,4) 
belt2 = Instance.new("Part") 
belt2.formFactor = 1 
belt2.Name = "belt2"
belt2.Size = Vector3.new(1, 6, 2) 
belt2.BrickColor = BrickColor:Black() 
belt2.TopSurface = 0 
belt2.CanCollide = false 
belt2.Parent = char 
belt2.BottomSurface = 0 
m6 = Instance.new("SpecialMesh") 
m6.Scale = Vector3.new(1.5,1.5,1.5) 
m6.MeshType = "3" 
m6.Parent = belt2
weld8 = Instance.new("Weld") 
weld8.Part0 = char.Torso 
weld8.Part1 = belt2 
weld8.Parent = char.Torso 
weld8.C0 = CFrame.new(2.5,0,2.4)*CFrame.fromEulerAnglesXYZ(1.5,0,-4) 
belt6 = Instance.new("Part") 
belt6.formFactor = 1 
belt6.Transparency = 1
belt6.Size = Vector3.new(1, 6, 2) 
belt6.BrickColor = BrickColor:Black() 
belt6.TopSurface = 0 
belt6.Name = "belt6"
belt6.CanCollide = false 
belt6.Parent = char 
belt6.BottomSurface = 0 
m6 = Instance.new("SpecialMesh") 
m6.Scale = Vector3.new(1.5,1.5,1.5) 
m6.MeshType = "3" 
m6.Parent = belt6 
weld7 = Instance.new("Weld") 
weld7.Part0 = char.Torso 
weld7.Part1 = belt6 
weld7.Parent = char.Torso 
weld7.C0 = CFrame.new(-2.5,1.4,2.4)*CFrame.fromEulerAnglesXYZ(1,0,4) 
belt5 = Instance.new("Part") 
belt5.formFactor = 1 
belt5.Name = "belt5"
belt5.Transparency = 1
belt5.Size = Vector3.new(1, 6, 2) 
belt5.BrickColor = BrickColor:Black() 
belt5.TopSurface = 0 
belt5.CanCollide = false 
belt5.Parent = char 
belt5.BottomSurface = 0 
m6 = Instance.new("SpecialMesh") 
m6.Scale = Vector3.new(1.5,1.5,1.5) 
m6.MeshType = "3" 
m6.Parent = belt5 
weld6 = Instance.new("Weld") 
weld6.Part0 = char.Torso 
weld6.Part1 = belt5
weld6.Parent = char.Torso 
weld6.C0 = CFrame.new(2.5,1.4,2.4)*CFrame.fromEulerAnglesXYZ(1,0,-4) 
belt6.Transparency = 1
belt5.Transparency = 1
belt4.Transparency = 1
belt3.Transparency = 1
belt2.Transparency = 1
belt1.Transparency = 1
for i = 1,100 do
knifez.Transparency = knifez.Transparency + 0.01
kmeshz.Scale = kmeshz.Scale - Vector3.new(0.1,0.1,0.1)
char.Torso.CFrame = char.Torso.CFrame * CFrame.fromEulerAnglesXYZ(0,0.25,0)
wait()
end
gyro = Instance.new("BodyGyro")
gyro.Parent = char.Torso
char.Humanoid.WalkSpeed = 30
wait()
end
	Mouse.KeyDown:connect(onKeyDown)
	Mouse.KeyUp:connect(onKeyUp) 
	Mouse.Button1Down:connect(function()Clicked(Mouse)end) 
	Mouse.Button1Up:connect(function()UnClicked(Mouse)end) 
end

function Deselected(Mouse)

end

script.Parent.Selected:connect(Selected)
script.Parent.Deselected:connect(Deselected) 

function Touched(hit)
if ufo == false and fly == false then return end
if hit.Parent:findFirstChild("Humanoid") == nil or hit.Parent.Name == vip.Name then return end
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = char["Torso"]
w.Part1 = hit.Parent.Torso 
w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
hit.Parent.Humanoid.PlatformStand = true
for i = 1,40 do
for i,v in pairs(hit.Parent:GetChildren()) do if v.className == "Part" then v.Transparency = v.Transparency + 0.025 end end
wait()
end
hit.Parent.Torso.Parent = hit.Parent.Humanoid.Status
end
char.Torso.Touched:connect(Touched)

--[[
function Touched(hit)
if char:findFirstChild("Bodypart25").Transparency == 0.5 then then
if hit.Parent:findFirstChild("Humanoid") == nil then return end

hit.Parent.Torso.Parent = hit.Parent.Humanoid.Status

end
end

for i,v in pairs(char:GetChildren()) do if v.className == "Part" then v.Touched:connect(Touched) end end
]]
