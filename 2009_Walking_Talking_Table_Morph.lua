scale = 1
seat = true
chair = false
player = game.Players.LocalPlayer
if owner then player = owner end
Xish = nil
if chair == false then Xish = 4.5 else Xish = 0 end
z = player.Character 
for _,l in pairs (z:GetChildren()) do 
if l.className == "Accessory" then 
l:Remove() 
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
end end 
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
for i = 1, #sizeup do 
sizeup[i].Size = Vector3.new(sizeup[i].Size.x * scale,sizeup[i].Size.y * scale,sizeup[i].Size.z * scale) 
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
ls.C0 = CFrame.new(-sizex - la.Size.x/2,la.Size.y/4-2,-6+Xish) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0) 
ls.C1 = CFrame.new(0,la.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 

rs = Instance.new("Motor") 
rs.Parent = t 
rs.Name = "Right Shoulder" 
rs.Part0 = t 
rs.Part1 = ra 
rs.MaxVelocity = 0.1 
rs.C0 = CFrame.new(sizex + ra.Size.x/2,ra.Size.y/4-2,-6+Xish) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rs.C1 = CFrame.new(0,ra.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 

lh = Instance.new("Motor") 
lh.Parent = t 
lh.Name = "Left Hip" 
lh.Part0 = t 
lh.Part1 = ll 
lh.MaxVelocity = 0.1 
lh.C0 = CFrame.new(sizex - ll.Size.x*1.5-1,-(ll.Size.y/4)*3,-3+Xish) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0) 
lh.C1 = CFrame.new(0,ll.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 

rh = Instance.new("Motor") 
rh.Parent = t 
rh.Name = "Right Hip" 
rh.Part0 = t 
rh.Part1 = rl 
rh.MaxVelocity = 0.1 
rh.C0 = CFrame.new(sizex - rl.Size.x/2+1,-(ll.Size.y/4)*3,-3+Xish) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
rh.C1 = CFrame.new(0,rl.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 


n = Instance.new("Snap") 
n.Parent = t 
n.Name = "Neck" 
n.Part0 = t 
n.Part1 = h 
n.C0 = CFrame.new(0,sizey + h.Size.y/2-1.5,-4.5+Xish) * CFrame.fromEulerAnglesXYZ(0,0,0) 

a = z.Animate 
a:Remove() 
a:clone() 
a.Parent = z 

knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(2,1,2) 
knife.BrickColor = BrickColor.new("Reddish brown") 
knife.Material = "Wood"
knife.Parent = player.Character
knife.Locked = true 
knife.CanCollide = true
knife.Transparency = 0
knife.TopSurface = 0
knife.BottomSurface = 0
kmesh = Instance.new("SpecialMesh")
kmesh.Parent = knife
kmesh.Scale = Vector3.new(2.2,1,2.2)
kmesh.MeshType = "Brick"
w = Instance.new("Weld") 
w.Parent = player.Character["Torso"] 
w.Part0 = player.Character["Torso"]
w.Part1 = knife 
w.C0 = CFrame.new(0,-1,-4.5+Xish) * CFrame.fromEulerAnglesXYZ(0,0,0)

knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(2,1,2) 
knife.BrickColor = BrickColor.Black()
knife.Parent = player.Character
knife.Locked = true 
knife.CanCollide = true
knife.Transparency = 0
knife.TopSurface = 0
knife.BottomSurface = 0
kmesh = Instance.new("CylinderMesh")
kmesh.Parent = knife
kmesh.Scale = Vector3.new(0.5,0.5,0.5)
w = Instance.new("Weld") 
w.Parent = player.Character["Torso"] 
w.Part0 = player.Character["Torso"]
w.Part1 = knife 
w.C0 = CFrame.new(0,-0.4,-4.5+Xish) * CFrame.fromEulerAnglesXYZ(0,0,0)

if chair == true then
zknife = Instance.new("Seat")
zknife.formFactor = "Symmetric"
zknife.Size = Vector3.new(2,1,2)
zknife.BrickColor = BrickColor.new("Mid gray")
zknife.Material = "Concrete" 
zknife.Parent = player.Character
zknife.Locked = true 
zknife.CanCollide = true
zknife.Transparency = 0
zknife.TopSurface = 0
zknife.BottomSurface = 0
w = Instance.new("Weld") 
w.Parent = player.Character["Torso"] 
w.Part0 = player.Character["Torso"]
w.Part1 = zknife
w.C0 = CFrame.new(0,-1,-0.5) * CFrame.fromEulerAnglesXYZ(0,0,0)
else
player.Character.Torso.Transparency = 1
end

if chair == true then
knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.Black() 
knife.Parent = player.Character
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
knife.TopSurface = 0
knife.BottomSurface = 0
kmesh = Instance.new("SpecialMesh")
kmesh.Parent = knife
kmesh.Scale = Vector3.new(2,2,2)
kmesh.MeshType = "Sphere"
w = Instance.new("Weld") 
w.Parent = player.Character["Torso"] 
w.Part0 = player.Character["Torso"]
w.Part1 = knife 
w.C0 = CFrame.new(0,-3,-0.5) * CFrame.fromEulerAnglesXYZ(0,0,0)
end

if chair == true then
knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.Black() 
knife.Parent = player.Character
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
knife.TopSurface = 0
knife.BottomSurface = 0
kmesh = Instance.new("CylinderMesh")
kmesh.Parent = knife
kmesh.Scale = Vector3.new(1,2,1)
w = Instance.new("Weld") 
w.Parent = player.Character["Torso"] 
w.Part0 = player.Character["Torso"]
w.Part1 = knife 
w.C0 = CFrame.new(0,-2,-0.5) * CFrame.fromEulerAnglesXYZ(0,0,0)
end

for i,v in pairs(player.Character:GetChildren()) do if v.className == "BodyColors" then
v.HeadColor = BrickColor.Black()
v.RightLegColor = BrickColor.new("Reddish brown")
v.RightArmColor = BrickColor.new("Reddish brown")
v.LeftLegColor = BrickColor.new("Reddish brown")
v.LeftArmColor = BrickColor.new("Reddish brown")
v.TorsoColor = BrickColor.new("Mid gray")
end end

knife = player.Character.Head
knife.Mesh.MeshType = "Sphere"
knife.BrickColor = BrickColor.Black()
knife.Reflectance = 1
knife.Mesh.Scale = Vector3.new(1.25/2,1.25,1.25)

knife = player.Character["Left Leg"]
knife.BrickColor = BrickColor.new("Reddish brown") 
knife.Material = "Wood"

knife = player.Character["Left Arm"]
knife.BrickColor = BrickColor.new("Reddish brown") 
knife.Material = "Wood"

knife = player.Character["Right Leg"]
knife.BrickColor = BrickColor.new("Reddish brown") 
knife.Material = "Wood"

knife = player.Character["Right Arm"]
knife.BrickColor = BrickColor.new("Reddish brown") 
knife.Material = "Wood"

knife = player.Character["Torso"]
knife.BrickColor = BrickColor.new("Mid gray")
knife.Material = "Concrete"

player.Character.Humanoid.MaxHealth = math.huge

D = true

function stick(x, y)
	weld = Instance.new("Weld") 
	weld.Part0 = x
	weld.Part1 = y
	weld.Name = "W1SA"
	local HitPos = x.Position
	local CJ = CFrame.new(HitPos) 
	local C0 = x.CFrame:inverse() * CJ
	local C1 = y.CFrame:inverse() * CJ * CFrame.fromEulerAnglesXYZ(0,0,0)
	weld.C0 = C0 
	weld.C1 = C1 
	weld.Parent = x
end

function onTouched(hit)
if D == true then
D = false
h = hit.Parent:findFirstChild("Humanoid")
if h ~= nil then 
h.Sit = true 
--script.Parent.s.Value = true
hp = zknife
--hit.Parent.Torso.CFrame = CFrame.new(hp.Position.x,hp.Position.y+1 ,hp.Position.z)
stick(hit.Parent["Torso"], zknife)
end 
repeat wait(0.001) until hit.Parent.Humanoid.Sit == false
print("Player has jumped out.")
for _,v in pairs(hit.Parent["Torso"]:GetChildren()) do
if v.className == "Weld" then v:Remove() end end 
wait(3)
print("D = true")
D = true
end 
end 

if seat == true then zknife.Touched:connect(onTouched) 
end