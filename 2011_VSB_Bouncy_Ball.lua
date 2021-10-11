--[[_(_Don't_Worry_About_It_)_]]--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Player = owner or game.Players.LocalPlayer
Character = Player.Character
script.Parent = Character

--[[ * Fire StickA * ]]--

pcall(function() Character.Staff:Remove() end)

Staff = Instance.new("Model")
Staff.Name = "Staff"
Staff.Parent = Character

--[[ * Arm Weld * ]]--

ArmWeld = Instance.new("Weld") 
ArmWeld.Parent = Character["Torso"]
ArmWeld.Part0 = ArmWeld.Parent
ArmWeld.Part1 = Character["Right Arm"]
ArmWeld.C0 = CFrame.new(1.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)

--[[ * Arm Weld * ]]--

ArmWeldR = Instance.new("Weld") 
ArmWeldR.Parent = Character["Torso"]
ArmWeldR.Part0 = ArmWeldR.Parent
ArmWeldR.Part1 = Character["Left Arm"]
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

--[[ * StickA * ]]--

StickA = Instance.new("Part")
StickA.formFactor = "Custom"
StickA.Locked = true
StickA.Reflectance = 0.2
StickA.CanCollide = false
StickA.BrickColor = BrickColor.new("Reddish brown")
StickA.Anchored = false
StickA.Size = Vector3.new(2,2,2)
StickA.TopSurface = 0
StickA.BottomSurface = 0
StickA.Parent = Staff
MeshA = Instance.new("SpecialMesh",StickA)
MeshA.MeshType = "Sphere"
WeldA = Instance.new("Weld")
WeldA.Parent = StickA
WeldA.Part0 = Character["Right Arm"]
WeldA.Part1 = StickA
WeldA.C0 = CFrame.new(0,-1,-0) * CFrame.Angles(-math.pi/2,0,0)

while true do
for i = 1,7 do wait()
WeldA.C0 = WeldA.C0 * CFrame.new(0,-0.27,0)
end
for i = 1,3 do wait()
WeldA.C0 = WeldA.C0 * CFrame.new(0,-0.25,0)
MeshA.Scale = MeshA.Scale + Vector3.new(0.1,-0.1,0.1)
end
StickA.Color = Color3.new(math.random(),math.random(),math.random())
for i = 1,3 do wait()
WeldA.C0 = WeldA.C0 * CFrame.new(0,0.25,0)
MeshA.Scale = MeshA.Scale - Vector3.new(0.1,-0.1,0.1)
end
for i = 1,7 do wait()
WeldA.C0 = WeldA.C0 * CFrame.new(0,0.27,0)
end
end