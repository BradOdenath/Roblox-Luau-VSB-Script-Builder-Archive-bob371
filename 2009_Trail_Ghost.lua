X = "LocalPlayer"
X = game.Players.LocalPlayer
if owner then X = owner end
script.Parent = X.Character
T = 0.5
R = X.Character.Head.face.Texture

Walkable = false

for i,v in pairs(X.Character:GetChildren()) do if v.className == "BodyColors" or v.className == "Hat" or v.className == "Pants" or v.className == "Shirt" then v:Remove() end end
for i,v in pairs(X.Character:GetChildren()) do if v.className == "Part" then v.Transparency = T v.BrickColor = BrickColor.new("Medium stone grey") end end
X.Character.Humanoid.MaxHealth = math.huge

A1z = Instance.new("Model")
A1z.Name = "A1"
A1z.Parent = X.Character
A1 = Instance.new("Part")
A1.Name = "Hover1"
A1.Anchored = true
A1.Locked = true
A1.CanCollide = false
A1.formFactor = "Symmetric"
A1.Transparency = T
A1.BrickColor = BrickColor.new("Medium stone grey")
A1.Size = X.Character["Torso"].Size
A1.Parent = A1z
A1 = Instance.new("Part")
A1.Name = "Hover2"
A1.Anchored = true
A1.Locked = true
A1.CanCollide = false
A1.formFactor = "Symmetric"
A1.Transparency = T
A1.BrickColor = BrickColor.new("Medium stone grey")
A1.Size = X.Character["Left Leg"].Size
A1.Parent = A1z
A1 = Instance.new("Part")
A1.Name = "Hover3"
A1.Anchored = true
A1.Locked = true
A1.CanCollide = false
A1.formFactor = "Symmetric"
A1.Transparency = T
A1.BrickColor = BrickColor.new("Medium stone grey")
A1.Size = X.Character["Right Leg"].Size
A1.Parent = A1z
A1 = Instance.new("Part")
A1.Name = "Hover4"
A1.Anchored = true
A1.Locked = true
A1.CanCollide = false
A1.formFactor = "Symmetric"
A1.Transparency = T
A1.BrickColor = BrickColor.new("Medium stone grey")
A1.Size = X.Character["Left Arm"].Size
A1.Parent = A1z
A1 = Instance.new("Part")
A1.Name = "Hover5"
A1.Anchored = true
A1.Locked = true
A1.CanCollide = false
A1.formFactor = "Symmetric"
A1.Transparency = T
A1.BrickColor = BrickColor.new("Medium stone grey")
A1.Size = X.Character["Right Arm"].Size
A1.Parent = A1z
A2 = Instance.new("Part")
A2.Name = "Hover6"
A2.Anchored = true
A2.Locked = true
A2.CanCollide = false
A2.formFactor = "Symmetric"
A2.Transparency = T
A2.BrickColor = BrickColor.new("Medium stone grey")
A2.Size = X.Character.Head.Size
A2.Parent = A1z
Az = Instance.new("SpecialMesh")
Az.Scale = Vector3.new(1.25,1.25,1.25)
Az.Parent = A2
Rz = Instance.new("Decal")
Rz.Name = "face"
Rz.Texture = R
Rz.Parent = A2
Hz = Instance.new("Humanoid")
Hz.Parent = A1z
Hz.MaxHealth = 0

A2z = A1z:Clone()
A2z.Parent = X.Character
A2z.Name = "A2"
A3z = A1z:Clone()
A3z.Parent = X.Character
A3z.Name = "A3"
A4z = A1z:Clone()
A4z.Parent = X.Character
A4z.Name = "A4"
A5z = A1z:Clone()
A5z.Parent = X.Character
A5z.Name = "A5"
A6z = A1z:Clone()
A6z.Parent = X.Character
A6z.Name = "A6"
A7z = A1z:Clone()
A7z.Parent = X.Character
A7z.Name = "A7"
A8z = A1z:Clone()
A8z.Parent = X.Character
A8z.Name = "A8"
A9z = A1z:Clone()
A9z.Parent = X.Character
A9z.Name = "A9"
A10z = A1z:Clone()
A10z.Parent = X.Character
A10z.Name = "A10"
A11z = A1z:Clone()
A11z.Parent = X.Character
A11z.Name = "A11"
A12z = A1z:Clone()
A12z.Parent = X.Character
A12z.Name = "A12"
A13z = A1z:Clone()
A13z.Parent = X.Character
A13z.Name = "A13"
A14z = A1z:Clone()
A14z.Parent = X.Character
A14z.Name = "A14"
A15z = A1z:Clone()
A15z.Parent = X.Character
A15z.Name = "A15"

--[[

H1 = Torso
H2 = LLeg
H3 = RLeg
H4 = LArm
H5 = RArm

]]

P = nil

function Ghost()
for i,v in pairs(P:GetChildren()) do
if v.Name == "Hover1" and X.Character:findFirstChild("Torso") ~= nil then
v.CFrame = X.Character.Torso.CFrame * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
if v.Name == "Hover2" and X.Character:findFirstChild("Left Leg") ~= nil then
v.CFrame = X.Character["Left Leg"].CFrame * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
if v.Name == "Hover3" and X.Character:findFirstChild("Right Leg") ~= nil then
v.CFrame = X.Character["Right Leg"].CFrame * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
if v.Name == "Hover4" and X.Character:findFirstChild("Left Arm") ~= nil then
v.CFrame = X.Character["Left Arm"].CFrame * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
if v.Name == "Hover5" and X.Character:findFirstChild("Right Arm") ~= nil then
v.CFrame = X.Character["Right Arm"].CFrame * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
if v.Name == "Hover6" and X.Character:findFirstChild("Head") ~= nil then
v.CFrame = X.Character.Head.CFrame * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
end
end

function A()
P = A1z
Ghost()
end

function B()
P = A2z
Ghost()
end

function C()
P = A3z
Ghost()
end

function D()
P = A4z
Ghost()
end

function E()
P = A5z
Ghost()
end

function F()
P = A6z
Ghost()
end

function G()
P = A7z
Ghost()
end

function H()
P = A8z
Ghost()
end

function I()
P = A9z
Ghost()
end

function J()
P = A10z
Ghost()
end

function K()
P = A11z
Ghost()
end

function L()
P = A12z
Ghost()
end

function M()
P = A13z
Ghost()
end

function N()
P = A14z
Ghost()
end

function O()
P = A15z
Ghost()
end

function Touched(hit)
if Walkable == false then return end
if hit.className == "Part" then
if (hit.Name ~= "Base") then
if (hit.Parent.Parent.Name ~= X) then
--if v.Size.x > v.Size.y and v.Size.z > v.Size.y then return end
hit.CanCollide = false
wait(math.random(3,5))
hit.CanCollide = true
end
end
end
end

for i,v in pairs(X.Character:GetChildren()) do if v.className == "Part" then if v.Name ~= "Left Leg" or v.Name == "Right Leg" then v.Touched:connect(Touched) end end end

W = 0.00001

while true do
X.Character.Humanoid.WalkSpeed = 30
for i,v in pairs(X.Character:GetChildren()) do if v.className == "Part" then v.Transparency = T v.BrickColor = BrickColor.new("Medium stone grey") end end
X.Character.Humanoid.Health = X.Character.Humanoid.MaxHealth
A()
wait(W)
B()
wait(W)
C()
wait(W)
D()
wait(W)
E()
wait(W)
F()
wait(W)
G()
wait(W)
H()
wait(W)
I()
wait(W)
J()
wait(W)
K()
wait(W)
L()
wait(W)
M()
wait(W)
N()
wait(W)
O()
wait(W)
end
