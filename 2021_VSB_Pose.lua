
local w = Instance.new("Weld")
w.Parent = workspace
w.Part0 = workspace['12345x54321'].LowerTorso
w.Part1 = workspace['12345x54321'].HumanoidRootPart
w.C0 = CFrame.new(0,0.5,-2.5) * CFrame.Angles(-math.pi/2,0,0)

local w = Instance.new("Weld")
w.Parent = workspace
w.Part0 = workspace['12345x54321'].UpperTorso
w.Part1 = workspace['12345x54321'].HumanoidRootPart
w.C0 = CFrame.new(0,-0.5,-2.5) * CFrame.Angles(-math.pi/2,0,0)

local left_wing = Instance.new("Part")
left_wing.Material = "Wood"
left_wing.BrickColor = BrickColor.new("Reddish brown")
left_wing.Anchored = false
left_wing.Locked = true
left_wing.Size = Vector3.new(3,0.2,8)
left_wing.CanCollide = true
left_wing.Parent = workspace
local w = Instance.new("Weld")
w.Parent = left_wing
w.Part0 = workspace['12345x54321'].HumanoidRootPart
w.Part1 = left_wing
w.C0 = CFrame.new(-2.5,-3,3) * CFrame.Angles(math.pi,0,0)

local right_wing = Instance.new("Part")
right_wing.Material = "Wood"
right_wing.BrickColor = BrickColor.new("Reddish brown")
right_wing.Anchored = false
right_wing.Locked = true
right_wing.Size = Vector3.new(3,0.2,8)
right_wing.CanCollide = true
right_wing.Parent = workspace
local w = Instance.new("Weld")
w.Parent = right_wing
w.Part0 = workspace['12345x54321'].HumanoidRootPart
w.Part1 = right_wing
w.C0 = CFrame.new(-2.5,-3,3) * CFrame.Angles(math.pi,0,0)

local p = Instance.new("Part")
p.Material = "Wood"
p.BrickColor = BrickColor.new("Reddish brown")
p.Anchored = false
p.Locked = true
p.Size = Vector3.new(3,0.2,8)
p.CanCollide = true
p.Parent = workspace
local w = Instance.new("Weld")
w.Parent = p
w.Part0 = workspace['12345x54321'].HumanoidRootPart
w.Part1 = p
w.C0 = CFrame.new(-2.5,-3,3) * CFrame.Angles(math.pi,0,0)

local p = Instance.new("Part")
p.Material = "Wood"
p.BrickColor = BrickColor.new("Reddish brown")
p.Anchored = false
p.Locked = true
p.Size = Vector3.new(3,0.2,8)
p.CanCollide = true
p.Parent = workspace
local w = Instance.new("Weld")
w.Parent = p
w.Part0 = workspace['12345x54321'].HumanoidRootPart
w.Part1 = p
w.C0 = CFrame.new(1.5,-3,3) * CFrame.Angles(math.pi,0,0)

local p = Instance.new("Part")
p.Material = "Metal"
p.BrickColor = BrickColor.new("Dark stone grey")
p.Anchored = false
p.Locked = true
p.Size = Vector3.new(0.2,5,0.2)
p.CanCollide = true
p.Parent = workspace
local m = Instance.new("SpecialMesh",p)
local w = Instance.new("Weld")
w.Parent = p
w.Part0 = workspace['12345x54321'].HumanoidRootPart
w.Part1 = p
w.C0 = CFrame.new(0,-2,3) * CFrame.Angles(math.pi,0,math.pi/2)

workspace['12345x54321'].Humanoid.Sit = true