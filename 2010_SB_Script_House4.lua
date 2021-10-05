if script.Parent.className ~= "Model" then

Discozor = false

Cover = Instance.new("Part")
Cover.Name = "Base"
Cover.Anchored = true
Cover.Size = Vector3.new(100,150,100)
Cover.Locked = true
Cover.Transparency = 0.75
Cover.CFrame = CFrame.new(0,0,0)

Model0 = Instance.new("Script")
Model0.Name = "Bobazor"
Model0.Parent = game.Workspace

Cover.Parent = Model0

Model1 = Instance.new("Model")
Model1.Name = "Model1"
Model1.Parent = Model0

Model2 = Instance.new("Model")
Model1.Name = "Model2"
Model2.Parent = Model0

Model3 = Instance.new("Model")
Model3.Name = "Model3"
Model3.Parent = Model0

Model4 = Instance.new("Model")
Model4.Name = "bob371's & Crush47's Tower :D"
Model4.Parent = Model1

Model5 = Instance.new("Model")
Model5.Name = "Model5"
Model5.Parent = Model0

Model6 = Instance.new("Model")
Model6.Name = "Model6"
Model6.Parent = Model0

Model7 = Instance.new("Model")
Model7.Name = "Model7"
Model7.Parent = Model0

Human0 = Instance.new("Humanoid")
Human0.Parent = Model4
Human0.MaxHealth = 0

Part0 = Instance.new("Part")
Part0.BrickColor = BrickColor.new("Dark stone grey")
Part0.Locked = true
Part0.Anchored = true
Part0.CanCollide = true
Part0.BottomSurface = 0
Part0.Size = Vector3.new(25,5,25)
Part0.Parent = Model1
Part0.CFrame = CFrame.new(0,0,0)
Part0.Name = "Base"



Part7 = Instance.new("Part")
Part7.Locked = true
Part7.BrickColor = BrickColor.new("Really black")
Part7.Anchored = true
Part7.CanCollide = true
Part7.TopSurface = 0
Part7.BottomSurface = 0
Part7.Size = Vector3.new(3,30,4)
Part7.CFrame = CFrame.new(0,0,40)
Part7.Name = "Base"

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

Part7.Size = Vector3.new(2,29,1)
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
Part7.Size = Vector3.new(3,5,4)

for i = 1,11 do
Part2 = Part7:Clone()
Part2.Parent = Model1
Part7.CFrame = Part2.CFrame * CFrame.new(-1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part7.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.025,0)
Part2.CFrame = Part2.CFrame * CFrame.new(-1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.025,0)
Part2.CFrame = Part2.CFrame + Vector3.new(0,12.6,0)
Part7.CFrame = Part2.CFrame
Part7.CFrame = Part7.CFrame - Vector3.new(0,12.6,0)
wait()
end

Part7.Size = Vector3.new(3,21,4)

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

Part1 = Instance.new("Part")
Part1.Locked = true
Part1.Anchored = true
Part1.CanCollide = true
Part1.TopSurface = 0
Part1.BottomSurface = 0
Part1.Size = Vector3.new(2,50,2)
Part1.CFrame = CFrame.new(0,25,10)
Part1.Name = "Base"

Part9 = Instance.new("Part")
Part9.Locked = true
Part9.BrickColor = BrickColor.new("Really black")
Part9.Anchored = true
Part9.CanCollide = true
Part9.TopSurface = 0
Part9.BottomSurface = 0
Part9.Size = Vector3.new(5,2,5)
Part9.CFrame = CFrame.new(0,0,8)
Part9.Name = "Base"

for i = 1,110 do
Part2 = Part1:Clone()
Part2.Parent = Model1
Part1.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
Part1.CFrame = Part2.CFrame * CFrame.new(.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
Part2.CFrame = Part2.CFrame * CFrame.new(.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part1.CFrame = Part2.CFrame
Part2 = Part9:Clone()
Part2.Parent = Model4
Part9.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
Part9.CFrame = Part2.CFrame * CFrame.new(.4, .3, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
Part2.CFrame = Part2.CFrame * CFrame.new(.4, .3, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part9.CFrame = Part2.CFrame
wait()
end

for i = 1,70 do
Part2 = Part9:Clone()
Part2.Parent = Model4
Part9.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
Part9.CFrame = Part2.CFrame * CFrame.new(.4, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
Part2.CFrame = Part2.CFrame * CFrame.new(.4, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part9.CFrame = Part2.CFrame
wait()
end

Y = Part9.Position.y

Part1.Size = Vector3.new(2,40,2)

for i = 1,19 do
Part2 = Part1:Clone()
Part2.Parent = Model1
Part1.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
Part1.CFrame = Part2.CFrame * CFrame.new(.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
Part2.CFrame = Part2.CFrame * CFrame.new(.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part2.CFrame = Part2.CFrame + Vector3.new(0,5,0)
Part1.CFrame = Part2.CFrame
Part1.CFrame = Part1.CFrame - Vector3.new(0,5,0)
wait()
end

Part8 = Instance.new("Part")
Part8.Locked = true
Part8.BrickColor = BrickColor.new("Really black")
Part8.Anchored = true
Part8.CanCollide = true
Part8.TopSurface = 0
Part8.BottomSurface = 0
Part8.Size = Vector3.new(10,2,10)
Part8.CFrame = CFrame.new(0,Y,0)
Part8.Name = "Base"

for i = 1,60 do
Part2 = Part8:Clone()
Part2.Parent = Model4
Part8.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
Part8.CFrame = Part2.CFrame * CFrame.new(.1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
Part2.CFrame = Part2.CFrame * CFrame.new(.1, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part8.CFrame = Part2.CFrame
wait()
end

Part1 = Instance.new("Part")
Part1.Locked = true
Part1.BrickColor = BrickColor.new("Really black")
Part1.Anchored = true
Part1.CanCollide = true
Part1.TopSurface = 0
Part1.BottomSurface = 0
Part1.Size = Vector3.new(3,1,3)
Part1.CFrame = CFrame.new(0,50,10)
Part1.Name = "Base"

for i = 1,128 do
Part2 = Part1:Clone()
Part2.Parent = Model1
Part1.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
Part1.CFrame = Part2.CFrame * CFrame.new(.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part2.CFrame = Part2.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
Part2.CFrame = Part2.CFrame * CFrame.new(.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part1.CFrame = Part2.CFrame
wait()
end

Part4 = Instance.new("Part")
Part4.BrickColor = BrickColor.new("Really black")
Part4.Locked = true
Part4.Anchored = true
Part4.CanCollide = true
Part4.BottomSurface = 0
Part4.Size = Vector3.new(20,1,20)
Part4.CFrame = CFrame.new(0,40.75,0)
Part4.Transparency = 1
Part4.CanCollide = false
Decal0 =Instance.new("Decal")
Decal0.Texture = "http://www.roblox.com/asset/?id=27516517"
Decal0.Parent = Part4
Decal0.Face = "Bottom"
Mesh0 = Instance.new("CylinderMesh")
Mesh0.Parent = Part4
Mesh0.Scale = Vector3.new(1.1,1,1.1)
Part4.Parent = Model1
Part4.Name = "Base"

Part7 = Instance.new("Part")
Part7.BrickColor = BrickColor.new("Really black")
Part7.Locked = true
Part7.Anchored = true
Part7.CanCollide = true
Part7.BottomSurface = 0
Part7.Size = Vector3.new(20,2,20)
Part7.CFrame = CFrame.new(0,Y,0)
Part7.Transparency = 1
Part7.CanCollide = false
Decal1 = Instance.new("Decal")
Decal1.Texture = "http://www.roblox.com/asset/?id=27516517"
Decal1.Parent = Part7
Decal1.Face = "Top"
Mesh0 = Instance.new("CylinderMesh")
Mesh0.Parent = Part7
Mesh0.Scale = Vector3.new(1.1,1.01,1.1)
Part7.Parent = Model1
Part4.Name = "Base"

Part5 = Instance.new("Part")
Part5.Locked = true
Part5.Anchored = true
Part5.CanCollide = true
Part5.TopSurface = 0
Part5.BottomSurface = 0
Part5.Size = Vector3.new(1,18,1)
Part5.CFrame = CFrame.new(0,10,10)
Part5.Name = "Base"

for i = 1,110 do
Part6 = Part5:Clone()
Part5.CFrame = Part6.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
Part5.CFrame = Part6.CFrame * CFrame.new(.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part6.CFrame = Part6.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
Part6.CFrame = Part6.CFrame * CFrame.new(.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part5.CFrame = Part6.CFrame
end

for i = 1,8 do
Part6 = Part5:Clone()
Part6.Parent = Model3
Part5.CFrame = Part6.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
Part5.CFrame = Part6.CFrame * CFrame.new(.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part6.CFrame = Part6.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
Part6.CFrame = Part6.CFrame * CFrame.new(.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part5.CFrame = Part6.CFrame
wait()
end

for i = 1,6 do
Part6 = Part5:Clone()
Part6.Parent = Model2
Part5.CFrame = Part6.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
Part5.CFrame = Part6.CFrame * CFrame.new(.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part6.CFrame = Part6.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
Part6.CFrame = Part6.CFrame * CFrame.new(.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Part5.CFrame = Part6.CFrame
wait()
end

Buttonz = Instance.new("Part")
Buttonz.formFactor = "Symmetric"
Buttonz.Anchored = true
Buttonz.Name = "Base"
Buttonz.Locked = true
Buttonz.CanCollide = false
Buttonz.BrickColor = BrickColor.new("Really red")
Buttonz.Size = Vector3.new(3,3,3)
Buttonz.Shape = "Ball"
Buttonz.TopSurface = 0
Buttonz.BottomSurface = 0
Buttonz.Parent = Model1
Buttonz.CFrame = CFrame.new(0,Y+1,0)

local i = 0
local C = Instance.new("Part") 
C.Transparency = .75 
C.CanCollide = true 
C.Parent = Model4
C.formFactor = ("Symmetric") 
C.Name = "Head"
C.Anchored = true 
C.Size = Vector3.new(20,20,20) 
C.BrickColor = BrickColor.new("Navy blue") 
C.TopSurface = ("Smooth") 
C.BottomSurface = ("Smooth") 
C.Shape = ("Ball") 
C.Locked = true
C.CFrame = CFrame.new(0,50,0) 
wait() 
local i = 0
local C = Instance.new("Part") 
C.Transparency = 1
C.CanCollide = false
C.Parent = Model4
C.formFactor = ("Symmetric") 
C.Name = "Base"
C.Anchored = true 
C.Size = Vector3.new(21,21,21) 
C.BrickColor = BrickColor.new("Navy blue") 
C.TopSurface = ("Smooth") 
C.BottomSurface = ("Smooth") 
C.Shape = ("Ball") 
C.Locked = true
C.CFrame = CFrame.new(0,50,0) 
wait(1) 

for i = 1, 180, 2 do 

local p = Instance.new("Part") 
p.Parent = Model4
p.Name = "Base" 
p.Locked = true
p.Size = Vector3.new(1,1,1) 
p.formFactor = ("Symmetric") 
p.BrickColor = BrickColor.new("Really black") 
p.TopSurface = ("Smooth") 
p.BottomSurface = ("Smooth") 
p.Reflectance = 0 
p.CFrame = CFrame.new(10*math.cos(math.rad(i)),(10*math.sin(math.rad(i)))+50,0)*CFrame.fromEulerAnglesXYZ(0,0,math.rad(i)) --rotates the brick 
p.Anchored = true 
wait() 
end 
for i = 1, 180, 2 do 

local p = Instance.new("Part") 
p.Parent = Model4
p.Name = "Base" 
p.Locked = true
p.Size = Vector3.new(1,1,1) 
p.formFactor = ("Symmetric") 
p.BrickColor = BrickColor.new("Really black") 
p.TopSurface = ("Smooth") 
p.BottomSurface = ("Smooth") 
p.Reflectance = 0 
p.CFrame = CFrame.new(0,(10*math.sin(math.rad(i)))+50,10*math.cos(math.rad(i)))*CFrame.fromEulerAnglesXYZ(-math.rad(i),0,0) --rotates the brick 
p.Anchored = true 
wait() 
end 


script.Parent = Model2

end

function Open()
for i = 1,5 do
for i,v in pairs(script.Parent:GetChildren()) do
if v.className == "Part" then
v.CFrame = v.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
v.CFrame = v.CFrame * CFrame.new(.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
end
for i,v in pairs(script.Parent.Parent.Model3:GetChildren()) do
if v.className == "Part" then
v.CFrame = v.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.05,0)
v.CFrame = v.CFrame * CFrame.new(-.55, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
end
wait()
end
end

function Close()
for i = 1,5 do
for i,v in pairs(script.Parent:GetChildren()) do
if v.className == "Part" then
v.CFrame = v.CFrame * CFrame.new(-.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
v.CFrame = v.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.05,0)
end
end
for i,v in pairs(script.Parent.Parent.Model3:GetChildren()) do
if v.className == "Part" then
v.CFrame = v.CFrame * CFrame.new(.55, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
v.CFrame = v.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
end
end
wait()
end
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

function Open()
for i = 1,5 do
for i,v in pairs(script.Parent:GetChildren()) do
if v.className == "Part" then
v.CFrame = v.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0)
v.CFrame = v.CFrame * CFrame.new(.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
end
for i,v in pairs(script.Parent.Parent.Model3:GetChildren()) do
if v.className == "Part" then
v.CFrame = v.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.05,0)
v.CFrame = v.CFrame * CFrame.new(-.55, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
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

Blah = true
Blaha = true
Blahb = true

EndBlahb = true

function Touched(hit)
--if (hit.Parent.Name == "chaterbox0" or hit.Parent.Name == "12345x54321" or hit.Parent.Name == "HyperBlue" or hit.Parent.Name == "Scriptis" or hit.Parent.Name == "billiland" or hit.Parent.Name == "ELua" or hit.Parent.Name == "alexnewtron" or hit.Parent.Name == "NonSpeaker" or hit.Parent.Name == "oysi93" or hit.Parent.Name == "UltraViper85" or hit.Parent.Name == "izzatnasruna" or hit.Parent.Name == "matthewhwang" or hit.Parent.Name == "xxSNAKExx" or hit.Parent.Name == "TripleXD" or hit.Parent.Name == "Crush47" or hit.Parent.Name == "shipwreck77" or hit.Parent.Name == "nograpes" or hit.Parent.Name == "Crunch225" or hit.Parent.Name == "Benji2015v2" or hit.Parent.Name == "bob371" or hit.Parent.Name == "TheTestAccount371" or hit.Parent.Name == "DarkShadow6") then
if hit.Parent.Name ~= "" then
if Blah == true then
Blah = false
Open()
wait(1.5)
Close()
Blah = true
end
else
if hit.Parent:findFirstChild("Humanoid") == nil then return end
H = Instance.new("Hint")
H.Name = "Killer"
H.Parent = hit.Parent
H.Text = hit.Parent.Name.." Is Trying To Sneak Into bob371/Crush47's Tower, Take Him Down!"
wait(1)
H.Text = "Pow!"
hit.Parent:BreakJoints()
end
end

function Toucheda(hit)
if Blaha == true then
Blaha = false
Opena()
wait(4)
Closea()
Blaha = true
end
end

Openb()
EndBlahb = false

function Touchedb(hit)
if hit.Parent.Name == "bob371" or hit.Parent.Name == "Crush47" or hit.Parent.Name == "Benji2015v2" then
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

for i,v in pairs(script.Parent.Parent.Model5:GetChildren()) do if v.className == "Part" then v.Touched:connect(Toucheda) end end
for i,v in pairs(script.Parent.Parent.Model6:GetChildren()) do if v.className == "Part" then v.Touched:connect(Toucheda) end end

Buttonz.Touched:connect(Touchedb)

for i,v in pairs(script.Parent:GetChildren()) do if v.className == "Part" then v.Touched:connect(Touched) end end
for i,v in pairs(script.Parent.Parent.Model3:GetChildren()) do if v.className == "Part" then v.Touched:connect(Touched) end end

Cover:Remove()

--[[

Instance.new("ClickDetector").Parent = Model2
Instance.new("ClickDetector").Parent = Model3

function Clicked()
if Blah == true then
Blah = false
Open()
wait(1.5)
Close()
Blah = true
end
end

script.Parent.ClickDetector.MouseClick:connect(Clicked)
script.Parent.Parent.Model3.ClickDetector.MouseClick:connect(Clicked)

]]
if Discozor == true then
Disco = Instance.new("Part")
Disco.Locked = true
Disco.CanCollide = true
Disco.Name = "Base"
Disco.Anchored = true
Disco.Shape = "Ball"
Disco.formFactor = "Symmetric"
Disco.BottomSurface = 0
Disco.TopSurface = 0
Disco.Size = Vector3.new(10,10,10)
Disco.Reflectance = 1
Disco.Parent = Model4
Disco.CFrame = CFrame.new(0,50,0)
Mesho = Instance.new("SpecialMesh")
Mesho.MeshType = "FileMesh"
Mesho.MeshId = "baf44e151d905ebd09c51d451c71a251"
Mesho.Scale = Vector3.new(4,4,4)
Mesho.Parent = Disco
end

while true do
wait() 
if Discozor == true then
Disco.CFrame = Disco.CFrame * CFrame.fromEulerAnglesXYZ(0,0.1,0)
else
return
end
end
