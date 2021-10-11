-- Commands
-- grrrr...
-- woof
-- mute 2

scale = 0.5
player = game.Players.LocalPlayer
if owner then player = owner end
z = player.Character 
--[[for _,l in pairs (z:GetChildren()) do 
if l.className == "Hat" then 
l.Parent = game.Lighting
end end
for _,i in pairs (z:GetChildren()) do 
if i.className == "Shirt" then 
i:Remove() 
end end 
for _,g in pairs (z:GetChildren()) do 
if g.className == "Pants" then 
g:Remove() 
end end 
for _,g in pairs (z:GetChildren()) do 
if g.className == "ShirtGraphic" then 
g:Remove() 
end end 
for _,g in pairs (z.Torso:GetChildren()) do 
if g.className == "Decal" then 
g:Remove() 
end end ]]
for _,j in pairs (z:GetChildren()) do 
if j.className == "CharacterMesh" then 
j:Remove() 
end end 

la = z["Left Arm"] 
ra = z["Right Arm"] 
ll = z["Left Leg"] 
rl = z["Right Leg"] 
h = z.Head 
t = z.Torso 
sizeup = {t,h,ll,rl,ra,la} 

la.Size = Vector3.new(1,1,1)
ra.Size = la.Size
ll.Size = la.Size
rl.Size = la.Size
t.Size = Vector3.new(2,1,2)
--t.Transparency = 1
h.Size = Vector3.new(1,1,1)

for i = 1, #sizeup do 
--sizeup[i].Size = Vector3.new(sizeup[i].Size.x * scale,sizeup[i].Size.y * scale,sizeup[i].Size.z * scale) 
sizeup[i].TopSurface = 0 
sizeup[i].BottomSurface = 0 
sizeup[i].RightSurface = 0 
sizeup[i].LeftSurface = 0 
sizeup[i].FrontSurface = 0 
sizeup[i].BackSurface = 0 

end 

sizex = t.Size.x/2 
sizey = t.Size.x/2 
sizez = t.Size.x/2 

ls = Instance.new("Motor") 
ls.Parent = t 
ls.Name = "Left Shoulder" 
ls.Part0 = t 
ls.Part1 = la 
ls.MaxVelocity = 0.1 
ls.C0 = CFrame.new(-sizex - la.Size.x/2+1,la.Size.y/4-1,-0.5) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0) 
ls.C1 = CFrame.new(0,la.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 

rs = Instance.new("Motor") 
rs.Parent = t 
rs.Name = "Right Shoulder" 
rs.Part0 = t 
rs.Part1 = ra 
rs.MaxVelocity = 0.1 
rs.C0 = CFrame.new(sizex + ra.Size.x/2-1,ra.Size.y/4-1,-0.5) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rs.C1 = CFrame.new(0,ra.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 

lh = Instance.new("Motor") 
lh.Parent = t 
lh.Name = "Left Hip" 
lh.Part0 = t 
lh.Part1 = ll 
lh.MaxVelocity = 0.1 
lh.C0 = CFrame.new(sizex - ll.Size.x*1.5,-(ll.Size.y/4)*3,0.5) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0) 
lh.C1 = CFrame.new(0,ll.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 

rh = Instance.new("Motor") 
rh.Parent = t 
rh.Name = "Right Hip" 
rh.Part0 = t 
rh.Part1 = rl 
rh.MaxVelocity = 0.1 
rh.C0 = CFrame.new(sizex - rl.Size.x/2,-(ll.Size.y/4)*3,0.5) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rh.C1 = CFrame.new(0,rl.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 


n = Instance.new("Snap") 
n.Parent = t 
n.Name = "Neck" 
n.Part0 = t 
n.Part1 = h 
n.C0 = CFrame.new(0,sizey + h.Size.y/2-0.5,-0.5) * CFrame.fromEulerAnglesXYZ(0,0,0) 

a = z.Animate 
a:Remove() 
a:clone() 
a.Parent = z 

-- Dog House

Height = 0
Scalez = 0

for i,v in pairs(game.Workspace:GetChildren()) do if v.Name == "DogHouse" then Scalez = Scalez + 10 end end

DogHouse = Instance.new("Model")
DogHouse.Name = "DogHouse"
DogHouse.Parent = game.Workspace

Human = Instance.new("Humanoid")
Human.Parent = DogHouse

partz = Instance.new("Part")
partz.Name = "Wall"
partz.CanCollide = true
partz.Locked = true
partz.Anchored = true
partz.Parent = DogHouse
partz.BottomSurface = 0
partz.formFactor = "Plate"
partz.Size = Vector3.new(1,5,6)
partz.BrickColor = BrickColor.Red()
partz.Transparency = 0
partz.CFrame = CFrame.new(2.5+Scalez,2.5+Height,0)

partz = Instance.new("Part")
partz.Name = "Wall"
partz.CanCollide = true
partz.Locked = true
partz.Anchored = true
partz.Parent = DogHouse
partz.BottomSurface = 0
partz.formFactor = "Plate"
partz.Size = Vector3.new(6,5,1)
partz.BrickColor = BrickColor.Red()
partz.Transparency = 0
partz.CFrame = CFrame.new(0+Scalez,2.5+Height,2.5)

partz = Instance.new("Part")
partz.Name = "Wall"
partz.CanCollide = true
partz.Locked = true
partz.Anchored = true
partz.Parent = DogHouse
partz.BottomSurface = 0
partz.formFactor = "Plate"
partz.Size = Vector3.new(1,5,6)
partz.BrickColor = BrickColor.Red()
partz.Transparency = 0
partz.CFrame = CFrame.new(-2.5+Scalez,2.5+Height,0)

partz = Instance.new("Part")
partz.Name = "Wall"
partz.CanCollide = true
partz.Locked = true
partz.Anchored = true
partz.Parent = DogHouse
partz.BottomSurface = 0
partz.formFactor = "Plate"
partz.Size = Vector3.new(6,1,1)
partz.BrickColor = BrickColor.Red()
partz.Transparency = 0
partz.CFrame = CFrame.new(0+Scalez,5+Height,-2.5)

partz = Instance.new("Part")
partz.Name = "Wall"
partz.CanCollide = true
partz.Locked = true
partz.Anchored = true
partz.Parent = DogHouse
partz.BottomSurface = 0
partz.formFactor = "Plate"
partz.Size = Vector3.new(1,1,6)
partz.BrickColor = BrickColor.Red()
partz.Transparency = 0
partz.CFrame = CFrame.new(2.5+Scalez,5+Height,0)

partz = Instance.new("Part")
partz.Name = "Wall"
partz.CanCollide = true
partz.Locked = true
partz.Anchored = true
partz.Parent = DogHouse
partz.BottomSurface = 0
partz.formFactor = "Plate"
partz.Size = Vector3.new(1,1,6)
partz.BrickColor = BrickColor.Red()
partz.Transparency = 0
partz.CFrame = CFrame.new(-2.5+Scalez,5+Height,0)

partz = Instance.new("Part")
partz.Name = "Wall"
partz.CanCollide = true
partz.Locked = true
partz.Anchored = true
partz.Parent = DogHouse
partz.BottomSurface = 0
partz.formFactor = "Plate"
partz.Size = Vector3.new(6,1,1)
partz.BrickColor = BrickColor.Red()
partz.Transparency = 0
partz.CFrame = CFrame.new(0+Scalez,5+Height,2.5)

partz = Instance.new("Part")
partz.Name = "Wall"
partz.CanCollide = true
partz.Locked = true
partz.Anchored = true
partz.Parent = DogHouse
partz.BottomSurface = 0
partz.formFactor = "Plate"
partz.Size = Vector3.new(1,5,1)
partz.BrickColor = BrickColor.Red()
partz.Transparency = 0
partz.CFrame = CFrame.new(2+Scalez,2.5+Height,-2.5)

partz = Instance.new("Part")
partz.Name = "Wall"
partz.CanCollide = true
partz.Locked = true
partz.Anchored = true
partz.Parent = DogHouse
partz.BottomSurface = 0
partz.formFactor = "Plate"
partz.Size = Vector3.new(1,5,1)
partz.BrickColor = BrickColor.Red()
partz.Transparency = 0
partz.CFrame = CFrame.new(-2+Scalez,2.5+Height,-2.5)

for i,v in pairs(DogHouse:GetChildren()) do if v.className == "Part" then Instance.new("BlockMesh").Parent = v end end

partz = Instance.new("Part")
partz.Name = "Wall"
partz.CanCollide = false
partz.Locked = true
partz.Anchored = true
partz.Parent = DogHouse
partz.BottomSurface = 0
partz.formFactor = "Plate"
partz.Size = Vector3.new(5,5,1)
partz.BrickColor = BrickColor.Black()
partz.Transparency = 0
partz.CFrame = CFrame.new(0+Scalez,2.5+Height,-2.5)
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1,1,0.9)
mesh.Parent = partz

partz = Instance.new("Part")
partz.Name = "Wall"
partz.CanCollide = true
partz.Locked = true
partz.Anchored = true
partz.Parent = DogHouse
partz.BottomSurface = 0
partz.formFactor = "Plate"
partz.Size = Vector3.new(1,1.2,3)
partz.BrickColor = BrickColor.Red()
partz.Transparency = 0
partz.CFrame = CFrame.new(-1.5+Scalez,6.1+Height,2.5) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0)
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Wedge"
mesh.Scale = Vector3.new(1,1,1)
mesh.Parent = partz

partz = Instance.new("Part")
partz.Name = "Wall"
partz.CanCollide = true
partz.Locked = true
partz.Anchored = true
partz.Parent = DogHouse
partz.BottomSurface = 0
partz.formFactor = "Plate"
partz.Size = Vector3.new(1,1.2,3)
partz.BrickColor = BrickColor.Red()
partz.Transparency = 0
partz.CFrame = CFrame.new(1.5+Scalez,6.1+Height,2.5) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0)
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Wedge"
mesh.Scale = Vector3.new(1,1,1)
mesh.Parent = partz

partz = Instance.new("Part")
partz.Name = "Wall"
partz.CanCollide = true
partz.Locked = true
partz.Anchored = true
partz.Parent = DogHouse
partz.BottomSurface = 0
partz.formFactor = "Plate"
partz.Size = Vector3.new(1,1.2,3)
partz.BrickColor = BrickColor.Red()
partz.Transparency = 0
partz.CFrame = CFrame.new(-1.5+Scalez,6.1+Height,-2.5) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0)
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Wedge"
mesh.Scale = Vector3.new(1,1,1)
mesh.Parent = partz

partz = Instance.new("Part")
partz.Name = "Wall"
partz.CanCollide = true
partz.Locked = true
partz.Anchored = true
partz.Parent = DogHouse
partz.BottomSurface = 0
partz.formFactor = "Plate"
partz.Size = Vector3.new(1,1.2,3)
partz.BrickColor = BrickColor.Red()
partz.Transparency = 0
partz.CFrame = CFrame.new(1.5+Scalez,6.1+Height,-2.5) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0)
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Wedge"
mesh.Scale = Vector3.new(1,1,1)
mesh.Parent = partz

partz = Instance.new("Part")
partz.Name = "Part1z"
partz.CanCollide = true
partz.Locked = true
partz.Anchored = true
partz.Material = "Wood"
partz.Parent = DogHouse
partz.BottomSurface = 0
partz.formFactor = "Plate"
partz.Size = Vector3.new(4,0.4,6)
partz.BrickColor = BrickColor.new("Reddish brown")
partz.Transparency = 0
partz.CFrame = CFrame.new(1.5+Scalez,6.1+Height,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.4)
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.875,1,1.1)
mesh.Parent = partz

partz = Instance.new("Part")
partz.Name = "Part2z"
partz.CanCollide = true
partz.Locked = true
partz.Anchored = true
partz.Material = "Wood"
partz.Parent = DogHouse
partz.BottomSurface = 0
partz.formFactor = "Plate"
partz.Size = Vector3.new(4,0.4,6)
partz.BrickColor = BrickColor.new("Reddish brown")
partz.Transparency = 0
partz.CFrame = CFrame.new(-1.5+Scalez,6.1+Height,0) * CFrame.fromEulerAnglesXYZ(0,0,0.4)
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.875,1,1.1)
mesh.Parent = partz

-- Accesories

--[[partz = Instance.new("Part")
partz.Name = "TemporaryTorso"
partz.CanCollide = false
partz.Locked = true
partz.Parent = z
partz.BottomSurface = 0
partz.formFactor = "Plate"
partz.Size = Vector3.new(1,0.4,1) --o
partz.BrickColor = z.Torso.BrickColor
partz.TopSurface, partz.BottomSurface = 0,0
partz.Transparency = 0
meshz = Instance.new("SpecialMesh")
meshz.MeshType = "Brick"
meshz.Scale = Vector3.new(2,2.5,2) --ya
meshz.Parent = partz
w = Instance.new("Weld") 
w.Parent = z["Torso"]
w.Part0 = z["Torso"]
w.Part1 = partz
w.C0 = CFrame.new(0,0,-0.5) * CFrame.fromEulerAnglesXYZ(0,0,0)]]

parta = Instance.new("Part")
parta.Name = "TemporaryTorso"
parta.CanCollide = false
parta.Locked = true
parta.Parent = z
parta.BottomSurface = 0
parta.formFactor = "Plate"
parta.Size = Vector3.new(1,0.4,1)
parta.BrickColor = z.Torso.BrickColor
parta.TopSurface, parta.BottomSurface = 0,0
parta.Transparency = 0
mesha = Instance.new("SpecialMesh")
mesha.MeshType = "Brick"
mesha.Scale = Vector3.new(0.5,1,1)
mesha.Parent = parta
wz = Instance.new("Weld") 
wz.Parent = z["Torso"]
wz.Part0 = z["Torso"]
wz.Part1 = parta
wz.C0 = CFrame.new(0,0.5,1) * CFrame.fromEulerAnglesXYZ(-1,0,0)


function Chat(msg)
if msg == "grrrr..." then
Ff = Instance.new("ForceField")
Ff.Parent = z
Ex = Instance.new("Explosion")
Ex.Position = z.Torso.Position
Ex.Parent = game.Workspace
wait(1)
Ff:Remove()
end
if msg == "woof" then
for i,v in pairs(game.Players:GetChildren()) do
if v.className == "Player" then
pcall(function()
v.Character.Humanoid.Jump = true
end)
end
end
wait(0.1)
for i,v in pairs(game.Players:GetChildren()) do
if v.className == "Player" then
if v.Character:findFirstChild("Humanoid") ~= nil then
if v.Name ~= vip.Name then
if (v.Character.Torso.Position - z.Torso.Position).magnitude < 15 then
v.Character.Humanoid.PlatformStand = true
end
end
end
end
end
end
if msg == "/mute 2" then
partz = Instance.new("Part")
partz.Name = "TemporaryTorso"
partz.CanCollide = true
partz.Locked = true
partz.BottomSurface = 0
partz.formFactor = "Plate"
partz.Size = Vector3.new(1,0.4,1)
partz.BrickColor = BrickColor.new("Reddish brown")
partz.Transparency = 0
meshz = Instance.new("SpecialMesh")
meshz.MeshType = "Brick"
meshz.Scale = Vector3.new(0.3,1,0.3)
meshz.Parent = partz
partz.Parent = game.Workspace
partz.CFrame = parta.CFrame - Vector3.new(0,-0.2,0)
partz:BreakJoints()
end
if msg == "open" then
for i = 1,30 do wait()
DogHouse.Part1z.CFrame = DogHouse.Part1z.CFrame * CFrame.new(0.11, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, -0.039)
DogHouse.Part2z.CFrame = DogHouse.Part2z.CFrame * CFrame.new(-0.11, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0.039)
end
for i = 1,10 do wait()
DogHouse.Part1z.CFrame = DogHouse.Part1z.CFrame * CFrame.new(0.11, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
DogHouse.Part2z.CFrame = DogHouse.Part2z.CFrame * CFrame.new(-0.11, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
end
if msg == "close" then
for i = 1,10 do wait()
DogHouse.Part2z.CFrame = DogHouse.Part2z.CFrame * CFrame.new(0.11, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
DogHouse.Part1z.CFrame = DogHouse.Part1z.CFrame * CFrame.new(-0.11, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
for i = 1,30 do wait()
DogHouse.Part2z.CFrame = DogHouse.Part2z.CFrame * CFrame.new(0.11, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, -0.039)
DogHouse.Part1z.CFrame = DogHouse.Part1z.CFrame * CFrame.new(-0.11, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0.039)
end
DogHouse.Part2z.CFrame = DogHouse.Part2z.CFrame * CFrame.new(0.06, -0.1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
DogHouse.Part1z.CFrame = DogHouse.Part1z.CFrame * CFrame.new(-0.06, -0.1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
end

player.Chatted:connect(Chat)

-- Hats

for _,l in pairs (game.Lighting:GetChildren()) do 
if l.className == "Accesory" then 
l.Parent = z
end end

-- Speed

z.Humanoid.WalkSpeed = 18

-- Wag

coroutine.resume(coroutine.create(function()
while true do wait()
wz.C0 = CFrame.new(0.05,0.5,1) * CFrame.fromEulerAnglesXYZ(-1,0.05,0)
wait()
wz.C0 = CFrame.new(0,0.5,1) * CFrame.fromEulerAnglesXYZ(-1,0,0)
wait()
wz.C0 = CFrame.new(-0.05,0.5,1) * CFrame.fromEulerAnglesXYZ(-1,-0.05,0)
wait()
wz.C0 = CFrame.new(0,0.5,1) * CFrame.fromEulerAnglesXYZ(-1,0,0)
end
end))