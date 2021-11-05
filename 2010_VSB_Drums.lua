
coroutine.resume(coroutine.create(function()
local vip = owner
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

vip.Chatted:connect(Chatted) 

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