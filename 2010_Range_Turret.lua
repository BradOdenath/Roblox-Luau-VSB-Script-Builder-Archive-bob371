vip = game.Players.bob371
char = vip.Character

mode = "off"

guard = Instance.new("Model")
guard.Name = vip.Name.."'s Guard ("..mode..")"
guard.Parent = char

--Instance.new("ForceField").Parent = char

part = Instance.new("Part")
part.Name = "Head"
part.CanCollide = false
part.Locked = true
part.TopSurface = 0
part.BottomSurface = 0
part.Shape = "Ball"
part.Parent = guard
part.Material = "Ice"
part.Transparency = 0
part.formFactor = "Symmetric"
part.Size = Vector3.new(1,1,1)
part.BrickColor = BrickColor.new("Really black")
part.Reflectance = 0.5
part:BreakJoints()

mesh = Instance.new("SpecialMesh")
mesh.Scale = Vector3.new(1,1,1)
mesh.MeshType = "Sphere"
mesh.Parent = part

--[[for i = 1,100 do
fire = Instance.new("Fire")
fire.Enabled = true
fire.Color = Color3.new(0,0,255)
fire.SecondaryColor = Color3.new(255,0,0)
fire.Parent = part
fire.Size = 0
fire.Heat = 0
end]]

gyro = Instance.new("BodyGyro")
gyro.Parent = part

partz = Instance.new("Part")
partz.Name = "Torso"
partz.CanCollide = false
partz.Locked = true
partz.TopSurface = 0
partz.BottomSurface = 0
partz.Shape = "Ball"
partz.Parent = guard
partz.formFactor = "Symmetric"
partz.Size = Vector3.new(1,1,1)
partz.BrickColor = BrickColor.new("Really black")
partz.Transparency = 1
w = Instance.new("Weld") 
w.Parent = partz
w.Part0 = part
w.Part1 = partz 
w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

body = Instance.new("BodyPosition")
body.Parent = part
body.maxForce = Vector3.new(math.huge,math.huge,math.huge)
human = Instance.new("Humanoid")
human.Parent = guard
human.MaxHealth = 0

BCV = Instance.new("BrickColorValue")
BCV.Value = BrickColor.new("Really red")
BCV.Parent = guard

function onChatted(msg) 
msg = string.lower(msg) 
if msg == "off" then 
mode = "off"
end
if msg == "on" then 
mode = "on"
end
if msg == "epic/on" then
mesh.Scale = Vector3.new(0,0,0)
for i,v in pairs(part:GetChildren()) do if v.className == "Fire" then fire.Enabled = true end end
end
if msg == "epic/off" then
mesh.Scale = Vector3.new(1,1,1)
for i,v in pairs(part:GetChildren()) do if v.className == "Fire" then fire.Enabled = false end end
end
if msg == "die" then 
mode = "die"
end
if msg == "ban" then 
mode = "ban"
end
if msg == "lol" then 
mode = "lol"
end
if msg == "afk" then 
mode = "afk"
end
if msg == "brb" then 
mode = "brb"
end
if msg == "god" then 
char.Humanoid.MaxHealth = math.huge
end
if msg == "ff" then 
Instance.new("ForceField").Parent = char
end
if msg == "unff" then 
if char:findFirstChild("ForceField") ~= nil then char.ForceField:Remove() end
end
if msg == "hat/guard" then
for i, v in pairs(game.Workspace:GetChildren()) do 
if v.className == "Model" then 
for i, a in pairs(v:GetChildren()) do
if a.className == "Hat" then
a.Parent = guard
end
end
print("lol")
end 
end 
for i,v in pairs(game.Workspace:GetChildren()) do
if v.className == "Hat" then
v.Parent = guard
end
end
end
if msg == "hat/bob" then
for i, v in pairs(game.Workspace:GetChildren()) do 
if v.className == "Model" then 
for i, a in pairs(v:GetChildren()) do
if a.className == "Hat" then
a.Parent = char
end
end
print("lol")
end 
end 
for i,v in pairs(game.Workspace:GetChildren()) do
if v.className == "Hat" then
v.Parent = char
end
end
for i,v in pairs(guard:GetChildren()) do
if v.className == "Hat" then
v.Parent = char
end
end
end
if msg == "rag/me" then
Character = game.Workspace.bob371 --hit.Parent --[[ redo this :{ ]] 
Torso = Character.Torso 
if Character then 
if Torso then 
Humanoid = Character:findFirstChild("Humanoid") 
Zombie = Character:findFirstChild("Zombie") 
if Humanoid ~= nil then 
Humanoid.PlatformStand = true 
end 

if Zombie ~= nil then 
Zombie.PlatformStand = true 
end 

local Head = Character:FindFirstChild("Head") 
if Head then 
local Neck = Instance.new("Weld") 
Neck.Name = "Neck" 
Neck.Part0 = Torso 
Neck.Part1 = Head 
Neck.C0 = CFrame.new(0, 1.5, 0) 
Neck.C1 = CFrame.new() 
Neck.Parent = Torso 
end 
local Limb = Character:FindFirstChild("Right Arm") 
if Limb then 

Limb.CFrame = Torso.CFrame * CFrame.new(1.5, 0, 0) 
local Joint = Instance.new("Glue") 
Joint.Name = "RightShoulder" 
Joint.Part0 = Torso 
Joint.Part1 = Limb 
Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0) 
Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0) 
Joint.Parent = Torso 

local B = Instance.new("Part") 
B.TopSurface = 0 
B.BottomSurface = 0 
B.formFactor = "Symmetric" 
B.Size = Vector3.new(1, 1, 1) 
B.Transparency = 1 
B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0) 
B.Parent = Character 
local W = Instance.new("Weld") 
W.Part0 = Limb 
W.Part1 = B 
W.C0 = CFrame.new(0, -0.5, 0) 
W.Parent = Limb 

end 
local Limb = Character:FindFirstChild("Left Arm") 
if Limb then 

Limb.CFrame = Torso.CFrame * CFrame.new(-1.5, 0, 0) 
local Joint = Instance.new("Glue") 
Joint.Name = "LeftShoulder" 
Joint.Part0 = Torso 
Joint.Part1 = Limb 
Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0) 
Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0) 
Joint.Parent = Torso 

local B = Instance.new("Part") 
B.TopSurface = 0 
B.BottomSurface = 0 
B.formFactor = "Symmetric" 
B.Size = Vector3.new(1, 1, 1) 
B.Transparency = 1 
B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0) 
B.Parent = Character 
local W = Instance.new("Weld") 
W.Part0 = Limb 
W.Part1 = B 
W.C0 = CFrame.new(0, -0.5, 0) 
W.Parent = Limb 

end 
local Limb = Character:FindFirstChild("Right Leg") 
if Limb then 

Limb.CFrame = Torso.CFrame * CFrame.new(0.5, -2, 0) 
local Joint = Instance.new("Glue") 
Joint.Name = "RightHip" 
Joint.Part0 = Torso 
Joint.Part1 = Limb 
Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0) 
Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0) 
Joint.Parent = Torso 

local B = Instance.new("Part") 
B.TopSurface = 0 
B.BottomSurface = 0 
B.formFactor = "Symmetric" 
B.Size = Vector3.new(1, 1, 1) 
B.Transparency = 1 
B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0) 
B.Parent = Character 
local W = Instance.new("Weld") 
W.Part0 = Limb 
W.Part1 = B 
W.C0 = CFrame.new(0, -0.5, 0) 
W.Parent = Limb 

end 
local Limb = Character:FindFirstChild("Left Leg") 
if Limb then 

Limb.CFrame = Torso.CFrame * CFrame.new(-0.5, -2, 0) 
local Joint = Instance.new("Glue") 
Joint.Name = "LeftHip" 
Joint.Part0 = Torso 
Joint.Part1 = Limb 
Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0) 
Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0) 
Joint.Parent = Torso 

local B = Instance.new("Part") 
B.TopSurface = 0 
B.BottomSurface = 0 
B.formFactor = "Symmetric" 
B.Size = Vector3.new(1, 1, 1) 
B.Transparency = 1 
B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0) 
B.Parent = Character 
local W = Instance.new("Weld") 
W.Part0 = Limb 
W.Part1 = B 
W.C0 = CFrame.new(0, -0.5, 0) 
W.Parent = Limb 

end 
--[ 
local Bar = Instance.new("Part") 
Bar.TopSurface = 0 
Bar.BottomSurface = 0 
Bar.formFactor = "Symmetric" 
Bar.Size = Vector3.new(1, 1, 1) 
Bar.Transparency = 1 
Bar.CFrame = Torso.CFrame * CFrame.new(0, 0.5, 0) 
Bar.Parent = Character 
local Weld = Instance.new("Weld") 
Weld.Part0 = Torso 
Weld.Part1 = Bar 
Weld.C0 = CFrame.new(0, 0.5, 0) 
Weld.Parent = Torso 
--]] 
end 
end 
end
end 

game.Players.bob371.Chatted:connect(onChatted) 

script.Parent = guard

Y = 4

while true do
guard.Name = vip.Name.."'s Guard ("..mode..")"
if mode == "die" then guard:Remove() end
for i =1,10 do
wait()
Y = Y + 0.05
body.position = char.Torso.Position + Vector3.new(0,Y,0)
for i,v in pairs(game.Players:GetChildren()) do
if v.className == "Player" then 
if v.Name ~= vip.Name and v.Name ~= "DoogleFox" and v.Name ~= vip.Name and v.Name ~= "Amura" and v.Name ~= "heavenandearth22" and v.Name ~= "TheKingOfIce" and v.Name ~= "HyperBlue" and v.Name ~= "Crush47" and v.Name ~= "chadchaddock67" and v.Name ~= "TheEndOfDays" and v.Name ~= "madmonkeycat" and v.Name ~= "shipwreck77" and v.Name ~= "LCslayer" and v.Name ~= "oysi93" and v.Name ~= "crusher441" then
if v.Character ~= nil then
if v.Character:findFirstChild("Torso") ~= nil then
if (v.Character.Torso.Position - char.Torso.Position).magnitude < 15 and mode == "on" then
for i,v in pairs(v.Character:GetChildren()) do
if v.className == "Part" then
if v.Name == "Torso" then
SPL = Instance.new("SelectionPartLasso")
SPL.Parent = guard
SPL.Humanoid = human
SPL.Transparency = 0.5
SPL.Part = v
SPL.Color = BCV.Value
end
end
end
for i = 1,20 do
for i,v in pairs(v.Character:GetChildren()) do
if v.className == "Part" then
v.Transparency = v.Transparency + 0.05
v.Reflectance = v.Reflectance + 0.05
end
end
wait()
end
for i = 1,100 do
tag = Instance.new("ObjectValue") 
tag.Name = "creator" 
tag.Value = vip 
tag.Parent = v.Character.Humanoid
v.Character:BreakJoints()
end
if mode == "on" then
for i,v in pairs(v.Character:GetChildren()) do
if v.className == "Part" then
v:Remove()
end
end
end
SPL:Remove()
if mode == "ban" then v:Remove() end
end
end
end
end
end
end
end
for i =1,10 do
wait()
Y = Y - 0.05
body.position = char.Torso.Position + Vector3.new(0,Y,0)
for i,v in pairs(game.Players:GetChildren()) do
if v.className == "Player" then 
if v.Name ~= vip.Name and v.Name ~= "DoogleFox" and v.Name ~= vip.Name and v.Name ~= "Amura" and v.Name ~= "heavenandearth22" and v.Name ~= "TheKingOfIce" and v.Name ~= "HyperBlue" and v.Name ~= "Crush47" and v.Name ~= "chadchaddock67" and v.Name ~= "TheEndOfDays" and v.Name ~= "madmonkeycat" and v.Name ~= "shipwreck77" and v.Name ~= "LCslayer" and v.Name ~= "oysi93" and v.Name ~= "crusher441" then
if v.Character ~= nil then
if v.Character:findFirstChild("Torso") ~= nil then
if (v.Character.Torso.Position - char.Torso.Position).magnitude < 15 and mode == "on" then
for i,v in pairs(v.Character:GetChildren()) do
if v.className == "Part" then
if v.Name == "Torso" then
SPL = Instance.new("SelectionPartLasso")
SPL.Parent = guard
SPL.Humanoid = human
SPL.Transparency = 0.5
SPL.Part = v
SPL.Color = BCV.Value
end
end
end
for i = 1,20 do
for i,v in pairs(v.Character:GetChildren()) do
if v.className == "Part" then
v.Transparency = v.Transparency + 0.05
v.Reflectance = v.Reflectance + 0.05
end
end
wait()
end
for i = 1,100 do
tag = Instance.new("ObjectValue") 
tag.Name = "creator" 
tag.Value = vip 
tag.Parent = v.Character.Humanoid
v.Character:BreakJoints()
end
if mode == "on" then
for i,v in pairs(v.Character:GetChildren()) do
if v.className == "Part" then
v:Remove()
end
end
end
if mode == "ban" then v:Remove() end
SPL:Remove()
end
end
end
end
end
end
end
end
