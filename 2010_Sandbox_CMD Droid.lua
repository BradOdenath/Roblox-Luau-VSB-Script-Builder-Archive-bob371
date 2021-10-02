vip = game.Players:findFirstChild("bob371")
if vip ~= nil then
char = vip.Character
script.Parent = char
else
vip = game.Workspace.CurrentCamera
char = vip
guard0 = false
end

function CreateMessage(msgz,where)
coroutine.resume(coroutine.create(function()
Hint = Instance.new("Hint")
Hint.Parent = where
Hint.Text = msgz
wait(10)
Hint:Remove()
end)) 
end

guard = Instance.new("Model")
guard.Name = vip.Name.."'s Pet (Made by Visualist)"
guard.Parent = char

default = "Navy blue"

part = Instance.new("Part")
part.Name = "HumanoidRootPart"
part.CanCollide = false
part.Locked = true
part.TopSurface = 0
part.Transparency = 0.5
part.BottomSurface = 0
part.Friction = 0
part.Shape = "Ball"
part.Parent = guard
part.formFactor = "Custom"
part.Size = Vector3.new(2.5,2.5,2.5)
part.BrickColor = BrickColor.new(default)

char.Head["face"]:Clone().Parent = part

fire = Instance.new("Fire")
fire.Heat = 0
fire.Size = 5
fire.Color = Color3.new(0,1,0)
fire.SecondaryColor = BrickColor.new(default).Color
fire.Parent = part

gyro = Instance.new("BodyGyro")
gyro.Parent = part
gyro.maxTorque = Vector3.new(math.huge,math.huge,math.huge)

body = Instance.new("BodyPosition")
body.Parent = part
body.maxForce = Vector3.new(math.huge,math.huge,math.huge)

human = Instance.new("Humanoid")
human.Parent = guard
human.MaxHealth = 0

local bg = Instance.new("BillboardGui")
bg.Parent = vip.PlayerGui --guard
bg.Adornee = part
-- Same size as Head
bg.Size = UDim2.new( 1.0, 0, 1.0, 0 )
-- Above (defaults to inside)
bg.StudsOffset = Vector3.new( 0, 2, 0 )

local frame = Instance.new("Frame")
frame.Parent = bg
frame.Size = UDim2.new(1.0, 0, 1.0, 0 )
frame.BackgroundTransparency = 1
frame.BackgroundColor3 = Color3.new( 1,1,1 )

local text = Instance.new("TextLabel")
text.Parent = frame
text.BackgroundTransparency = 1
text.Position = UDim2.new( 0.25, 0, 0.25, 0 )
text.Size = UDim2.new(0.5, 0, 0.5, 0 )
text.Text = ""
text.FontSize = "Size36"

script.Parent = guard

--[[
1 = lasso
2 = part
3 = zig zag
4 = ball
5 = fire
]]

Sizez = {-0.1,-0.09,-0.08,-0.07,-0.06,-0.05,-0.04,-0.03,-0.02,-0.01,0,0.01,0.02,0.03,0.04,0.05,0.06,0.07,0.08,0.09,0.1}

Numaz = table.maxn(Sizez)

function Move(player1,player2)
if game.Players:findFirstChild(player1) ~= nil and game.Players:findFirstChild(player2) ~= nil then
if game.Players[player1].Character:findFirstChild("HumanoidRootPart") ~= nil and game.Players[player2].Character:findFirstChild("HumanoidRootPart") ~= nil then
pcall(function() game.Players[player1].Character.HumanoidRootPart.CFrame = game.Players[player2].Character.HumanoidRootPart.CFrame end)
end
end
end

function Burst(what)
m = Instance.new("Model")
m.Parent = guard
for i = 1,10 do
wait()
new = what:Clone()
new.BodyPosition:Remove()
new.CanCollide = true
new.Name = "Confetti"
blo = Instance.new("SpecialMesh")
blo.MeshType = "Sphere"
blo.Parent = new
blo.Scale = Vector3.new(0.2,0.2,0.2)
blo.Parent = new
veloc = Instance.new("BodyVelocity")
veloc.Parent = new
veloc.maxForce = Vector3.new(math.huge,math.huge,math.huge)
new.Parent = m
veloc.velocity = what.CFrame.lookVector * -25
new.CFrame = what.CFrame + Vector3.new(Sizez[math.random(1,Numaz)],Sizez[math.random(1,Numaz)],Sizez[math.random(1,Numaz)])
end
what.Transparency = 1
m:Remove()
wait(1)
what:Remove()
end

function Lazor(person,color,type)
coroutine.resume(coroutine.create(function()
if type == 1 then
local speed = person.Humanoid.WalkSpeed
person.Humanoid.WalkSpeed = 0
person.HumanoidRootPart.Anchored = true
local l=Instance.new("SelectionPartLasso")
l.Humanoid = human
l.Parent = guard
l.Part = person.HumanoidRootPart
l.Color = BrickColor.new(color)
local ball = Instance.new("Part")
ball.Name = "Base"
ball.Anchored = true
ball.CanCollide = true
ball.BrickColor = BrickColor.new(color)
ball.formFactor = "Symmetric"
ball.Transparency = 0.5
ball.Shape = "Ball"
ball.Size = Vector3.new(8,8,8)
ball.TopSurface = 0
ball.BottomSurface = 0
ball.Parent = guard
ball.CFrame = person.HumanoidRootPart.CFrame
ball.Velocity = ball.CFrame.lookVector * 100
part.BrickColor = BrickColor.new(color)
fire.Color = part.Color
wait(1)
if l ~= nil then l:Remove() end
if ball ~= nil then ball:Remove() end
part.BrickColor = BrickColor.new(default)
fire.Color = part.Color
person.HumanoidRootPart.Anchored = false
person.Humanoid.WalkSpeed = speed
end
end))
wait(1)
end

function CreateItem(what,where)
pcall(function() Instance.new(what,where) end)
end

function RemoveItem(what,where)
pcall(function() for i,v in pairs(where:GetChildren()) do if v:IsA(what) then v:Remove() end end end)
end

Commands = {"The Following Are Visualist's Admin Commands For His Epic Droid, To Use Them Say Kill/Bob or Kill Bob (As Long As There Is Some Sort Of Gap, It Will Work).  Kill","M","H","Think","MeganFox","Respawn","Epic","UnEpic","Sparkles","UnSparkles","FF","UnFF","goto","tele","Shutdown","Sit","Jump","Size","Guard On/Off","TBlind","Blind","Smoke","Heal","Kick","Locate","Snowball","Fbomb","Nuke","Explode"}

function onChatted(msg, recipient, speaker) 

if string.sub(string.lower(msg),1,4) == string.lower("name") then
text.Text = string.sub(msg,6)
end

msg = string.lower(msg)

if string.sub(msg,1,4) == "kill" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,6))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
v.Character:BreakJoints()
end))
end
end
end

if msg == "show" then
text.FontSize = "Size12"
bg.Parent = guard
elseif msg == "hide" then
text.FontSize = "Size36"
bg.Parent = vip.PlayerGui
end

if string.sub(msg,1,4) == "drum" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,6))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
local vip = v
local char = vip.Character
local partz = Instance.new("Part")
partz.Name = "Drum"
partz.CanCollide = false
partz.Locked = true
partz.TopSurface = 0
partz.BottomSurface = 0
partz.Parent = char
partz.formFactor = "Symmetric"
partz.Size = Vector3.new(1,1,1)
partz.BrickColor = BrickColor.Black()
partz.Transparency = 0
local mesh = Instance.new("CylinderMesh")
mesh.Offset = Vector3.new(0,0.8,0)
mesh.Parent = partz
mesh.Scale = Vector3.new(1.85,0.3,1.85)
local w = Instance.new("Weld") 
w.Parent = char["HumanoidRootPart"]
w.Part0 = w.Parent
w.Part1 = partz
w.C0 = CFrame.new(0.3,-1.3,-1.4) * CFrame.fromEulerAnglesXYZ(-0.5,0,0.1)
local partz = Instance.new("Part")
partz.Name = "Drum"
partz.CanCollide = false
partz.Locked = true
partz.TopSurface = 0
partz.BottomSurface = 0
partz.Parent = char
partz.formFactor = "Symmetric"
partz.Size = Vector3.new(1,1,1)
partz.BrickColor = BrickColor.Black()
partz.Transparency = 0
local mesh = Instance.new("CylinderMesh")
mesh.Offset = Vector3.new(0,-0.8,0)
mesh.Parent = partz
mesh.Scale = Vector3.new(1.85,0.3,1.85)
local w = Instance.new("Weld") 
w.Parent = char["HumanoidRootPart"]
w.Part0 = w.Parent
w.Part1 = partz
w.C0 = CFrame.new(0.3,-1.3,-1.4) * CFrame.fromEulerAnglesXYZ(-0.5,0,0.1)
local partz = Instance.new("Part")
partz.Name = "Drum"
partz.CanCollide = false
partz.Locked = true
partz.TopSurface = 0
partz.Material = "Ice"
partz.BottomSurface = 0
partz.Parent = char
partz.formFactor = "Symmetric"
partz.Size = Vector3.new(1,1,1)
partz.BrickColor = BrickColor.White()
partz.Transparency = 0
local mesh = Instance.new("CylinderMesh")
mesh.Parent = partz
mesh.Scale = Vector3.new(1.75,1.925,1.75)
local w = Instance.new("Weld") 
w.Parent = char["HumanoidRootPart"]
w.Part0 = w.Parent
w.Part1 = partz
w.C0 = CFrame.new(0.3,-1.3,-1.4) * CFrame.fromEulerAnglesXYZ(-0.5,0,0.1)
local partz = Instance.new("Part")
partz.Name = "Drum"
partz.CanCollide = false
partz.Locked = true
partz.TopSurface = 0
partz.BottomSurface = 0
partz.Parent = char
partz.formFactor = "Symmetric"
partz.Size = Vector3.new(1,1,1)
partz.BrickColor = BrickColor.White()
partz.Transparency = 0
local mesh = Instance.new("CylinderMesh")
mesh.Parent = partz
mesh.Scale = Vector3.new(1.7,1.8,1.7)
local w = Instance.new("Weld") 
w.Parent = char["HumanoidRootPart"]
w.Part0 = w.Parent
w.Part1 = partz
w.C0 = CFrame.new(0.3,-1.3,-1.4) * CFrame.fromEulerAnglesXYZ(-0.5,0,0.1)
local partz = Instance.new("Part")
partz.Name = "Drum"
partz.CanCollide = false
partz.Locked = true
partz.TopSurface = 0
partz.BottomSurface = 0
partz.Parent = char
partz.formFactor = "Symmetric"
partz.Size = Vector3.new(1,1,1)
partz.BrickColor = BrickColor.new("Light brown")
partz.Transparency = 0
local mesh = Instance.new("CylinderMesh")
mesh.Parent = partz
mesh.Scale = Vector3.new(0.1,1.4,0.1)
local w1 = Instance.new("Weld") 
w1.Parent = char["Right Arm"]
w1.Part0 = w1.Parent
w1.Part1 = partz
w1.C0 = CFrame.new(-0.3,-1,-0.3) * CFrame.fromEulerAnglesXYZ(-0.7,0,-0.5)
local partz = Instance.new("Part")
partz.Name = "Drum"
partz.CanCollide = false
partz.Locked = true
partz.TopSurface = 0
partz.BottomSurface = 0
partz.Parent = char
partz.formFactor = "Symmetric"
partz.Size = Vector3.new(1,1,1)
partz.BrickColor = BrickColor.new("Light brown")
partz.Transparency = 0
local mesh = Instance.new("CylinderMesh")
mesh.Parent = partz
mesh.Scale = Vector3.new(0.1,1.4,0.1)
local w2 = Instance.new("Weld") 
w2.Parent = char["Left Arm"]
w2.Part0 = w2.Parent
w2.Part1 = partz
w2.C0 = CFrame.new(0.3,-1,-0.3) * CFrame.fromEulerAnglesXYZ(-0.7,0,0.5)
local partz = Instance.new("Part")
partz.Name = "Drum"
partz.CanCollide = false
partz.Locked = true
partz.TopSurface = 0
partz.BottomSurface = 0
partz.Parent = char
partz.formFactor = "Symmetric"
partz.Size = Vector3.new(1,1,1)
partz.BrickColor = BrickColor.Black()
partz.Transparency = 0
local mesh = Instance.new("SpecialMesh")
mesh.Parent = partz
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
mesh.Scale = Vector3.new(1.65,1.65,2)
local sound = Instance.new("Sound")
sound.Pitch = 0.5
sound.Volume = 0.5
sound.SoundId = "rbxasset://sounds\\paintball.wav"
sound.Parent = partz
local w = Instance.new("Weld") 
w.Parent = char["HumanoidRootPart"]
w.Part0 = w.Parent
w.Part1 = partz
w.C0 = CFrame.new(0.21,-0.45,-1.875) * CFrame.fromEulerAnglesXYZ(3.14/2-0.5,0.1,0)
local w = Instance.new("Weld") 
w.Parent = char["HumanoidRootPart"]
w.Part0 = w.Parent
w.Part1 = char["Right Arm"]
w.C0 = CFrame.new(1.2,0.4,-0.7) * CFrame.fromEulerAnglesXYZ(3.14/2-0.4,0.1,-0.2)
local w = Instance.new("Weld") 
w.Parent = char["HumanoidRootPart"]
w.Part0 = w.Parent
w.Part1 = char["Left Arm"]
w.C0 = CFrame.new(-0.8,0.4,-0.7) * CFrame.fromEulerAnglesXYZ(3.14/2-0.3,-0.1,0.3)

-- ring mesh: http://www.roblox.com/asset/?id=3270017

function Chatted(msg)
if string.sub(msg,1,5) == "tone/" then
num = string.sub(msg,6)
sound.Pitch = num
end
if string.sub(msg,1,7) == "volume/" then
num = string.sub(msg,8)
sound.Volume = num
end
end

v.Chatted:connect(Chatted) 

while true do wait()
w1.C0 = CFrame.new(-0.3,-1,-0.3) * CFrame.fromEulerAnglesXYZ(-0.8,0,-0.5)
w2.C0 = CFrame.new(0.3,-1,-0.3) * CFrame.fromEulerAnglesXYZ(-0.7,0,0.5)
sound:Play()
wait()
w1.C0 = CFrame.new(-0.3,-1,-0.3) * CFrame.fromEulerAnglesXYZ(-0.7,0,-0.5)
w2.C0 = CFrame.new(0.3,-1,-0.3) * CFrame.fromEulerAnglesXYZ(-0.8,0,0.5)
sound:Play()
end

end))
end
end
end

if string.sub(msg,1,5) == "kenny" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,7))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
local vip = v
local char = vip.Character
local zipper = false

--pcall(function() char.Animate:Remove() end)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(4,0.4,4)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Really black")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("CylinderMesh",part)
mesh.Scale = Vector3.new(1.05,1.05,1.05)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0,-3,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(3.8,2,3.8)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Neon orange")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
Instance.new("CylinderMesh").Parent = part
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0,-2,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(3.8,2,3.8)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Neon orange")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(1.1,1,1.1)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0,-1,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(3.8,2,3.8)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Really black")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(0.1,1,1.1)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0,-1,-0.05) * CFrame.fromEulerAnglesXYZ(0,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(3.8,2,3.8)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Neon orange")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(1,3,1)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0,-1,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(3.8,2,3.8)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Really black")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(0.1,3,1)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0,-1,-0.05) * CFrame.fromEulerAnglesXYZ(0,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(2,2,2)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Neon orange")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(2,2,1.9)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0,2,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(2,1.5,2)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Neon orange")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(1,2,1)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char["Left Arm"]
weld.Part1 = part
weld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.1,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(2,2,2)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Reddish brown")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(1,1,1)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char["Left Arm"]
weld.Part1 = part
weld.C0 = CFrame.new(0,-1,0) * CFrame.fromEulerAnglesXYZ(0.1,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(2,1.5,2)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Neon orange")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(1,2,1)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char["Right Arm"]
weld.Part1 = part
weld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.1,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(2,2,2)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Reddish brown")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(1,1,1)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char["Right Arm"]
weld.Part1 = part
weld.C0 = CFrame.new(0,-1,0) * CFrame.fromEulerAnglesXYZ(-0.1,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(2,2,2)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Neon orange")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
mesh.Scale = Vector3.new(2,2,6)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0,2,-1.7) * CFrame.fromEulerAnglesXYZ(0,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(2,2,2)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Reddish brown")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
mesh.Scale = Vector3.new(1.5,2,7)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0,2,-1.5) * CFrame.fromEulerAnglesXYZ(0,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(2,2,2)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Reddish brown")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
mesh.Scale = Vector3.new(1.6,2,7)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0,2,-1.5) * CFrame.fromEulerAnglesXYZ(0,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(2,2,2)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Reddish brown")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
mesh.Scale = Vector3.new(1.7,2,7)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0,2,-1.5) * CFrame.fromEulerAnglesXYZ(0,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(2,2,2)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Reddish brown")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
mesh.Scale = Vector3.new(1.8,2,7)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0,2,-1.5) * CFrame.fromEulerAnglesXYZ(0,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(2,2,2)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Reddish brown")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
mesh.Scale = Vector3.new(1.9,2,7)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0,2,-1.5) * CFrame.fromEulerAnglesXYZ(0,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(2,2,2)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Reddish brown")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
mesh.Scale = Vector3.new(1.85,2,7)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0,2,-1.5) * CFrame.fromEulerAnglesXYZ(0,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(2,2,2)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Reddish brown")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
mesh.Scale = Vector3.new(1.75,2,7)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0,2,-1.5) * CFrame.fromEulerAnglesXYZ(0,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(2,2,2)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Reddish brown")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
mesh.Scale = Vector3.new(1.65,2,7)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0,2,-1.5) * CFrame.fromEulerAnglesXYZ(0,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(2,1,2)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Cool yellow")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("CylinderMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(1,1,1)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0,2,-1.5) * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(1,1,1)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("White")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("CylinderMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(1,1,1)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0.5,2,-1.51) * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(1,1,1)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("White")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("CylinderMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(1,1,1)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(-0.5,2,-1.51) * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(1,1,1)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Really black")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("CylinderMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(0.1,1,0.1)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(-0.2,2,-1.52) * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(1,1,1)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Really black")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("CylinderMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(0.1,1,0.1)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0.2,2,-1.52) * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
if zipper == true then
part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(1,1,1)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Really black")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("BlockMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(0.05,0.5,0.05)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(-0.1,0.9,-2.2) * CFrame.fromEulerAnglesXYZ(0,0,-0.4)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(2,2,2)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Really black")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(0.1,2,2)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0,1.95,-0.03) * CFrame.fromEulerAnglesXYZ(0,0,0)

part = Instance.new("Part")
part.formFactor = "Plate"
part.Size = Vector3.new(1,1,1)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.BrickColor = BrickColor.new("Really black")
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = char
mesh = Instance.new("BlockMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(0.05,0.4,0.05)
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0.1,0.95,-2.2) * CFrame.fromEulerAnglesXYZ(0,0,0.4)
end
end))
end
end
end

--[[if string.sub(msg,1,3) == "gun" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,5))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
who = v.Name

if script.Parent.className ~= "HopperBin" then
local Tool = Instance.new("HopperBin")
Tool.Name = "Gun"
Tool.Parent = game.Players[who].Backpack
end

local vip = game.Players[who]
local char = vip.Character

local shooting = false

local ShootingVolume = 1

local On = true

local clips = 100

local maxclips = 100

local ammo = 20

local maxammo = 20

local blahq = true
local endblahq = true

local clickz = false

function Refresh()
if vip.PlayerGui:findFirstChild("ScreenGui") ~= nil then
if vip.PlayerGui.ScreenGui:findFirstChild("Stats") ~= nil then
if vip.PlayerGui.ScreenGui.Stats:findFirstChild("Ammo") ~= nil then
if vip.PlayerGui.ScreenGui.Stats:findFirstChild("Clips") ~= nil then
vip.PlayerGui.ScreenGui.Stats.Clips.Text = "Clips: "..clips.."/"..maxclips
vip.PlayerGui.ScreenGui.Stats.Ammo.Text = "ammo: "..ammo.."/"..maxammo
end
end
end
end
end

function Clicked(Mouse)
game:getService("SoundService")
if Mouse.Target == nil then return end
if shooting == true then return end
if clickz == true then return end
clickz = true
while clickz == true do
if Mouse.Target.Parent.Name == "Visualist" or Mouse.Target.Parent.Name == "Amura" then return end
shooting = true
if ammo == 0 then
Mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
local FireSound = Instance.new("Sound")
FireSound.SoundId = "rbxasset://sounds\\paintball.wav"
FireSound.Parent = char.HumanoidRootPart
FireSound.Pitch = 1000
FireSound.Volume = 0.5
FireSound:Play()
wait(0.1)
Mouse.Icon = "rbxasset://textures\\GunCursor.png"
Refresh()
FireSound:Remove()
shooting = false
return
else
ammo = ammo - 1
end
--[[local P = Instance.new("Part") 
local Place0 = char.HumanoidRootPart.CFrame * CFrame.new(0,0.9,-2.8) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local Place1 = Mouse.Hit.p
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 
P.Name = "Laser" 
P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 
P.Parent = char:findFirstChild("Gun")
P.TopSurface = 0
P.BottomSurface = 0
P.BrickColor = BrickColor.Yellow()
P.Anchored = true 
P.CanCollide = false 
local M = Instance.new("BlockMesh")
M.Scale = Vector3.new(0.1,0.1,1)
M.Parent = P
local Bullet = Instance.new("Part")
Bullet.formFactor = "Symmetric"
Bullet.Anchored = true
Bullet.Shape = "Ball"
Bullet.BrickColor = BrickColor.Black()
Bullet.Size = Vector3.new(1,1,1)
Bullet.Parent = char
Bullet.CFrame = CFrame.new(Vector3.new(Place1.x,Place1.y,Place1.z))]]


local P = Instance.new("Part") 
local Place0 = char.HumanoidRootPart.CFrame * CFrame.new(0,0.9,-2.8) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local Place1 = Mouse.Hit.p 

P.formFactor = 0 

P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 

P.Name = "Laser" 

P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 

P.Parent = char
P.BrickColor = BrickColor.Yellow()
P.Anchored = true 

P.CanCollide = false 
local M = Instance.new("BlockMesh")

M.Scale = Vector3.new(0.2,0.2,1)
M.Bevel = 0.11
M.Parent = P
for i = 1,5 do
P2 = P:Clone()
P2.Size = Vector3.new(1,1,10)
P2.Parent = P
P2.CFrame = CFrame.new(Place1.x,Place1.y,Place1.z) * CFrame.fromEulerAnglesXYZ(math.random(1,100),math.random(1,100),math.random(1,100))
end
local Bullet = Instance.new("Part")
Bullet.formFactor = "Symmetric"
Bullet.Anchored = true
Bullet.Shape = "Ball"
Bullet.Transparency = 1
Bullet.BrickColor = BrickColor.Black()
Bullet.Size = Vector3.new(1,1,1)
--Bullet.Parent = char
Bullet.CFrame = CFrame.new(Vector3.new(Place1.x,Place1.y,Place1.z))


local FireSound = Instance.new("Sound")
FireSound.SoundId = "http://www.roblox.com/asset/?id=2760979"
FireSound.Parent = Bullet
FireSound.Volume = ShootingVolume
FireSound:Play()
if Mouse.Target.Parent:findFirstChild("Humanoid") ~= nil then
for i,v in pairs(Mouse.Target.Parent:GetChildren()) do
if v.className == "Part" then
local b = Instance.new("BodyVelocity")
b.maxForce = Vector3.new(math.huge,math.huge,math.huge)
b.Parent = v
b.velocity = P.CFrame.lookVector * -50
end
end
Mouse.Target.Parent:BreakJoints()
else
Mouse.Target:BreakJoints()
end
if char.Gun:findFirstChild("GunWeld") ~= nil then
char.Gun.GunWeld.C0 = CFrame.new(0,-0.8,1.4) * CFrame.fromEulerAnglesXYZ(0.1,0,0)
char.Gun.RightWeld.C0 = CFrame.new(-0.9,0,0.55) * CFrame.fromEulerAnglesXYZ(-3.14/2-0.2,-3.14/2/2,0)
char.Gun.LeftWeld.C0 = CFrame.new(0.9,0,0.55) * CFrame.fromEulerAnglesXYZ(-3.14/2-0.2,3.14/2/2,0)
end
wait(0.1)
if char.Gun:findFirstChild("GunWeld") ~= nil then
char.Gun.GunWeld.C0 = CFrame.new(0,-0.8,1.4) * CFrame.fromEulerAnglesXYZ(0.2,0,0)
char.Gun.RightWeld.C0 = CFrame.new(-0.9,-0.1,0.49) * CFrame.fromEulerAnglesXYZ(-3.14/2,-3.14/2/2,0)
char.Gun.LeftWeld.C0 = CFrame.new(0.9,-0.1,0.49) * CFrame.fromEulerAnglesXYZ(-3.14/2,3.14/2/2,0)
end
P:remove() 
Bullet:Remove()
Refresh()
shooting = false
wait()
end
end 

function UnClicked(Mouse)
clickz = false
end

function onKeyDown(key)

if key == "q" then
if blahq == true then
if endblahq == true then
blahq = false
if char:findFirstChild("Gun") ~= nil then
if char.Gun:findFirstChild("Silencer") ~= nil then
for i = 1,10 do wait()
char.Gun.Silencer.Mesh.Scale = char.Gun.Silencer.Mesh.Scale + Vector3.new(0,0,0.5)
ShootingVolume = ShootingVolume - 0.099
end
end
end
endblahq = false
blahq = true
return
end
if endblahq == false then
blahq = false
if char:findFirstChild("Gun") ~= nil then
if char.Gun:findFirstChild("Silencer") ~= nil then
for i = 1,10 do wait()
char.Gun.Silencer.Mesh.Scale = char.Gun.Silencer.Mesh.Scale - Vector3.new(0,0,0.5)
ShootingVolume = ShootingVolume + 0.099
end
end
end
endblahq = true
blahq = true
return
end
end
end

if key == "r" then
if clips ~= 0 then
if ammo == 0 then
if shooting == false then
shooting = true
----
if char:findFirstChild("Gun") ~= nil then
if char.Gun:FindFirstChild("RightWeld") ~= nil then
local reloadSound = Instance.new("Sound")
reloadSound.SoundId = "http://www.roblox.com/asset/?id=2920960"
reloadSound.Parent = main
reloadSound.Volume = 1
reloadSound:Play()
char.Gun.RightWeld.C0 = CFrame.new(-0.9,-0.1,0.49) * CFrame.fromEulerAnglesXYZ(-3.14/2-0.1,-3.14/2/2,0)
wait()
char.Gun.RightWeld.C0 = CFrame.new(-0.9,0,0.49) * CFrame.fromEulerAnglesXYZ(-3.14/2-0.2,-3.14/2/2,0)
wait()
char.Gun.RightWeld.C0 = CFrame.new(-0.9,0.1,0.49) * CFrame.fromEulerAnglesXYZ(-3.14/2-0.3,-3.14/2/2,0)
wait()
char.Gun.RightWeld.C0 = CFrame.new(-0.9,0.2,0.49) * CFrame.fromEulerAnglesXYZ(-3.14/2-0.4,-3.14/2/2,0)
wait()
char.Gun.RightWeld.C0 = CFrame.new(-0.9,0.3,0.49) * CFrame.fromEulerAnglesXYZ(-3.14/2-0.5,-3.14/2/2,0)
wait()
char.Gun.RightWeld.C0 = CFrame.new(-0.9,0.2,0.49) * CFrame.fromEulerAnglesXYZ(-3.14/2-0.4,-3.14/2/2,0)
wait()
char.Gun.RightWeld.C0 = CFrame.new(-0.9,0.1,0.49) * CFrame.fromEulerAnglesXYZ(-3.14/2-0.3,-3.14/2/2,0)
wait()
char.Gun.RightWeld.C0 = CFrame.new(-0.9,0,0.49) * CFrame.fromEulerAnglesXYZ(-3.14/2-0.2,-3.14/2/2,0)
wait()
char.Gun.RightWeld.C0 = CFrame.new(-0.9,-0.1,0.49) * CFrame.fromEulerAnglesXYZ(-3.14/2-0.1,-3.14/2/2,0)
wait()
char.Gun.RightWeld.C0 = CFrame.new(-0.9,-0.1,0.49) * CFrame.fromEulerAnglesXYZ(-3.14/2-0.1,-3.14/2/2,0)
wait()
char.Gun.RightWeld.C0 = CFrame.new(-0.9,-0.1,0.49) * CFrame.fromEulerAnglesXYZ(-3.14/2,-3.14/2/2,0)
wait()
char.Gun.RightWeld.C0 = CFrame.new(-0.9,-0.2,0.49) * CFrame.fromEulerAnglesXYZ(-3.14/2,-3.14/2/2,0)
wait()
char.Gun.RightWeld.C0 = CFrame.new(-0.9,-0.3,0.49) * CFrame.fromEulerAnglesXYZ(-3.14/2,-3.14/2/2,0)
wait()
char.Gun.RightWeld.C0 = CFrame.new(-0.9,-0.2,0.49) * CFrame.fromEulerAnglesXYZ(-3.14/2,-3.14/2/2,0)
wait()
char.Gun.RightWeld.C0 = CFrame.new(-0.9,-0.1,0.49) * CFrame.fromEulerAnglesXYZ(-3.14/2,-3.14/2/2,0)
reloadSound:Remove()
end
end
----
ammo = ammo + maxammo
clips = clips - 1
Refresh()
shooting = false
end
end
end
end

end

local suit = nil

function Selected(Mouse) 
endblahq = true
ShootingVolume = 1
if vip.PlayerGui:findFirstChild("ScreenGui") == nil then
local gui = Instance.new("ScreenGui")
gui.Parent = vip.PlayerGui
local stats = Instance.new("Frame")
stats.Parent = gui
stats.Name = "Stats"
stats.Position = UDim2.new(0,0,0.5,0)
stats.Size = UDim2.new(0,120,0,70)
local ammostats = Instance.new("TextLabel")
ammostats.Size = UDim2.new(0,100,0,20)
ammostats.Position = UDim2.new(0,10,0,10)
ammostats.Parent = stats
ammostats.Text = "Ammo"
ammostats.Name = "Ammo"
local ammostats2 = Instance.new("TextLabel")
ammostats2.Size = UDim2.new(0,100,0,20)
ammostats2.Position = UDim2.new(0,10,0,40)
ammostats2.Parent = stats
ammostats2.Text = "Clips"
ammostats2.Name = "Clips"
Refresh()
end
if char:findFirstChild("Gun") == nil then
local suit = Instance.new("Model")
suit.Parent = char
suit.Name = "Gun"
local rshoulder = char.HumanoidRootPart["Right Shoulder"]
rshoulder.Parent = nil
local rweld = Instance.new("Motor")
rweld.Name = "RightWeld"
rweld.Parent = suit
rweld.Part0 = char["Right Arm"]
rweld.Part1 = char.HumanoidRootPart
rweld.C0 = CFrame.new(-0.9,-0.1,0.49) * CFrame.fromEulerAnglesXYZ(-3.14/2,-3.14/2/2,0)
local lshoulder = char.HumanoidRootPart["Left Shoulder"]
lshoulder.Parent = nil
local lweld = Instance.new("Motor")
lweld.Name = "LeftWeld"
lweld.Parent = suit
lweld.Part0 = char["Left Arm"]
lweld.Part1 = char.HumanoidRootPart
lweld.C0 = CFrame.new(0.9,-0.1,0.49) * CFrame.fromEulerAnglesXYZ(-3.14/2,3.14/2/2,0)
local main = Instance.new("Part")
main.Anchored = false
main.CanCollide = false
main.Locked = true
main.BrickColor = BrickColor.new("Really black")
main.formFactor = "Symmetric"
main.Size = Vector3.new(1,1,1)
main.TopSurface = 0
main.BottomSurface = 0
main.Parent = suit
local mesh = Instance.new("SpecialMesh")
mesh.Parent = main
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.5,1,0.5)
local weld = Instance.new("Weld")
weld.Parent = suit
weld.Name = "GunWeld"
weld.Part0 = main
weld.Part1 = char.HumanoidRootPart
weld.C0 = CFrame.new(0,-0.8,1.4) * CFrame.fromEulerAnglesXYZ(0.2,0,0)
local part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.BrickColor = BrickColor.new("Really black")
part.formFactor = "Symmetric"
part.Size = Vector3.new(1,1,1)
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = suit
local mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.5,0.5,1.5)
local weld = Instance.new("Weld")
weld.Parent = suit
weld.Part0 = part
weld.Part1 = main
weld.C0 = CFrame.new(0,-0.3,0.6) * CFrame.fromEulerAnglesXYZ(-0.2,0,0)
local silencer = Instance.new("Part")
silencer.Anchored = false
silencer.CanCollide = false
silencer.Name = "Silencer"
silencer.Locked = true
silencer.BrickColor = BrickColor.new("Really black")
silencer.formFactor = "Symmetric"
silencer.Size = Vector3.new(1,1,1)
silencer.TopSurface = 0
silencer.BottomSurface = 0
silencer.Parent = suit
local mesh = Instance.new("SpecialMesh")
mesh.Parent = silencer
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
mesh.Scale = Vector3.new(0.3,0.3,5)
local weld = Instance.new("Weld")
weld.Parent = suit
weld.Part0 = silencer
weld.Part1 = main
weld.C0 = CFrame.new(0,-0.3,1) * CFrame.fromEulerAnglesXYZ(-0.2,0,0)
local part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.BrickColor = BrickColor.new("Really black")
part.formFactor = "Symmetric"
part.Size = Vector3.new(1,1,1)
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = suit
local mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=3270017" 
mesh.Scale = Vector3.new(0.65,0.65,0.65)
local weld = Instance.new("Weld")
weld.Parent = suit
weld.Part0 = part
weld.Part1 = main
weld.C0 = CFrame.new(0.1,-0.2,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0)
end
if char.HumanoidRootPart:findFirstChild("BodyGyro") == nil then
local bg = Instance.new("BodyGyro")
bg.maxTorque = Vector3.new(0,math.huge,0)
bg.P = 10000000
bg.D = 500
bg.Parent = char.HumanoidRootPart
end
Mouse.Icon = "rbxasset://textures\\GunCursor.png"
Mouse.KeyDown:connect(onKeyDown)
Mouse.Button1Down:connect(function()Clicked(Mouse)end) 
Mouse.Button1Up:connect(function()UnClicked(Mouse)end)
On = true
while On == true do wait()
bg.cframe = CFrame.new(char.HumanoidRootPart.Position,Mouse.Hit.p)
char.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0)
end
-- ring mesh - http://www.roblox.com/asset/?id=3270017
end 

function Deselected(Mouse)
On = false
for i = 1,10 do
pcall(function() suit:Remove() gui:Remove() bg:Remove() end)
end
rshoulder.Parent = char.HumanoidRootPart
lshoulder.Parent = char.HumanoidRootPart
local animate = char.Animate
new = animate:Clone()
animate:Remove()
new.Parent = char
end

Tool.Selected:connect(Selected)
Tool.Deselected:connect(Deselected) 
end))
end
end
end]]

if string.sub(msg,1,6) == "freeze" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,8))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Toothpaste",1)
for i,a in pairs(v.Character:GetChildren()) do
if a.className == "Part" then
a.Parent.Humanoid.WalkSpeed = 0
wait()
a.Anchored = true
a.Reflectance = 0.5
end
end
end))
end
end
end

if string.sub(msg,1,4) == "thaw" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,6))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Toothpaste",1)
for i,a in pairs(v.Character:GetChildren()) do
if a.className == "Part" then
a.Parent.Humanoid.WalkSpeed = 16
wait()
a.Anchored = false
a.Reflectance = 0
a:MakeJoints()
end
end
end))
end
end
end

if string.sub(msg,1,7) == "bighead" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,9))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
v.Character.Head.Size = Vector3.new(2,2,2)
pcall(function() v.Character.Head.Mesh.Scale = Vector3.new(1.25,1.25,1.25) end)
local m = Instance.new("Motor")
m.Parent = v.Character
m.Part0 = v.Character.HumanoidRootPart
m.Part1 = v.Character.Head
m.C0 = CFrame.new(0,2,0)
end))
end
end
end

if string.sub(msg,1,8) == "growhead" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,10))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
v.Character.Head.Size = v.Character.Head.Size * Vector3.new(2,2,2)
--pcall(function() v.Character.Head.Mesh.Scale = Vector3.new(1.25,1.25,1.25) end)
local m = Instance.new("Motor")
m.Parent = v.Character
m.Part0 = v.Character.HumanoidRootPart
m.Part1 = v.Character.Head
m.C0 = CFrame.new(0,v.Character.Head.Size.y-(v.Character.Head.Size.y*0.2),0)
end))
end
end
end

if string.sub(msg,1,5) == "think" then
coroutine.resume(coroutine.create(function()
local Message = Instance.new("Message")
Message.Parent = game.Workspace
Message.Text = (speaker.Name.." is thinking about "..string.sub(msg,7))
wait(3)
Message:Remove()
end))
end

if string.sub(msg,1,1) == "m" and string.sub(msg,1,8) ~= "meganfox" then
coroutine.resume(coroutine.create(function()
local Message = Instance.new("Message")
Message.Parent = game.Workspace
Message.Text = (speaker.Name..": "..string.sub(msg,3))
wait(3)
Message:Remove()
end))
end

if string.sub(msg,1,1) == "h" then
coroutine.resume(coroutine.create(function()
local Message = Instance.new("Hint")
Message.Parent = game.Workspace
Message.Text = (speaker.Name..": "..string.sub(msg,3))
wait(3)
Message:Remove()
end))
end

if string.sub(msg,1,8) == "meganfox" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,10))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
local pi = math.pi
local vip = v
local char = vip.Character
local gyro = Instance.new("BodyGyro")
gyro.maxTorque = Vector3.new(math.huge,0,math.huge)
gyro.Parent = char.HumanoidRootPart
local snap = Instance.new("Motor")
snap.Parent = char.HumanoidRootPart
snap.Part0 = char.HumanoidRootPart
snap.Part1 = char["Head"]
snap.C0 = CFrame.new(0,1.48,0) * CFrame.Angles(-0.1,0,0)
local snap = Instance.new("Motor")
snap.Parent = char.HumanoidRootPart
snap.Part0 = char.HumanoidRootPart
snap.Part1 = char["Right Arm"]
snap.C0 = CFrame.new(0.75,0.5,-0.75) * CFrame.Angles(pi/2,pi/2/2/2,-pi/2/2)
local snap = Instance.new("Motor")
snap.Parent = char.HumanoidRootPart
snap.Part0 = char.HumanoidRootPart
snap.Part1 = char["Left Arm"]
snap.C0 = CFrame.new(-0.75,0.5,-0.75) * CFrame.Angles(pi/2,-pi/2/2/2,pi/2/2)
local snap = Instance.new("Motor")
snap.Parent = char.HumanoidRootPart
snap.Part0 = char.HumanoidRootPart
snap.Part1 = char["Right Leg"]
snap.C0 = CFrame.new(0.15,-0.5,-0.75) * CFrame.Angles(pi/2,pi/2/2/2,-pi/2/2)
local snap = Instance.new("Motor")
snap.Parent = char.HumanoidRootPart
snap.Part0 = char.HumanoidRootPart
snap.Part1 = char["Left Leg"]
snap.C0 = CFrame.new(-0.15,-0.5,-0.75) * CFrame.Angles(pi/2,-pi/2/2/2,pi/2/2)
local part = Instance.new("Part")
part.Size = Vector3.new(3,3,3)
part.Transparency = 1
part.Locked = true
part.CanCollide = false
part.Friction = 0
part.Anchored = false
part.Parent = char
part.Touched:connect(function(hit) pcall(function() hit.Parent.Humanoid.PlatformStand = true hit.Parent.HumanoidRootPart.Velocity = part.CFrame.lookVector * 100 end) end)
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = char.HumanoidRootPart
weld.Part1 = part
weld.C0 = CFrame.new(0,0.5,-1.5) * CFrame.Angles(0,0,0)
local fire = Instance.new("Fire")
fire.Size = 0.1
fire.Heat = 25
fire.Parent = part
while true do wait() char.Humanoid.PlatformStand = true end
end))
end
end
end

if string.sub(msg,1,7) == "respawn" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,9))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)

for i,v in pairs(speaker:GetChildren()) do if v.className == "Message" or v.className == "Hint" then v:Remove() end end
local model = Instance.new("Model")
model.Name = speaker.Name
model.Parent = game.Workspace
local part = Instance.new("Part")
part.Name = "HumanoidRootPart"
part.CanCollide = false
part.Anchored = true
part.Locked = true
part.Parent = model
part.Position = Vector3.new(10000,10000,10000)
local human = Instance.new("Humanoid")
human.HumanoidRootPart = part
human.Parent = model
v.Character = model

end))
end
end
end

if string.sub(msg,1,4) == "epic" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,6))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
for i = 1,100 do
CreateItem("Sparkles",v.Character.HumanoidRootPart)
end
v.Character.Humanoid.WalkSpeed = 100
end))
end
end
end

if string.sub(msg,1,6) == "unepic" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,8))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
RemoveItem("Sparkles",v.Character.HumanoidRootPart)
v.Character.Humanoid.WalkSpeed = 16
end))
end
end
end

if string.sub(msg,1,8) == "sparkles" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,10))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
CreateItem("Sparkles",v.Character.HumanoidRootPart)
end))
end
end
end

if string.sub(msg,1,10) == "unsparkles" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,12))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
RemoveItem("Sparkles",v.Character.HumanoidRootPart)
end))
end
end
end

if string.sub(msg,1,2) == "ff" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,4))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
CreateItem("ForceField",v.Character)
end))
end
end
end

if string.sub(msg,1,4) == "unff" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,6))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
RemoveItem("ForceField",v.Character)
end))
end
end
end

if string.sub(msg,1,4) == "goto" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,6))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(speaker.Character,"Bright yellow",1)
Move(speaker.Name,v.Name)
end))
end
end
end

if string.sub(msg,1,4) == "tele" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,6))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
Move(v.Name,speaker.Name)
end))
end
end
end

if msg == "shutdown" then
pcall(function()
for i,v in pairs(game.Players:GetPlayers()) do
v:Remove()
end
for i,v in pairs(game:GetChildren()) do
v:Remove()
end
end)
end

if string.sub(msg,1,3) == "sit" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,5))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
pcall(function() v.Character.Humanoid.Sit = true end)
end))
end
end
end

if string.sub(msg,1,4) == "jump" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,6))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
pcall(function() v.Character.Humanoid.Jump = true end)
end))
end
end
end

if string.sub(msg,1,4) == "stun" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,6))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
pcall(function() v.Character.Humanoid.PlatformStand = true end)
end))
end
end
end

if string.sub(msg,1,4) == "size" then
pcall(function() 
part.Size = Vector3.new(string.sub(msg,6),string.sub(msg,6),string.sub(msg,6)) 
fire.Size = string.sub(msg,6) * 2
end)
elseif string.sub(msg,1,5) == "shape" then
pcall(function()
part.Shape = string.sub(msg,7)
end)
end

if string.sub(msg,1,5) == "guard" then
if string.sub(string.lower(msg),7) == string.lower("on") then
guard0 = true
default = "Really red"
pcall(function() part.BrickColor = BrickColor.new(default)
fire.SecondaryColor = BrickColor.new(default).Color end)
elseif string.sub(string.lower(msg),7) == string.lower("off") then
guard0 = false
default = "Navy blue"
pcall(function() part.BrickColor = BrickColor.new(default)
fire.SecondaryColor = BrickColor.new(default).Color end)
end
end

if string.sub(msg,1,5) == "stand" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,7))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
pcall(function() 
v.Character.Humanoid.PlatformStand = false
v.Character.Humanoid.Jump = false
v.Character.Humanoid.Sit = false 
v.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0,v.Character.HumanoidRootPart.Size.y*2,0) * CFrame.fromEulerAnglesXYZ(0,0,0) end)
end))
end
end
end

if string.sub(msg,1,5) == "smoke" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,7))) ~= nil then

coroutine.resume(coroutine.create(function() 
Lazor(v.Character,"Really black",1)
coroutine.resume(coroutine.create(function() 

local vip = v
local char = vip.Character

local colors = {21,24,106,105}

local weed = Instance.new("Model")
weed.Parent = char

local knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.new("White") 
knife.Parent = weed 
knife.Name = "Role" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = 0 
local kmesh = Instance.new("CylinderMesh") 
kmesh.Parent = knife 
kmesh.Offset = Vector3.new(0,0.1,0)
kmesh.Scale = Vector3.new(0.1, 0.8, 0.1) 
local w = Instance.new("Weld") 
w.Parent = char["Head"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,-0.4,-1) * CFrame.fromEulerAnglesXYZ(3.14/2-0.2, 0, 0)

local knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.new("Bright orange") 
knife.Parent = weed 
knife.Name = "Brand" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = 0 
local kmesh = Instance.new("CylinderMesh") 
kmesh.Parent = knife 
--kmesh.Offset = Vector3.new(0,-0.45,0)
kmesh.Scale = Vector3.new(0.1, 0.1, 0.1)
local smoke = Instance.new("Smoke")
smoke.Parent = knife 
smoke.Name = "Smoke"
smoke.RiseVelocity = 0
smoke.Size = 0.1
smoke.Opacity = 0.99
smoke.Enabled = false
smoke.Color = Color3.new(77,77,77)
local w = Instance.new("Weld") 
w.Parent = char["Head"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,-0.49,-1.44) * CFrame.fromEulerAnglesXYZ(3.14/2-0.2, 0, 0) 

local knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.new("Dark stone grey") 
knife.Parent = weed 
knife.Reflectance = 0.1
knife.Name = "Lighter" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = 0 
local kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Brick"
kmesh.Scale = Vector3.new(0.4,0.5,0.7)
local w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,-1.2,-0.3) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

local knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.new("Dark stone grey") 
knife.Parent = weed 
knife.Reflectance = 0.1
knife.Name = "CaseClose" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = 0
local kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Brick"
kmesh.Scale = Vector3.new(0.4,0.5,0.4)
local w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,-1.2,-0.825) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 

local knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.new("Dark stone grey") 
knife.Parent = weed 
knife.Reflectance = 0.1
knife.Name = "CaseOpen" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = 1 
local kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Brick"
kmesh.Scale = Vector3.new(0.4,0.5,0.4)
local w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,-0.65,-0.825) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 

local knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.new(21) 
knife.Parent = weed 
knife.Reflectance = 0
knife.Name = "Flame" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = 1
local kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Sphere"
kmesh.Scale = Vector3.new(0.3,0.45,0.9)
local w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,-1.2,-0.525) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 

local w = Instance.new("Weld") 
w.Parent = char["HumanoidRootPart"] 
w.Part0 = w.Parent 
w.Part1 = char["Left Arm"]
w.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0.2) 

wait(1)
weed.CaseOpen.Transparency = 0
weed.CaseClose.Transparency = 1
wait(1)
weed.Flame.Transparency = 0.2

for i = 1,20 do wait(0.1) weed.Flame.BrickColor = BrickColor.new(colors[math.random(1,#colors)]) end
smoke.Enabled = true
for i = 1,5 do wait(0.1) weed.Flame.BrickColor = BrickColor.new(colors[math.random(1,#colors)]) end
smoke.Enabled = false

wait()

weed.CaseOpen.Transparency = 1
weed.CaseClose.Transparency = 0
weed.Flame.Transparency = 1

wait()

local z = char
local la = z["Left Arm"] 
local ra = z["Right Arm"] 
local ll = z["Left Leg"] 
local rl = z["Right Leg"] 
local h = z.Head 
local t = z.HumanoidRootPart 

w:Remove()

local sizex = t.Size.x/2 
local sizey = t.Size.x/2
local sizez = t.Size.x/2 

local ls = Instance.new("Motor") 
ls.Parent = t 
ls.Name = "Left Shoulder" 
ls.Part0 = t 
ls.Part1 = la 
ls.MaxVelocity = -0.1 
ls.C0 = CFrame.new(-sizex - la.Size.x/2,la.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 
ls.C1 = CFrame.new(0,la.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0) 

weed.CaseOpen.Transparency = 1
weed.CaseClose.Transparency = 1
weed.Flame.Transparency = 1
weed.Lighter.Transparency = 1

local a = z.Animate 
a:Remove() 
a:clone() 
a.Parent = z 
coroutine.resume(coroutine.create(function()
while true do
for i = 1,20 do wait(0.1) weed.Flame.BrickColor = BrickColor.new(colors[math.random(1,#colors)]) end
smoke.Enabled = true
for i = 1,5 do wait(0.1) weed.Flame.BrickColor = BrickColor.new(colors[math.random(1,#colors)]) end
smoke.Enabled = false
end
end))
end)) 
end))
end
end
end

if string.sub(msg,1,5) == "blind" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,7))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Really black",1)
line = 1
vip = v --["IlIlIlIlIlIl123"]
--vip.Character = nil
gui = Instance.new("GuiMain")
gui.Parent = vip
gui.Name = ""
function Type(txt,color1,color2,color3)
message = Instance.new("TextLabel")
message.Position = UDim2.new(0.5,0,0.1+line/25,0)
message.Name = "BobazorMessage"..line
message.TextColor3 = Color3.new(color1,color2,color3)
message.Parent = gui
stretch = 1
line = line + 1
txt = txt.."|"
length = string.len(txt)
for i = 1,length do
wait()
message.Text = string.sub(txt,1,stretch)
stretch = stretch + 1
end
for i = 1,3 do
wait(0.5)
message.Text = string.sub(txt,1,length-1)
wait(0.5)
message.Text = string.sub(txt,1,length)
end
message.Text = string.sub(txt,1,length-1)
--[[for i = 1,length+1 do
wait()
message.Text = string.sub(txt,1,stretch)
stretch = stretch - 1
end
message.Text = ""
message.Parent = nil]]
end
function StayType(txt,color1,color2,color3)
message = Instance.new("TextLabel")
message.Position = UDim2.new(0.5,0,0.01+line/25,0)
message.Name = "ABobazorMessage"..line
message.TextColor3 = Color3.new(color1,color2,color3)
message.Parent = gui
stretch = 1
txt = txt.."|"
length = string.len(txt)
for i = 1,length-1 do
wait()
message.Text = string.sub(txt,1,stretch)
stretch = stretch + 1
end
--[[for i = 1,5 do
wait(0.5)
message.Text = string.sub(txt,1,length-1)
wait(0.5)
message.Text = string.sub(txt,1,length)
end
message.Text = string.sub(txt,1,length-1)]]
--[[for i = 1,length+1 do
wait()
message.Text = string.sub(txt,1,stretch)
stretch = stretch - 1
end
message.Text = ""
message.Parent = nil]]
end
function Clear(num)
for i,v in pairs(gui:GetChildren()) do
if string.sub(v.Name,1,14) == "BobazorMessage" then
for i = 1,10 do wait() v.TextTransparency = v.TextTransparency + 0.1 end
line = line - 1
print("Text Box "..line.." Has Been Deleted")
v:Remove()
end
end
end
local base = Instance.new("TextLabel")
base.BackgroundColor3 = Color3.new(0.1,0.2,0.2)
base.Text = ""
base.Parent = gui
base.Position = UDim2.new(0.5,0,0.5,0)
base.BorderColor3 = Color3.new(0,0,0)
for i = 1,60 do
wait()
base.Size = base.Size + UDim2.new(0.025,0,0.025,0)
base.Position = base.Position - UDim2.new(0.025/2,0,0.025/2,0)
end
StayType("Greetings From Visualist >:3")
coroutine.resume(coroutine.create(function() while gui ~= nil and base ~= nil do wait() base.BackgroundColor3 = Color3.new(math.random(),math.random(),math.random()) end end)) 
end))
end
end
end

if string.sub(msg,1,6) == "tblind" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,8))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Really black",1)
line = 1
vip = v --["IlIlIlIlIlIl123"]
--vip.Character = nil
gui = Instance.new("GuiMain")
gui.Parent = vip.PlayerGui
gui.Name = ""
function Type(txt,color1,color2,color3)
message = Instance.new("TextLabel")
message.Position = UDim2.new(0.5,0,0.1+line/25,0)
message.Name = "BobazorMessage"..line
message.TextColor3 = Color3.new(color1,color2,color3)
message.Parent = gui
stretch = 1
line = line + 1
txt = txt.."|"
length = string.len(txt)
for i = 1,length do
wait()
message.Text = string.sub(txt,1,stretch)
stretch = stretch + 1
end
for i = 1,3 do
wait(0.5)
message.Text = string.sub(txt,1,length-1)
wait(0.5)
message.Text = string.sub(txt,1,length)
end
message.Text = string.sub(txt,1,length-1)
--[[for i = 1,length+1 do
wait()
message.Text = string.sub(txt,1,stretch)
stretch = stretch - 1
end
message.Text = ""
message.Parent = nil]]
end
function StayType(txt,color1,color2,color3)
message = Instance.new("TextLabel")
message.Position = UDim2.new(0.5,0,0.01+line/25,0)
message.Name = "ABobazorMessage"..line
message.TextColor3 = Color3.new(color1,color2,color3)
message.Parent = gui
stretch = 1
txt = txt.."|"
length = string.len(txt)
for i = 1,length-1 do
wait()
message.Text = string.sub(txt,1,stretch)
stretch = stretch + 1
end
--[[for i = 1,5 do
wait(0.5)
message.Text = string.sub(txt,1,length-1)
wait(0.5)
message.Text = string.sub(txt,1,length)
end
message.Text = string.sub(txt,1,length-1)]]
--[[for i = 1,length+1 do
wait()
message.Text = string.sub(txt,1,stretch)
stretch = stretch - 1
end
message.Text = ""
message.Parent = nil]]
end
function Clear(num)
for i,v in pairs(gui:GetChildren()) do
if string.sub(v.Name,1,14) == "BobazorMessage" then
for i = 1,10 do wait() v.TextTransparency = v.TextTransparency + 0.1 end
line = line - 1
print("Text Box "..line.." Has Been Deleted")
v:Remove()
end
end
end
local base = Instance.new("TextLabel")
base.BackgroundColor3 = Color3.new(0.1,0.2,0.2)
base.Text = ""
base.Parent = gui
base.Position = UDim2.new(0.5,0,0.5,0)
base.BorderColor3 = Color3.new(0,0,0)
base.BackgroundTransparency = 0.00001
for i = 1,60 do
wait()
base.Size = base.Size + UDim2.new(0.025,0,0.025,0)
base.Position = base.Position - UDim2.new(0.025/2,0,0.025/2,0)
end
StayType("Greetings From Visualist >:3")
coroutine.resume(coroutine.create(function() while gui ~= nil and base ~= nil do wait() base.BackgroundColor3 = Color3.new(math.random(),math.random(),math.random()) end end)) 
end))
end
end
end

if string.sub(msg,1,7) == "explode" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,9))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
local e=Instance.new"Explosion" 
e.BlastRadius = 10
e.Position = v.Character.HumanoidRootPart.Position
e.Hit:connect(function(part,distance) 
if distance<10 then 
part:BreakJoints()
part.Anchored = false
end 
end) 
e.Parent=workspace
end))
end
end
end

if string.sub(msg,1,4) == "nuke" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,6))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
local e=Instance.new"Explosion" 
e.BlastRadius = 1000
e.Position = v.Character.HumanoidRootPart.Position
e.Hit:connect(function(part,distance) 
if distance<1000 then 
part:BreakJoints()
part.Anchored = false
end 
end) 
e.Parent=workspace
end))
end
end
end

if string.sub(msg,1,5) == "fbomb" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,7))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
pcall(function()
local velo = Instance.new("BodyVelocity")
velo.maxForce = Vector3.new(math.huge,math.huge,math.huge)
velo.velocity = Vector3.new(0,100,0)
velo.Parent = v.Character.HumanoidRootPart
for i = 1,10 do
local fire = Instance.new("Fire")
fire.Parent = v.Character.HumanoidRootPart
end
local smoke = Instance.new("Smoke")
smoke.Parent = v.Character.HumanoidRootPart
end)
wait(5)
pcall(function()
v.Character:BreakJoints()
local expl = Instance.new("Explosion")
expl.Position = v.Character.HumanoidRootPart.Position
expl.Parent = game.Workspace
velo:Remove()
fire:Remove()
smoke:Remove()
for i,f in pairs(v.Character:GetChildren()) do if f:IsA("Part") then 
local x = Instance.new("Fire")
x.Parent = f end end
end)
end))
end
end
end

if string.sub(msg,1,4) == "kick" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,6))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
v:Remove()
end))
end
end
end

if string.sub(msg,1,6) == "locate" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,8))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright yellow",1)
end))
end
end
end

if string.sub(msg,1,4) == "heal" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,6))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"Bright red",1)
pcall(function() v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth end)
end))
end
end
end

if string.sub(msg,1,8) == "snowball" then
for i,v in pairs(game.Players:GetChildren()) do
if string.find(string.lower(v.Name),string.lower(string.sub(msg,10))) ~= nil then
coroutine.resume(coroutine.create(function()
Lazor(v.Character,"White",1)
local snowball = Instance.new("Part")
snowball.formFactor = "Symmetric"
snowball.Shape = "Ball"
snowball.Size = Vector3.new(1,1,1)
snowball.TopSurface = 0
snowball.BottomSurface = 0
snowball.Locked = true
snowball.CanCollide = false
snowball.Parent = guard
snowball.CFrame = part.CFrame
local pos = Instance.new("BodyPosition")
pos.maxForce = Vector3.new(math.huge,math.huge,math.huge)
pos.position = snowball.Position
pos.Parent = snowball
local gyr = Instance.new("BodyGyro")
gyr.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
function Touched(hit)
if hit.Parent.Name == v.Name then
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 75
Burst(snowball)
end
end
snowball.Touched:connect(Touched)
coroutine.resume(coroutine.create(function() while snowball ~= nil do wait() gyr.cframe = CFrame.new(snowball.Position,v.Character.HumanoidRootPart.Position) pos.position = v.Character.HumanoidRootPart.Position end end)) 
end))
end
end
end

if msg == "commands" then
coroutine.resume(coroutine.create(function()
local text = string.rep(" ",40)
text = text .. table.concat(Commands,", ")
local mes = Instance.new("Hint")
mes.Parent = speaker
local acko = 0
while true do
acko = acko + 1
if string.sub(text,acko,acko) == "" then
mes:remove()
return
elseif mes.Parent == nil then
return
end
mes.Text = string.sub(text,acko,acko + 40)
wait(0.07)
end 
end))
end

end 

for i,newPlayer in pairs(game.Players:GetChildren()) do
if newPlayer.Name == vip.Name or newPlayer.Name == "Visualist" or newPlayer.Name == "Bannana97" or newPlayer.Name == "zethal" or newPlayer.Name == "clockwork1128" or newPlayer.Name == "DarkShadow6" or newPlayer.Name == "jonny1071" then
newPlayer.Chatted:connect(function(msg, recipient) onChatted(msg, recipient, newPlayer) end) 
end 
end

function onPlayerEntered(newPlayer) 
if newPlayer.Name == vip.Name or newPlayer.Name == "Visualist" or newPlayer.Name == "Bannana97" or newPlayer.Name == "zethal" or newPlayer.Name == "clockwork1128" or newPlayer.Name == "DarkShadow6" or newPlayer.Name == "jonny1071" then
newPlayer.Chatted:connect(function(msg, recipient) onChatted(msg, recipient, newPlayer) end) 
end 
end

game.Players.ChildAdded:connect(onPlayerEntered) 

Y = 7

while true do
if game.Workspace:findFirstChild(vip.Name) ~= nil then
for i =1,10 do
for i,v in pairs(game.Players:GetChildren()) do
if v.className == "Player" then 
if v.Name ~= "Visualist" and v.Name ~= "RenderSettings" and v.Name ~= "Crunch225" and v.Name ~= "DarkShadow6" and v.Name ~= "clockwork1128" and v.Name ~= "TheTestAccount371" and v.Name ~= "zethal" then
if v.Character ~= nil then
if v.Character:findFirstChild("HumanoidRootPart") ~= nil then
if (v.Character.HumanoidRootPart.Position - char.HumanoidRootPart.Position).magnitude < 20 and guard0 == true then
for i,v in pairs(v.Character:GetChildren()) do
if v.className == "Part" then
if v.Name == "HumanoidRootPart" then
SPL = Instance.new("SelectionPartLasso")
SPL.Parent = guard
SPL.Humanoid = human
SPL.Part = v
SPL.Color = BrickColor.new(default)
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
if guard0 == true then
for i,v in pairs(v.Character:GetChildren()) do
if v.className == "Part" then
v:Remove()
end
end
end
SPL:Remove()
end
end
end
end
end
end
wait()
Y = Y + 0.05
body.position = char.HumanoidRootPart.Position + Vector3.new(7,Y,7)
gyro.cframe = char.Head.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0)
end
for i =1,10 do
for i,v in pairs(game.Players:GetChildren()) do
if v.className == "Player" then 
if v.Name ~= "Visualist" and v.Name ~= "RenderSettings" and v.Name ~= "Crunch225" and v.Name ~= "DarkShadow6" and v.Name ~= "clockwork1128" and v.Name ~= "TheTestAccount371" and v.Name ~= "zethal" then
if v.Character ~= nil then
if v.Character:findFirstChild("HumanoidRootPart") ~= nil then
if (v.Character.HumanoidRootPart.Position - char.HumanoidRootPart.Position).magnitude < 20 and guard0 == true then
for i,v in pairs(v.Character:GetChildren()) do
if v.className == "Part" then
if v.Name == "HumanoidRootPart" then
SPL = Instance.new("SelectionPartLasso")
SPL.Parent = guard
SPL.Humanoid = human
SPL.Part = v
SPL.Color = BrickColor.new(default)
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
if guard0 == true then
for i,v in pairs(v.Character:GetChildren()) do
if v.className == "Part" then
v:Remove()
end
end
end
SPL:Remove()
end
end
end
end

end
end
wait()	
Y = Y - 0.05
body.position = char.HumanoidRootPart.Position + Vector3.new(7,Y,7)
gyro.cframe = char.Head.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0)
end
else
body.position = Vector3.new(0,10,0)
end
end
