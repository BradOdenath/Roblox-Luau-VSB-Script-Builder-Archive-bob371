vip = game.Players.bob371
char = vip.Character
for i,v in pairs(char:GetChildren()) do if v.className == "Part" then v.Transparency = 1 end end

knife = Instance.new("Part") 
knife.formFactor = "Plate"
knife.Size = Vector3.new(1,0.4,1) 
knife.BrickColor = BrickColor.new("Mid gray")
knife.Parent = char 
knife.Name = "Bodypart1" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("CylinderMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1.1,1,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Left Leg"] 
w.Part0 = char["Left Leg"]
w.Part1 = knife 
w.C0 = CFrame.new(0,-0.9,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

knife = Instance.new("Part") 
knife.formFactor = "Plate"
knife.Size = Vector3.new(1,0.4,1) 
knife.BrickColor = BrickColor.new("Mid gray")
knife.Parent = char 
knife.Name = "Bodypart2" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("CylinderMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1.1,1,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Left Leg"] 
w.Part0 = char["Left Leg"]
w.Part1 = knife 
w.C0 = CFrame.new(0,-0.9,-0.4) * CFrame.fromEulerAnglesXYZ(0,0,0) 

knife = Instance.new("Part") 
knife.formFactor = "Plate"
knife.Size = Vector3.new(1,0.4,1) 
knife.BrickColor = BrickColor.new("Mid gray")
knife.Parent = char 
knife.Name = "Bodypart3" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("CylinderMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1.1,1,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Left Leg"] 
w.Part0 = char["Left Leg"]
w.Part1 = knife 
w.C0 = CFrame.new(0,-0.9,-0.8) * CFrame.fromEulerAnglesXYZ(0,0,0) 

knife = Instance.new("Part") 
knife.formFactor = "Plate"
knife.Size = Vector3.new(1,0.4,2) 
knife.BrickColor = BrickColor.new("Mid gray")
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Sphere"
kmesh.Scale = Vector3.new(1.1,2,0.95) 
w = Instance.new("Weld") 
w.Parent = char["Left Leg"] 
w.Part0 = char["Left Leg"]
w.Part1 = knife 
w.C0 = CFrame.new(0,-0.9,-0.4) * CFrame.fromEulerAnglesXYZ(0,0,0) 

knife = Instance.new("Part") 
knife.formFactor = "Plate"
knife.Size = Vector3.new(1,2.4,1) 
knife.BrickColor = BrickColor.new("Mid gray")
knife.Parent = char 
knife.Name = "Bodypart5" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("CylinderMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1,1,1) 
w = Instance.new("Weld") 
w.Parent = char["Left Leg"] 
w.Part0 = char["Left Leg"]
w.Part1 = knife 
w.C0 = CFrame.new(0,0.2,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

knife = Instance.new("Part") 
knife.formFactor = "Plate"
knife.Size = Vector3.new(1,0.4,1) 
knife.BrickColor = BrickColor.new("Mid gray")
knife.Parent = char 
knife.Name = "Bodypart5" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("CylinderMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1.01,1.5,1.01) 
w = Instance.new("Weld") 
w.Parent = char["Left Leg"] 
w.Part0 = char["Left Leg"]
w.Part1 = knife 
w.C0 = CFrame.new(0,-0.7,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

----

knife = Instance.new("Part") 
knife.formFactor = "Plate"
knife.Size = Vector3.new(1,0.4,1) 
knife.BrickColor = BrickColor.new("Mid gray")
knife.Parent = char 
knife.Name = "Bodypart1" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("CylinderMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1.1,1,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Right Leg"] 
w.Part0 = char["Right Leg"]
w.Part1 = knife 
w.C0 = CFrame.new(0,-0.9,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

knife = Instance.new("Part") 
knife.formFactor = "Plate"
knife.Size = Vector3.new(1,0.4,1) 
knife.BrickColor = BrickColor.new("Mid gray")
knife.Parent = char 
knife.Name = "Bodypart2" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("CylinderMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1.1,1,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Right Leg"] 
w.Part0 = char["Right Leg"]
w.Part1 = knife 
w.C0 = CFrame.new(0,-0.9,-0.4) * CFrame.fromEulerAnglesXYZ(0,0,0) 

knife = Instance.new("Part") 
knife.formFactor = "Plate"
knife.Size = Vector3.new(1,0.4,1) 
knife.BrickColor = BrickColor.new("Mid gray")
knife.Parent = char 
knife.Name = "Bodypart3" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("CylinderMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1.1,1,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Right Leg"] 
w.Part0 = char["Right Leg"]
w.Part1 = knife 
w.C0 = CFrame.new(0,-0.9,-0.8) * CFrame.fromEulerAnglesXYZ(0,0,0) 

knife = Instance.new("Part") 
knife.formFactor = "Plate"
knife.Size = Vector3.new(1,0.4,2) 
knife.BrickColor = BrickColor.new("Mid gray")
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Sphere"
kmesh.Scale = Vector3.new(1.1,2,0.95) 
w = Instance.new("Weld") 
w.Parent = char["Right Leg"] 
w.Part0 = char["Right Leg"]
w.Part1 = knife 
w.C0 = CFrame.new(0,-0.9,-0.4) * CFrame.fromEulerAnglesXYZ(0,0,0) 

knife = Instance.new("Part") 
knife.formFactor = "Plate"
knife.Size = Vector3.new(1,2.4,1) 
knife.BrickColor = BrickColor.new("Mid gray")
knife.Parent = char 
knife.Name = "Bodypart5" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("CylinderMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1,1,1) 
w = Instance.new("Weld") 
w.Parent = char["Right Leg"] 
w.Part0 = char["Right Leg"]
w.Part1 = knife 
w.C0 = CFrame.new(0,0.2,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

knife = Instance.new("Part") 
knife.formFactor = "Plate"
knife.Size = Vector3.new(1,0.4,1) 
knife.BrickColor = BrickColor.new("Mid gray")
knife.Parent = char 
knife.Name = "Bodypart5" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("CylinderMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1.01,1.5,1.01) 
w = Instance.new("Weld") 
w.Parent = char["Right Leg"] 
w.Part0 = char["Right Leg"]
w.Part1 = knife 
w.C0 = CFrame.new(0,-0.7,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

----

knife = Instance.new("Part") 
knife.formFactor = "Plate"
knife.Size = Vector3.new(2,2,1) 
knife.BrickColor = BrickColor.Red()
knife.Parent = char 
knife.Name = "Bodypart1" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Sphere"
kmesh.Scale = Vector3.new(2.2,2.2,2.2)
decal = Instance.new("Decal")
decal.Texture = "http://www.roblox.com/asset/?id=30405207"
decal.Parent = knife
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = char["Torso"]
w.Part1 = knife 
w.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

knife = Instance.new("Part") 
knife.formFactor = "Plate"
knife.Size = Vector3.new(1,1.2,1) 
knife.BrickColor = BrickColor.new("Mid gray")
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Sphere"
kmesh.Scale = Vector3.new(1.2,1.2,0.8) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = char["Torso"]
w.Part1 = knife 
w.C0 = CFrame.new(0.6,1.7,-0.4) * CFrame.fromEulerAnglesXYZ(0,0,0) 

knife = Instance.new("Part") 
knife.formFactor = "Plate"
knife.Size = Vector3.new(1,1.2,1) 
knife.BrickColor = BrickColor.new("Really black")
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Sphere"
kmesh.Scale = Vector3.new(0.5,0.5,1) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = char["Torso"]
w.Part1 = knife 
w.C0 = CFrame.new(0.6,1.8,-0.55) * CFrame.fromEulerAnglesXYZ(0,0,0) 

knife = Instance.new("Part") 
knife.formFactor = "Plate"
knife.Size = Vector3.new(1,1.2,1) 
knife.BrickColor = BrickColor.new("Mid gray")
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Sphere"
kmesh.Scale = Vector3.new(1.2,1.2,0.8) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = char["Torso"]
w.Part1 = knife 
w.C0 = CFrame.new(-0.6,1.7,-0.4) * CFrame.fromEulerAnglesXYZ(0,0,0) 

knife = Instance.new("Part") 
knife.formFactor = "Plate"
knife.Size = Vector3.new(1,1.2,1) 
knife.BrickColor = BrickColor.new("Really black")
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Sphere"
kmesh.Scale = Vector3.new(0.5,0.5,1) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = char["Torso"]
w.Part1 = knife 
w.C0 = CFrame.new(-0.6,1.8,-0.55) * CFrame.fromEulerAnglesXYZ(0,0,0) 

----
--[[
knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.new("Mid gray")
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.MeshType = "Sphere"
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(0.75,1.2,0.75) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = char["Left Arm"]
w.Part1 = knife 
w.C0 = CFrame.new(-0.8,0,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.44) 

knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.new("Mid gray")
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(0.75,1.4,0.75) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = char["Left Arm"]
w.Part1 = knife 
w.C0 = CFrame.new(-0.9,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.2) ]]

----

Y = 0.2

knife = Instance.new("Part") 
knife.formFactor = "Plate"
knife.Size = Vector3.new(1,1.2,1) 
knife.BrickColor = BrickColor.White()
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("CylinderMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(0.6,1,0.6) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = char["Left Arm"]
w.Part1 = knife 
w.C0 = CFrame.new(0.4-1.2,0.4-Y,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.3)

knife = Instance.new("Part") 
knife.formFactor = "Plate"
knife.Size = Vector3.new(1,0.4,1) 
knife.BrickColor = BrickColor.White()
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("CylinderMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(0.7,1,0.7) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = char["Left Arm"]
w.Part1 = knife 
w.C0 = CFrame.new(0.2-1.2,-0.32-Y,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.1)

knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.White()
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Sphere"
kmesh.Scale = Vector3.new(0.6,0.6,0.6) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = char["Left Arm"]
w.Part1 = knife 
w.C0 = CFrame.new(0.58-1.2,1-Y,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.3)

knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.White()
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Sphere"
kmesh.Scale = Vector3.new(0.6,0.6,0.2) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = char["Left Arm"]
w.Part1 = knife 
w.C0 = CFrame.new(0.2-1.2,-0.5-Y,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.3)

knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.White()
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Sphere"
kmesh.Scale = Vector3.new(0.6,0.6,0.2) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = char["Left Arm"]
w.Part1 = knife 
w.C0 = CFrame.new(0.2-1.2,-0.5-Y,0.1) * CFrame.fromEulerAnglesXYZ(0,0,-0.3)

knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.White()
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Sphere"
kmesh.Scale = Vector3.new(0.4,0.4,0.2) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = char["Left Arm"]
w.Part1 = knife 
w.C0 = CFrame.new(0.2-1.2,-0.5-Y,0.2) * CFrame.fromEulerAnglesXYZ(0,0,-0.3)

knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.White()
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Sphere"
kmesh.Scale = Vector3.new(0.6,0.6,0.2) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = char["Left Arm"]
w.Part1 = knife 
w.C0 = CFrame.new(0.2-1.2,-0.5-Y,-0.1) * CFrame.fromEulerAnglesXYZ(0,0,-0.3)

knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.White()
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Sphere"
kmesh.Scale = Vector3.new(0.4,0.4,0.2) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = char["Left Arm"]
w.Part1 = knife 
w.C0 = CFrame.new(0.2-1.2,-0.2-Y,-0.2) * CFrame.fromEulerAnglesXYZ(0,0,-0.3)


----

knife = Instance.new("Part") 
knife.formFactor = "Plate"
knife.Size = Vector3.new(1,1.2,1) 
knife.BrickColor = BrickColor.White()
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("CylinderMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(0.6,1,0.6) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = char["Right Arm"]
w.Part1 = knife 
w.C0 = CFrame.new(-0.4+1.2,0.4-Y,0) * CFrame.fromEulerAnglesXYZ(0,0,0.3)

knife = Instance.new("Part") 
knife.formFactor = "Plate"
knife.Size = Vector3.new(1,0.4,1) 
knife.BrickColor = BrickColor.White()
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("CylinderMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(0.7,1,0.7) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = char["Right Arm"]
w.Part1 = knife 
w.C0 = CFrame.new(1,-0.32-Y,0) * CFrame.fromEulerAnglesXYZ(0,0,0.1)

knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.White()
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Sphere"
kmesh.Scale = Vector3.new(0.6,0.6,0.6) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = char["Right Arm"]
w.Part1 = knife 
w.C0 = CFrame.new(-0.58+1.2,1-Y,0) * CFrame.fromEulerAnglesXYZ(0,0,0.3)

knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.White()
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Sphere"
kmesh.Scale = Vector3.new(0.6,0.6,0.2) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = char["Right Arm"]
w.Part1 = knife 
w.C0 = CFrame.new(1,-0.5-Y,0) * CFrame.fromEulerAnglesXYZ(0,0,0.3)

knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.White()
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Sphere"
kmesh.Scale = Vector3.new(0.6,0.6,0.2) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = char["Right Arm"]
w.Part1 = knife 
w.C0 = CFrame.new(1,-0.5-Y,0.1) * CFrame.fromEulerAnglesXYZ(0,0,0.3)

knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.White()
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Sphere"
kmesh.Scale = Vector3.new(0.4,0.4,0.2) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = char["Right Arm"]
w.Part1 = knife 
w.C0 = CFrame.new(1,-0.5-Y,0.2) * CFrame.fromEulerAnglesXYZ(0,0,0.3)

knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.White()
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Sphere"
kmesh.Scale = Vector3.new(0.6,0.6,0.2) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = char["Right Arm"]
w.Part1 = knife 
w.C0 = CFrame.new(1,-0.5-Y,-0.1) * CFrame.fromEulerAnglesXYZ(0,0,0.3)

knife = Instance.new("Part") 
knife.formFactor = "Symmetric"
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.White()
knife.Parent = char 
knife.Name = "Bodypart4" 
knife.Locked = true 
knife.CanCollide = false
knife.Transparency = 0
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.MeshType = "Sphere"
kmesh.Scale = Vector3.new(0.4,0.4,0.2) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = char["Right Arm"]
w.Part1 = knife 
w.C0 = CFrame.new(1,-0.2-Y,-0.2) * CFrame.fromEulerAnglesXYZ(0,0,0.3)

----
