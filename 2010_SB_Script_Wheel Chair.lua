who = "bob371"

if owner then who = owner.Name end

model = Instance.new("Model")
model.Parent = workspace

script.Parent = model

local seat = Instance.new("VehicleSeat")
seat.Size = Vector3.new(2,1,2)
seat.Anchored = false
seat.Locked = true
seat.HeadsUpDisplay = false
seat.CanCollide = true
seat.TopSurface = 0
seat.BottomSurface = 0
seat.Parent = model
seat.BrickColor = BrickColor.Black()
seat.CFrame = game.Workspace[who].Torso.CFrame
local gyro = Instance.new("BodyGyro")
gyro.Parent = seat
gyro.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
--gyro.maxTorque = Vector3.new(0,math.huge,0)
velo = Instance.new("BodyVelocity")
velo.Parent = seat
velo.maxForce = Vector3.new(math.huge,0,math.huge)
velo.velocity = Vector3.new(0,0,0)
local mesh = Instance.new("BlockMesh")
mesh.Scale = Vector3.new(1.1,0.3,1.1)
mesh.Offset = Vector3.new(0,0.4,-0.45)
mesh.Parent = seat

local part = Instance.new("Part")
part.formFactor = "Symmetric"
part.Size = Vector3.new(2,1,2)
part.Anchored = false
part.Locked = true
part.BrickColor = BrickColor.new("Medium stone grey")
part.Reflectance = 0
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(0,-0.1,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
local mesh = Instance.new("BlockMesh")
mesh.Scale = Vector3.new(1.2,0.3,1.2)
mesh.Offset = Vector3.new(0,0.4,-0.45)
mesh.Parent = part

local part = Instance.new("Part")
part.formFactor = "Symmetric"
part.Size = Vector3.new(2,1,2)
part.Anchored = false
part.Locked = true
part.BrickColor = BrickColor.new("Medium stone grey")
part.Reflectance = 0
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(0,1.8,0.6) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)
local mesh = Instance.new("BlockMesh")
mesh.Scale = Vector3.new(1.2,0.3,0.9)
mesh.Parent = part

local part = Instance.new("Part")
part.formFactor = "Symmetric"
part.Size = Vector3.new(2,1,2)
part.Anchored = false
part.Locked = true
part.BrickColor = BrickColor.Black()
part.Reflectance = 0
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(0,1.8,0.5) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)
local mesh = Instance.new("BlockMesh")
mesh.Scale = Vector3.new(1.1,0.3,0.8)
mesh.Parent = part

local part = Instance.new("Part")
part.formFactor = "Symmetric"
part.Size = Vector3.new(1,2,1)
part.Anchored = false
part.Locked = true
part.BrickColor = BrickColor.new("Medium stone grey")
part.Reflectance = 0
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(1.1,1.5,0.6) * CFrame.fromEulerAnglesXYZ(0,0,0)
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(0.3,1.3,0.3)
mesh.Parent = part

local part = Instance.new("Part")
part.formFactor = "Symmetric"
part.Size = Vector3.new(1,2,1)
part.Anchored = false
part.Locked = true
part.BrickColor = BrickColor.new("Medium stone grey")
part.Reflectance = 0
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(-1.1,1.5,0.6) * CFrame.fromEulerAnglesXYZ(0,0,0)
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(0.3,1.3,0.3)
mesh.Parent = part

local part = Instance.new("Part")
part.formFactor = "Symmetric"
part.Size = Vector3.new(1,2,1)
part.Anchored = false
part.Locked = true
part.BrickColor = BrickColor.new("Medium stone grey")
part.Reflectance = 0
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(-1.1,1.7,-0.4) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(0.3,1.1,0.3)
mesh.Parent = part

local part = Instance.new("Part")
part.formFactor = "Symmetric"
part.Size = Vector3.new(1,2,1)
part.Anchored = false
part.Locked = true
part.BrickColor = BrickColor.new("Medium stone grey")
part.Reflectance = 0
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(1.1,1.7,-0.4) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(0.3,1.1,0.3)
mesh.Parent = part

local part = Instance.new("Part")
part.formFactor = "Symmetric"
part.Size = Vector3.new(1,1,1)
part.Anchored = false
part.Locked = true
part.BrickColor = BrickColor.new("Medium stone grey")
part.Reflectance = 0
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(1.1,0.95,-0.8) * CFrame.fromEulerAnglesXYZ(0,0,0)
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(0.3,1.55,0.3)
mesh.Parent = part

local part = Instance.new("Part")
part.formFactor = "Symmetric"
part.Size = Vector3.new(1,1,1)
part.Anchored = false
part.Locked = true
part.BrickColor = BrickColor.new("Medium stone grey")
part.Reflectance = 0
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(-1.1,0.95,-0.8) * CFrame.fromEulerAnglesXYZ(0,0,0)
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(0.3,1.55,0.3)
mesh.Parent = part

local part = Instance.new("Part")
part.formFactor = "Symmetric"
part.Size = Vector3.new(1,1,1)
part.Anchored = false
part.Locked = true
part.BrickColor = BrickColor.new("Medium stone grey")
part.Reflectance = 0
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(-1.1,2.6,1) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(0.3,0.8,0.3)
mesh.Parent = part

local part = Instance.new("Part")
part.formFactor = "Symmetric"
part.Size = Vector3.new(1,1,1)
part.Anchored = false
part.Locked = true
part.BrickColor = BrickColor.new("Medium stone grey")
part.Reflectance = 0
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(1.1,2.6,1) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(0.3,0.8,0.3)
mesh.Parent = part

local part = Instance.new("Part")
part.formFactor = "Symmetric"
part.Size = Vector3.new(1,3,1)
part.Anchored = false
part.Locked = true
part.BrickColor = BrickColor.new("Earth green")
part.Reflectance = 0
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(0.6,1,1.1) * CFrame.fromEulerAnglesXYZ(0,0,0)
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(0.8,1,0.8)
mesh.Parent = part

local part = Instance.new("Part")
part.formFactor = "Symmetric"
part.Size = Vector3.new(1,3,1)
part.Anchored = false
part.Locked = true
part.BrickColor = BrickColor.new("Earth green")
part.Reflectance = 0
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(0.6,0.8,1.1) * CFrame.fromEulerAnglesXYZ(0,0,0)
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(0.8,0.9,0.8)
mesh.Parent = part

local part = Instance.new("Part")
part.formFactor = "Symmetric"
part.Size = Vector3.new(1,3,1)
part.Anchored = false
part.Locked = true
part.BrickColor = BrickColor.new("Medium stone grey")
part.Reflectance = 0
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(0.6,1.4,1.1) * CFrame.fromEulerAnglesXYZ(0,0,0)
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(0.2,0.9,0.2)
mesh.Parent = part

local part = Instance.new("Part")
part.formFactor = "Symmetric"
part.Size = Vector3.new(1,3,1)
part.Anchored = false
part.Locked = true
part.BrickColor = BrickColor.new("Medium stone grey")
part.Reflectance = 0
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(0.6,1.6,1.1) * CFrame.fromEulerAnglesXYZ(0,0,0)
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(0.1,0.9,0.1)
mesh.Parent = part

local part = Instance.new("Part")
part.formFactor = "Symmetric"
part.Size = Vector3.new(1,1,1)
part.Anchored = false
part.Locked = true
part.BrickColor = BrickColor.new("Medium stone grey")
part.Reflectance = 0
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(0.6,2.85,1.1) * CFrame.fromEulerAnglesXYZ(0,0,0)
local mesh = Instance.new("BlockMesh")
mesh.Scale = Vector3.new(0.15,0.1,0.4)
mesh.Parent = part

local part = Instance.new("Part")
part.formFactor = "Symmetric"
part.Size = Vector3.new(1,1,1)
part.Anchored = false
part.Locked = true
part.BrickColor = BrickColor.new("Medium stone grey")
part.Reflectance = 0
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(0.6,2.85,1.1) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0)
local mesh = Instance.new("BlockMesh")
mesh.Scale = Vector3.new(0.15,0.1,0.4)
mesh.Parent = part

local part = Instance.new("Part")
part.formFactor = "Symmetric"
part.Size = Vector3.new(1,1,1)
part.Anchored = false
part.Locked = true
part.BrickColor = BrickColor.new("Medium stone grey")
part.Reflectance = 0
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(0.5,2.6,1.1) * CFrame.fromEulerAnglesXYZ(0,0,3.14/2)
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(0.18,0.3,0.18)
mesh.Parent = part

local part = Instance.new("Part")
part.formFactor = "Symmetric"
part.Size = Vector3.new(1,1,1)
part.Anchored = false
part.Locked = true
part.BrickColor = BrickColor.new("Medium stone grey")
part.Reflectance = 0
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(0,0.07,0.6) * CFrame.fromEulerAnglesXYZ(-0.5,0,0)
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(0.5,0.5,0.5)
mesh.Parent = part

local boost = Instance.new("Part")
boost.formFactor = "Symmetric"
boost.Size = Vector3.new(1,1,1)
boost.Anchored = false
boost.Locked = true
boost.BrickColor = BrickColor.new("Really red")
boost.Reflectance = 0.1
boost.Transparency = 0.5
boost.CanCollide = true
boost.TopSurface = 0
boost.BottomSurface = 0
boost.Parent = model
local weld = Instance.new("Weld")
weld.Parent = boost
weld.Part0 = seat
weld.Part1 = boost
weld.C0 = CFrame.new(0,0.07,0.6) * CFrame.fromEulerAnglesXYZ(-0.5,0,0)
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(0.4,0.5,0.4)
mesh.Offset = Vector3.new(0,-0.3,0)
mesh.Parent = boost

local boostz = Instance.new("Part")
boostz.formFactor = "Symmetric"
boostz.Size = Vector3.new(1,1,1)
boostz.Anchored = false
boostz.Locked = true
boostz.BrickColor = BrickColor.new("Really red")
boostz.Reflectance = 0
boostz.Transparency = 0
boostz.CanCollide = true
boostz.TopSurface = 0
boostz.BottomSurface = 0
boostz.Parent = model
local weld = Instance.new("Weld")
weld.Parent = boostz
weld.Part0 = seat
weld.Part1 = boostz
weld.C0 = CFrame.new(0,0.07,0.6) * CFrame.fromEulerAnglesXYZ(-0.5,0,0)
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(0.3,0.4,0.3)
mesh.Offset = Vector3.new(0,-0.3,0)
mesh.Parent = boostz

local w1 = Instance.new("Part")
w1.formFactor = "Symmetric"
w1.Size = Vector3.new(1,2,1)
w1.Anchored = false
w1.Locked = true
w1.BrickColor = BrickColor.new("Medium stone grey")
w1.Reflectance = 0
w1.CanCollide = true
w1.TopSurface = 0
w1.BottomSurface = 0
w1.Parent = model
local weld = Instance.new("Weld")
weld.Parent = w1
weld.Part0 = seat
weld.Part1 = w1
weld.C0 = CFrame.new(0,0.1,-0.4) * CFrame.fromEulerAnglesXYZ(3.14/2,0,3.14/2)
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(0.3,1.5,0.3)
mesh.Parent = w1

local w2 = Instance.new("Part")
w2.formFactor = "Symmetric"
w2.Size = Vector3.new(1,2,1)
w2.Anchored = false
w2.Locked = true
w2.BrickColor = BrickColor.Black()
w2.Reflectance = 0
w2.CanCollide = true
w2.TopSurface = 0
w2.BottomSurface = 0
w2.Parent = model
local weld = Instance.new("Weld")
weld.Parent = w2
weld.Part0 = seat
weld.Part1 = w2
weld.C0 = CFrame.new(0,0.1,-0.4) * CFrame.fromEulerAnglesXYZ(3.14/2,0,3.14/2)
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(0.15,1.55,0.15)
mesh.Parent = w2

local part = Instance.new("Part")
part.formFactor = "Symmetric"
part.Size = Vector3.new(2,1,2)
part.Anchored = false
part.Locked = true
part.BrickColor = BrickColor.Black()
part.Reflectance = 0
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = w1
weld.Part1 = part
weld.C0 = CFrame.new(0,1.2,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2/2,0)
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(1.5,0.4,1.5)
mesh.Parent = part

local part = Instance.new("Part")
part.formFactor = "Symmetric"
part.Size = Vector3.new(2,1,2)
part.Anchored = false
part.Locked = true
part.BrickColor = BrickColor.Black()
part.Reflectance = 0
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
local weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = w2
weld.Part1 = part
weld.C0 = CFrame.new(0,-1.2,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2/2,0)
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(1.5,0.4,1.5)
mesh.Parent = part

boosta = false

function CreateGui(plr)
pcall(function()
p = game.Players[plr.Part1.Parent.Name].PlayerGui
g = Instance.new("ScreenGui")
g.Name = "Boosta"
g.Parent = p
--[[b = Instance.new("Frame")
b.Size = UDim2.new(1,0,-0.1,0)
b.Position = UDim2.new(0,0,1,0)
b.BackgroundTransparency = 0
b.Parent = g]]
a = Instance.new("TextButton")
a.Parent = g
a.Size = UDim2.new(0.1,0,-0.1,0)
a.Position = UDim2.new(0.45,0,0.95,0)
a.Text = "Boost"
a.Name = "Booster"
a.FontSize = "Size24"
a.BackgroundTransparency = 0
end)

coroutine.resume(coroutine.create(function()

flap = true

function ButtonDown()
boosta = true
flap = false
coroutine.resume(coroutine.create(function()
coroutine.resume(coroutine.create(function()
while not flap do
wait()
--velo.maxForce = Vector3.new(math.huge,math.huge,math.huge)
velo.velocity = Vector3.new(velo.velocity.x,20,velo.velocity.z)
end
end))
end))
end

function ButtonUp()
coroutine.resume(coroutine.create(function()
coroutine.resume(coroutine.create(function()
--velo.maxForce = Vector3.new(math.huge,0,math.huge)
boosta = false
flap = true
end))
end))
end

a.MouseEnter:connect(ButtonDown)
a.MouseLeave:connect(ButtonUp)

end))

end

function RemoveGui(plr)
pcall(function() g:Remove() end)
pcall(function()
for i,v in pairs(p:GetChildren()) do
if v.Name == "Boosta" then
v:Remove()
end
end
end)
flap = true
boosta = false
end

coroutine.resume(coroutine.create(function()

while true do wait()

if not boosta then
velo.maxForce = Vector3.new(math.huge,0,math.huge)
elseif boosta then
velo.maxForce = Vector3.new(math.huge,math.huge,math.huge)
end

if seat.Throttle == 1 then
if boosta then
velo.velocity = seat.CFrame.lookVector * 40
elseif not boosta then
velo.velocity = seat.CFrame.lookVector * 20
end
end

if seat.Throttle == 0 then
velo.velocity = Vector3.new(0,0,0)
end

if seat.Throttle == -1 then
if boosta then
velo.velocity = seat.CFrame.lookVector * -5
elseif not boosta then
velo.velocity = seat.CFrame.lookVector * -10
end
end

if seat.Steer == 1 then
gyro.cframe = seat.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.314,0)
seat.CFrame = seat.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0)
end

if seat.Steer == 0 then
end

if seat.Steer == -1 then
gyro.cframe = seat.CFrame * CFrame.fromEulerAnglesXYZ(0,0.314,0)
seat.CFrame = seat.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0)
end

end

end))

seat.ChildAdded:connect(CreateGui)
seat.ChildRemoved:connect(RemoveGui)
