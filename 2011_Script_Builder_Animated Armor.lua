--[[_bob371's_Armor_(_Don't_Worry_About_It_)_]]--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Player = 'LocalPlayer'
if owner then Player = owner else 
Player = game.Players[Player] end
Character = Player.Character
for i,v in pairs(Character:GetChildren()) do 
	if v.className == "Part" then 
		v.Transparency = 1
		pcall(function() v:FindFirstChildWhichIsA("Decal"):Remove() end)
	elseif v:IsA("Accessory") then 
		pcall(function() 
			v:FindFirstChild("Handle").Transparency = 1 
		end) 
	end
end
script.Parent = Character

--[[ * Fire Can * ]]--

pcall(function() Character.Armor:Remove() end)

Armor = Instance.new("Model")
Armor.Name = "Armor"
Armor.Parent = Character

--[[ * Arm Weld * ]]--

ArmWeld = Instance.new("Weld") 
ArmWeld.Parent = Character["Torso"]
ArmWeld.Part0 = ArmWeld.Parent
ArmWeld.Part1 = Character["Right Arm"]
--ArmWeld.C0 = CFrame.new(1.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)
ArmWeld.C0 = CFrame.new(1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)


pcall(function() Character.Head.face:Remove() end)
for i,v in pairs(Character:GetChildren()) do if v:IsA("Part") then v.Transparency = 1 end end

--[[ * Head_Body * ]]--

Head_A = Instance.new("Part")
Head_A.formFactor = "Custom"
Head_A.Locked = true
Head_A.CanCollide = false
Head_A.BrickColor = BrickColor.new("Dark stone grey")
Head_A.Anchored = false
Head_A.Size = Vector3.new(1.25,1.25,1.25)
Head_A.TopSurface = 0
Head_A.BottomSurface = 0
Head_A.Reflectance = 0.1
Head_A.Parent = Armor
Mesh_A = Instance.new("SpecialMesh",Head_A)
Weld_A = Instance.new("Weld")
Weld_A.Parent = Head_A
Weld_A.Part0 = Character["Head"]
Weld_A.Part1 = Head_A
Weld_A.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)

--[[ * Head_Eyes * ]]--

Head_B = Instance.new("Part")
Head_B.formFactor = "Custom"
Head_B.Locked = true
Head_B.CanCollide = false
Head_B.BrickColor = BrickColor.new("Really red")
Head_B.Anchored = false
Head_B.Size = Vector3.new(1.25,0.25,1.25)
Head_B.TopSurface = 0
Head_B.BottomSurface = 0
Head_B.Reflectance = 0.1
Head_B.Parent = Armor
Mesh_B = Instance.new("CylinderMesh",Head_B)
pcall(function() Mesh_B.Bevel = 0.1 end)
Weld_B = Instance.new("Weld")
Weld_B.Parent = Head_B
Weld_B.Part0 = Head_A
Weld_B.Part1 = Head_B
Weld_B.C0 = CFrame.new(0,0.1,-0.05) * CFrame.Angles(0,0,0)

--[[ * Torso_Body * ]]--

Torso_A = Instance.new("Part")
Torso_A.formFactor = "Custom"
Torso_A.Locked = true
Torso_A.CanCollide = false
Torso_A.BrickColor = BrickColor.new("Dark stone grey")
Torso_A.Anchored = false
Torso_A.Size = Vector3.new(2,2,1)
Torso_A.TopSurface = 0
Torso_A.BottomSurface = 0
Torso_A.Reflectance = 0.1
Torso_A.Parent = Armor
TWeld_A = Instance.new("Weld")
TWeld_A.Parent = Torso_A
TWeld_A.Part0 = Character["Torso"]
TWeld_A.Part1 = Torso_A
TWeld_A.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)

--[[ * Torso_Abs * ]]--

Torso_B = Instance.new("Part")
Torso_B.formFactor = "Custom"
Torso_B.Locked = true
Torso_B.CanCollide = false
Torso_B.BrickColor = BrickColor.new("Dark stone grey")
Torso_B.Anchored = false
Torso_B.Size = Vector3.new(0.4,0.1,0.1)
Torso_B.TopSurface = 0
Torso_B.BottomSurface = 0
Torso_B.Reflectance = 0.1
Torso_B.Parent = Armor
TWeld_B = Instance.new("Weld")
TWeld_B.Parent = Torso_B
TWeld_B.Part0 = Character["Torso"]
TWeld_B.Part1 = Torso_B
TWeld_B.C0 = CFrame.new(0.25,-0.2,-0.5) * CFrame.Angles(0,0,0)

--[[ * Torso_Abs * ]]--

Torso_C = Instance.new("Part")
Torso_C.formFactor = "Custom"
Torso_C.Locked = true
Torso_C.CanCollide = false
Torso_C.BrickColor = BrickColor.new("Dark stone grey")
Torso_C.Anchored = false
Torso_C.Size = Vector3.new(0.4,0.1,0.1)
Torso_C.TopSurface = 0
Torso_C.BottomSurface = 0
Torso_C.Reflectance = 0.1
Torso_C.Parent = Armor
TWeld_C = Instance.new("Weld")
TWeld_C.Parent = Torso_C
TWeld_C.Part0 = Character["Torso"]
TWeld_C.Part1 = Torso_C
TWeld_C.C0 = CFrame.new(-0.25,-0.2,-0.5) * CFrame.Angles(0,0,0)

--[[ * Torso_Abs * ]]--

Torso_D = Instance.new("Part")
Torso_D.formFactor = "Custom"
Torso_D.Locked = true
Torso_D.CanCollide = false
Torso_D.BrickColor = BrickColor.new("Dark stone grey")
Torso_D.Anchored = false
Torso_D.Size = Vector3.new(0.4,0.1,0.1)
Torso_D.TopSurface = 0
Torso_D.BottomSurface = 0
Torso_D.Reflectance = 0.1
Torso_D.Parent = Armor
TWeld_D = Instance.new("Weld")
TWeld_D.Parent = Torso_D
TWeld_D.Part0 = Character["Torso"]
TWeld_D.Part1 = Torso_D
TWeld_D.C0 = CFrame.new(-0.25,-0.5,-0.5) * CFrame.Angles(0,0,0)

--[[ * Torso_Abs * ]]--

Torso_E = Instance.new("Part")
Torso_E.formFactor = "Custom"
Torso_E.Locked = true
Torso_E.CanCollide = false
Torso_E.BrickColor = BrickColor.new("Dark stone grey")
Torso_E.Anchored = false
Torso_E.Size = Vector3.new(0.4,0.1,0.1)
Torso_E.TopSurface = 0
Torso_E.BottomSurface = 0
Torso_E.Reflectance = 0.1
Torso_E.Parent = Armor
TWeld_E = Instance.new("Weld")
TWeld_E.Parent = Torso_E
TWeld_E.Part0 = Character["Torso"]
TWeld_E.Part1 = Torso_E
TWeld_E.C0 = CFrame.new(0.25,-0.5,-0.5) * CFrame.Angles(0,0,0)

--[[ * Torso_Abs * ]]--

Torso_F = Instance.new("Part")
Torso_F.formFactor = "Custom"
Torso_F.Locked = true
Torso_F.CanCollide = false
Torso_F.BrickColor = BrickColor.new("Dark stone grey")
Torso_F.Anchored = false
Torso_F.Size = Vector3.new(0.4,0.1,0.1)
Torso_F.TopSurface = 0
Torso_F.BottomSurface = 0
Torso_F.Reflectance = 0.1
Torso_F.Parent = Armor
TWeld_F = Instance.new("Weld")
TWeld_F.Parent = Torso_F
TWeld_F.Part0 = Character["Torso"]
TWeld_F.Part1 = Torso_F
TWeld_F.C0 = CFrame.new(0.25,-0.8,-0.5) * CFrame.Angles(0,0,0)

--[[ * Torso_Abs * ]]--

Torso_G = Instance.new("Part")
Torso_G.formFactor = "Custom"
Torso_G.Locked = true
Torso_G.CanCollide = false
Torso_G.BrickColor = BrickColor.new("Dark stone grey")
Torso_G.Anchored = false
Torso_G.Size = Vector3.new(0.4,0.1,0.1)
Torso_G.TopSurface = 0
Torso_G.BottomSurface = 0
Torso_G.Reflectance = 0.1
Torso_G.Parent = Armor
TWeld_G = Instance.new("Weld")
TWeld_G.Parent = Torso_G
TWeld_G.Part0 = Character["Torso"]
TWeld_G.Part1 = Torso_G
TWeld_G.C0 = CFrame.new(-0.25,-0.8,-0.5) * CFrame.Angles(0,0,0)

--[[ * Torso_Bewb * ]]--

Torso_H = Instance.new("Part")
Torso_H.formFactor = "Custom"
Torso_H.Locked = true
Torso_H.CanCollide = false
Torso_H.BrickColor = BrickColor.new("Dark stone grey")
Torso_H.Anchored = false
Torso_H.Size = Vector3.new(0.8,0.8,0.1)
Torso_H.TopSurface = 0
Torso_H.BottomSurface = 0
Torso_H.Reflectance = 0.1
Torso_H.Parent = Armor
TWeld_H = Instance.new("Weld")
TWeld_H.Parent = Torso_H
TWeld_H.Part0 = Character["Torso"]
TWeld_H.Part1 = Torso_H
TWeld_H.C0 = CFrame.new(0.45,0.45,-0.5) * CFrame.Angles(0,0,0)

--[[ * Torso_Bewb * ]]--

Torso_I = Instance.new("Part")
Torso_I.formFactor = "Custom"
Torso_I.Locked = true
Torso_I.CanCollide = false
Torso_I.BrickColor = BrickColor.new("Dark stone grey")
Torso_I.Anchored = false
Torso_I.Size = Vector3.new(0.8,0.8,0.1)
Torso_I.TopSurface = 0
Torso_I.BottomSurface = 0
Torso_I.Reflectance = 0.1
Torso_I.Parent = Armor
TWeld_I = Instance.new("Weld")
TWeld_I.Parent = Torso_I
TWeld_I.Part0 = Character["Torso"]
TWeld_I.Part1 = Torso_I
TWeld_I.C0 = CFrame.new(-0.45,0.45,-0.5) * CFrame.Angles(0,0,0)

--[[ * RArm_Body * ]]--

RArm_A = Instance.new("Part")
RArm_A.formFactor = "Custom"
RArm_A.Locked = true
RArm_A.CanCollide = false
RArm_A.BrickColor = BrickColor.new("Dark stone grey")
RArm_A.Anchored = false
RArm_A.Size = Vector3.new(1,2,1)
RArm_A.TopSurface = 0
RArm_A.BottomSurface = 0
RArm_A.Reflectance = 0.1
RArm_A.Parent = Armor
RAWeld_A = Instance.new("Weld")
RAWeld_A.Parent = RArm_A
RAWeld_A.Part0 = Character["Right Arm"]
RAWeld_A.Part1 = RArm_A
RAWeld_A.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)

--[[ * RArm_Bewm * ]]--

RArm_B = Instance.new("Part")
RArm_B.formFactor = "Custom"
RArm_B.Locked = true
RArm_B.CanCollide = false
RArm_B.BrickColor = BrickColor.new("White")
RArm_B.Anchored = false
RArm_B.Size = Vector3.new(1,0.2,1)
RArm_B.TopSurface = 0
RArm_B.BottomSurface = 0
RArm_B.Reflectance = 0.1
RArm_B.Transparency = 1
RArm_B.Parent = Armor
RAMesh_B = Instance.new("CylinderMesh",RArm_B)
pcall(function() Mesh_B.Bevel = 0.1 end)
RAWeld_B = Instance.new("Weld")
RAWeld_B.Parent = RArm_B
RAWeld_B.Part0 = Character["Right Arm"]
RAWeld_B.Part1 = RArm_B
RAWeld_B.C0 = CFrame.new(0,-1,0) * CFrame.Angles(0,0,0)

--[[ * LArm_Body * ]]--

LArm_A = Instance.new("Part")
LArm_A.formFactor = "Custom"
LArm_A.Locked = true
LArm_A.CanCollide = false
LArm_A.BrickColor = BrickColor.new("Dark stone grey")
LArm_A.Anchored = false
LArm_A.Size = Vector3.new(1,2,1)
LArm_A.TopSurface = 0
LArm_A.BottomSurface = 0
LArm_A.Reflectance = 0.1
LArm_A.Parent = Armor
LAWeld_A = Instance.new("Weld")
LAWeld_A.Parent = LArm_A
LAWeld_A.Part0 = Character["Left Arm"]
LAWeld_A.Part1 = LArm_A
LAWeld_A.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)

--[[ * RLeg_Body * ]]--

RLeg_A = Instance.new("Part")
RLeg_A.formFactor = "Custom"
RLeg_A.Locked = true
RLeg_A.CanCollide = false
RLeg_A.BrickColor = BrickColor.new("Dark stone grey")
RLeg_A.Anchored = false
RLeg_A.Size = Vector3.new(1,2,1)
RLeg_A.TopSurface = 0
RLeg_A.BottomSurface = 0
RLeg_A.Reflectance = 0.1
RLeg_A.Parent = Armor
RLWeld_A = Instance.new("Weld")
RLWeld_A.Parent = RLeg_A
RLWeld_A.Part0 = Character["Right Leg"]
RLWeld_A.Part1 = RLeg_A
RLWeld_A.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)

--[[ * LLeg_Body * ]]--

LLeg_A = Instance.new("Part")
LLeg_A.formFactor = "Custom"
LLeg_A.Locked = true
LLeg_A.CanCollide = false
LLeg_A.BrickColor = BrickColor.new("Dark stone grey")
LLeg_A.Anchored = false
LLeg_A.Size = Vector3.new(1,2,1)
LLeg_A.TopSurface = 0
LLeg_A.BottomSurface = 0
LLeg_A.Reflectance = 0.1
LLeg_A.Parent = Armor
LLWeld_A = Instance.new("Weld")
LLWeld_A.Parent = LLeg_A
LLWeld_A.Part0 = Character["Left Leg"]
LLWeld_A.Part1 = LLeg_A
LLWeld_A.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)

for i = 1,10 do wait()
--Character.Torso.CFrame = Character.Torso.CFrame * CFrame.Angles(0,0.1,0)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/20,0,0)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0,0.05,0.1)
end
for i = 1,13 do wait()
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0,0,-0.15)
end
coroutine.resume(coroutine.create(function()
Character.Humanoid.WalkSpeed = 0
RArm_B.Transparency = 0
for i = 1,20 do wait()
RAWeld_B.C0 = RAWeld_B.C0 * CFrame.new(0,-2,0)
RArm_B.Transparency = RArm_B.Transparency + 0.05
RAMesh_B.Scale = RAMesh_B.Scale + Vector3.new(1,1,1)
end
Character.Humanoid.WalkSpeed = 16
RAWeld_B.C0 = CFrame.new(0,-1,0)
RAMesh_B.Scale = Vector3.new(1,1,1)
end))
for i = 1,9 do wait()
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0,0,0.05)
end