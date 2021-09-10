vip = 'LocalPlayer'
if owner then vip = owner else vip = game.Players[vip] end
char = vip.Character
for i,v in pairs(char:GetChildren()) do 
	if v.className == "Part" then 
		v.Transparency = 1
		pcall(function() v:FindFirstChildWhichIsA("Decal"):Remove() end)
	elseif v:IsA("Accessory") then 
		pcall(function() 
			v:FindFirstChild("Handle").Transparency = 1 
		end) 
	end
end

for i,v in pairs(char.Head:GetChildren()) do if v.className == "Decal" then v.Texture = "http://www.roblox.com/asset/?id=9801981" end end

f = Instance.new("Decal")
f.Texture = "http://www.roblox.com/asset/?id=9801981"
f.Face = "Left"
f.Parent = char.Head

f = Instance.new("Decal")
f.Texture = "http://www.roblox.com/asset/?id=9801981"
f.Face = "Right"
f.Parent = char.Head

function HatOn()
for i,v in pairs(script.Parent:GetChildren()) do if v.className == "Hat" then v.Parent = char end end
end

function HatOff()
for i,v in pairs(char:GetChildren()) do if v.className == "Hat" then v.Parent = script.Parent end end
end

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("White")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1,1.5,1)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Left Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0.25,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("White")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1,1.5,1)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Right Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0.25,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Dark orange")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1.05,0.55,1.05)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Left Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0.75,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Dark orange")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1.05,0.55,1.05)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Right Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0.75,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1


part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Really black")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1.07,0.4,1.07)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Left Leg"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,-0.81,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Really black")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1.07,0.4,1.07)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Right Leg"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,-0.81,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Bright red")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Wedge"
mesh.Scale = Vector3.new(0.95,1.4,0.7)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Left Leg"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0.15,0.04,-0.05) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Bright red")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Wedge"
mesh.Scale = Vector3.new(0.95,1.4,0.7)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Right Leg"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(-0.15,0.04,-0.05) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Dark orange")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1.05,0.55,1.05)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Left Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

--[[part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Mid gray")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(0.2,1,0.2)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Left Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0.5,-0.9,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1]]

part = Instance.new("Part")
part.Anchored = false
part.Name = "Blade"
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Mid gray")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(0.2,1,0.2)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Right Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(-0.5,-0.9,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Dark orange")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1.05,0.55,1.05)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Right Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Bright red")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1.1,0.4,1.1)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Right Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Cool yellow")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.98,1,0.98)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Left Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Cool yellow")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.98,1,0.98)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Right Arm"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,-0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("White")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1,2,1)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Left Leg"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("White")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(1,2,1)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Right Leg"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("White")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(2,2,1)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Torso"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Cool yellow")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Head"
mesh.Scale = Vector3.new(1.25,1.25,1.25)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Head"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("White")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=16952952"
mesh.Scale = Vector3.new(1,1,1)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Head"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0.3,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Black")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=16952952"
mesh.Scale = Vector3.new(0.95,0.95,0.95)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Head"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0.3,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Dark orange")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(2.05,0.55,1.05)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Torso"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,-0.8,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Bright red")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(2.1,0.3,1.1)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Torso"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,-0.8,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Dark orange")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(2.5,0.5,1.05)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Torso"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0.1,0.1,0) * CFrame.fromEulerAnglesXYZ(0,0,3.14/2/2)
weld.Parent.Transparency = 1

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("Mid gray")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.6,0.6,1.1)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Torso"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0.1,0.1,0) * CFrame.fromEulerAnglesXYZ(0,0,3.14/2/2)

part = Instance.new("Part")
part.Anchored = false
part.CanCollide = false
part.Locked = true
part.formFactor = "Symmetric"
part.TopSurface = 0
part.BottomSurface = 0
part.BrickColor = BrickColor.new("White")
part.Size = Vector3.new(1,1,1)
part.Parent = char
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.3,0.3,1.15)
mesh.Parent = part
weld = Instance.new("Weld") 
weld.Parent = char["Torso"]
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0.1,0.1,0) * CFrame.fromEulerAnglesXYZ(0,0,3.14/2/2)
weld.Parent.Transparency = 1

Gui = Instance.new("ScreenGui")
Gui.Name = "Menu"
Gui.Parent = vip.PlayerGui
script.Parent = Gui

BackgroundColorPad = Instance.new("Color3Value")
BackgroundColorPad.Value = Color3.new(0,0,0)

BorderColorPad = Instance.new("Color3Value")
BorderColorPad.Value = Color3.new(0,0,0)

Main = Instance.new("Frame")
Main.Position = UDim2.new(0,200,0,200)
Main.Size = UDim2.new(0,0,0,0)
Main.Parent = Gui

BoxA = Instance.new("TextButton")
BoxA.Position = UDim2.new(0,0,0,0)
BoxA.Size = UDim2.new(0,100,0,50)
BoxA.Text = "Suit - On"
BoxA.BackgroundTransparency = 0.8
BoxA.BorderColor3 = BorderColorPad.Value
BoxA.TextColor3 = BorderColorPad.Value
BoxA.Parent = Main
BoxAA = true -- Blah
BoxAAA = true -- EndBlah

HatOff()

function onButton1Down()
if BoxAA == true then
BoxAA = false

if BoxAAA == true then
for i,v in pairs(char:GetChildren()) do
if v.className == "Part" then
if v.Name == "HumanoidRootPart" then
v.Transparency = 1
else
v.Transparency = 0
end
end
end
HatOn()
BoxA.Text = "Suit - Off"
BoxAAA = false
BoxAA = true
return
end
if BoxAAA == false then
for i,v in pairs(char:GetChildren()) do
if v.className == "Part" then
if v.Name == "HumanoidRootPart" then
v.Transparency = 0
else
v.Transparency = 1
end
end
end
HatOff()
BoxA.Text = "Suit - On"
BoxAAA = true
BoxAA = true
return
end
end
end

BoxA.MouseButton1Down:connect(onButton1Down)

BoxB = Instance.new("TextButton")
BoxB.Position = UDim2.new(0,100,0,0)
BoxB.Size = UDim2.new(0,100,0,50)
BoxB.Text = "Blade - On"
BoxB.BackgroundTransparency = 0.8
BoxB.BorderColor3 = BorderColorPad.Value
BoxB.TextColor3 = BorderColorPad.Value
BoxB.Parent = Main
BoxBB = true -- Blah
BoxBBB = true -- EndBlah

HatOff()

function onButton1Down()
if BoxBB == true then
BoxBB = false
if BoxBBB == true then
if char:findFirstChild("Blade") ~= nil then char.Blade.Transparency = 1 end
BoxB.Text = "Blade - Off"
BoxBBB = false
BoxBB = true
return
end
if BoxBBB == false then
if char:findFirstChild("Blade") ~= nil then char.Blade.Transparency = 0 end
BoxB.Text = "Blade - On"
BoxBBB = true
BoxBB = true
return
end
end
end

BoxB.MouseButton1Down:connect(onButton1Down)
