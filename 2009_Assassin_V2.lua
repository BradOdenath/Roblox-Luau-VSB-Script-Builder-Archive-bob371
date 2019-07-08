--[[Assassian's_Creed_Assassian,_Created_By_bob371_&_chc4]]----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Name = "bob371"
vip = game.Players[Name]
char=  vip.Character
player = vip
Color=BrickColor.new("Grey")
Color2=BrickColor.new(Color3.new(0,0,0))
model=Instance.new("Model")
model.Name="Suit"
model.Parent=char
d=0
Debounce=true

--for i,v in pairs(char.Head:GetChildren()) do if v.className == "Decal" then v.Texture = "http://www.roblox.com/asset/?id=9801981" end end

--[[f = Instance.new("Decal")
f.Texture = "http://www.roblox.com/asset/?id=9801981"
f.Face = "Left"
f.Parent = char.Head

f = Instance.new("Decal")
f.Texture = "http://www.roblox.com/asset/?id=9801981"
f.Face = "Right"
f.Parent = char.Head]]

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
mesh.Scale = Vector3.new(1.05,0.4,1.05)
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
mesh.Scale = Vector3.new(1.05,0.4,1.05)
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

--[[Gui = Instance.new("ScreenGui")
Gui.Name = "Menu"
Gui.Parent = vip.PlayerGui

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
if v.Name == "Part" then
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
if v.Name == "Part" then
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
]]

function Add(object,delay)
coroutine.resume(coroutine.create(function() wait(delay) pcall(function() object:remove() end) end))
end

if script.Parent.className~="HopperBin" then
Sword = Instance.new("HopperBin")
Sword.Parent = game.Players[Name].Backpack
Sword.Name="Sword"
script.Parent=Sword
end

Sword=script.Parent

Arms={char.Torso["Left Shoulder"],char.Torso["Right Shoulder"]}

function hint(msg,de)
local h=Instance.new("Hint")
h.Text=tostring(msg)
h.Parent=player
Delay(tonumber(de),function() h:remove() end)
end

function makeSword()
Sword=model
wait(0.1)
Handle=Instance.new("Part")
Handle.Size=Vector3.new(1,1,1)
Handle.Parent=Sword
Handle.BrickColor=Color2
Handle.Name="Handle"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType=0
Mesh.Parent=Handle
Mesh.Scale=Vector3.new(0.4,0.75,0.4)
HenWeld=Instance.new("Weld")
HenWeld.Parent=char["Right Arm"]
HenWeld.Part1=HenWeld.Parent
HenWeld.Part0=Handle
HenWeld.C0=CFrame.new(0,-0.2,1)*CFrame.Angles(math.rad(90),math.rad(25),0)
Hy=HenWeld.C0
GripTop=Instance.new("Part")
GripTop.BrickColor=BrickColor.new(27)
GripTop.Size=Vector3.new(1,1,1)
GripTop.Parent=Sword
GripTop.Name="GripTop"
Mesh=Instance.new("BlockMesh")
Mesh.Parent=GripTop
Mesh.Scale=Vector3.new(0.47,0.15,.97)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=GripTop
Weld.C0=CFrame.new(0,-0.4,0)
Blade1=Instance.new("Part")
Blade1.BrickColor=Color
Blade1.Size=Vector3.new(1,5,1)
Blade1.Parent=Sword
Blade1.Name="Blade1"
Blade1.Reflectance=0.11
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Blade1
Mesh.Scale=Vector3.new(0.1,0.99,0.8)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Blade1
Weld.C0=CFrame.new(0,-2.69,0)
Pi=Blade1.Touched:connect(Hit)
Blade2=Instance.new("Part")
Blade2.BrickColor=Color
Blade2.Size=Vector3.new(1,1,1)
Blade2.Parent=Sword
Blade2.Name="Blade2"
Blade2.Reflectance=0.11
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Wedge"
Mesh.Parent=Blade2
Mesh.Scale=Vector3.new(0.1,0.45,0.8)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Blade2
Weld.C0=CFrame.new(0,-5.33,0)
De1=Instance.new("Part")
De1.BrickColor=Color2
De1.Size=Vector3.new(1,5,1)
De1.Parent=Sword
De1.Name="De1"
De1.Reflectance=0.05
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Brick"
Mesh.Parent=De1
Mesh.Scale=Vector3.new(0.11,0.65,0.15)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=De1
Weld.C0=CFrame.new(0,-1.75,0)
end



function Button(mouse)
for i=0,0.6,0.05 do
wait()
local p=Blade1:Clone()
p.Transparency=0.7
p.Reflectance=0
p.BrickColor=Color2
p.Anchored=true
p.CanCollide=false
p.Parent=workspace
Delay(0.35,function() p:remove() end)
w2.C0=w2.C0*CFrame.new(0,-0.1/2+i/16,.1/2)*CFrame.Angles(math.rad((-88/5)/2),0.1/2,0.05/2)
end
wait()
for i=0.95,0,-.05 do
local p=Blade1:Clone()
p.Transparency=0.7
p.Reflectance=0
p.BrickColor=Color2
p.Anchored=true
p.CanCollide=false
p.Parent=workspace
Delay(0.35,function() p:remove() end)
wait()
w2.C0=w2.C0*CFrame.new(0,0.1/2-i/26,-.1/2)*CFrame.Angles(math.rad((88/5)/2),-.1/2,-0.05/2)
end
wait()
for i=0,0.35,0.05 do
wait()
local p=Blade1:Clone()
p.Transparency=0.7
p.Reflectance=0
p.BrickColor=Color2
p.Anchored=true
p.CanCollide=false
p.Parent=workspace
Delay(0.35,function() p:remove() end)
w2.C0=w2.C0*CFrame.new(0,-0.1/2+i/16,.1/2)*CFrame.Angles(math.rad((-88/5)/2),0.1/2,0)
end
w2.C0=Wr
end

function Sm(mouse)
for i=0,0.2,0.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,-0.1/2+i/16,.15/2)*CFrame.Angles(math.rad((-88/5)/2),0.2/2,0.05/2)
end
wait(0.5)
local Blade2=Instance.new("Part")
Blade2.BrickColor=Color2
Blade2.Size=Vector3.new(1,1,1)
Blade2.Parent=Sword
Blade2.Name="Blade2"
Blade2.Reflectance=0
Blade2.Transparency=0.3
local Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Blade2
Mesh.Scale=Vector3.new(0.1,0.08,0.1)
local Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Blade2
Weld.C0=CFrame.new(0,-5.53,0)
for i=1,20 do
Mesh.Scale=Mesh.Scale+Vector3.new(0.1,0.08,0.1)
Weld.C0=Weld.C0*CFrame.new(0,-0.005,-0.025)
wait()
end
Delay(0,function()
local b=Instance.new("Part")
b.BrickColor=Color2
b.Reflectance=0
b.Transparency=1
b.Size=Vector3.new(2,2,2)
b.Shape="Ball"
b.CanCollide=false
b.TopSurface="Smooth"
b.Position=Blade2.Position
b.BottomSurface="Smooth"
b.Friction=0
local bo=Instance.new("BodyVelocity")
bo.maxForce=Vector3.new(9999,9999,9999)
bo.velocity=(mouse.Hit.p-Blade2.Position).unit*150
bo.Parent=b
local co=b.Touched:connect(function(hit) 
if hit.Parent.Name~=Name and Bo.Parent then
Hit(hit)
Bo:remove()
end
end)
b.Parent=Blade2
local Bo=b
while b.Parent do
if mouse.Target and (Bo.Position-mouse.Target.Position).magnitude<7 then
Hit(mouse.Target)
Bo.Parent=nil
else
bo.velocity=(mouse.Hit.p-Bo.Position).unit*200
end
wait()
local b=Instance.new("Part")
b.BrickColor=Color2
b.Reflectance=0
b.Transparency=0.2
b.Size=Vector3.new(2,2,2)
b.CanCollide=false
b.Anchored=true
b.TopSurface="Smooth"
b.Parent=Bo
b.CFrame=Bo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
b.BottomSurface="Smooth"
b.Touched:connect(function(hit)
if hit.Parent.Name~=Name then
Hit(hit)
end
end)
Delay(1.5,function() b:remove() end)
end
end)
wait(2.25)
Blade2:remove()
for i=0.2,0,-.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,0.1/2-i/26,-.15/2)*CFrame.Angles(math.rad((88/5)/2),-.1/2,-0.05/2)
end
w2.C0=Wr
end

function Final(mouse)
for i=0,0.2,0.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,-0.1/2+i/16,.15/2)*CFrame.Angles(math.rad((-88/5)/2),0.2/2,0.05/2)
end
wait(0.5)
for i=1,7 do
wait(0.55)
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=Color2
Laz.Reflectance=0
Laz.Transparency=0.65
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(1,1,1)
Laz.CFrame=Blade1.CFrame
Laz.Parent=workspace
local Me=Instance.new("SpecialMesh")
Me.MeshType="Sphere"
Me.Parent=Laz
Delay(0,function() 
local Laz=Laz
local Me=Me
for i=1,7,0.5 do
Me.Scale = Vector3.new(i/5,i,i/2) 
Laz.CFrame=Blade1.CFrame
wait()
end
Laz:remove()
end)
end
for i=0.6,0,-.05 do
wait(0.075)
local p=Blade1:Clone()
p.Transparency=0.5
p.Reflectance=0
p.BrickColor=Color2
p.Anchored=true
p.CanCollide=false
p.Parent=workspace
Delay(0.75,function() p:remove() end)
w2.C0=w2.C0*CFrame.new(0,0.1/2-i/26,-.15/2)*CFrame.Angles(math.rad((88/5)/2),-.1/2,-0.05/2)
end
for i=1,0,-0.1 do
game:GetService("Lighting").Ambient=Color3.new(i,i,i)
game:GetService("Lighting").Brightness=i
wait(0.05)
end
m=Instance.new("Message",workspace)
m.Text="The End."
for _,v in pairs(game.Players:children()) do
if v.Name~=Name then
Delay(0,function() Hit(v.Character.Torso) end)
wait()
end
end
wait(1)
m:remove()
for i=0,1,0.1 do
game:GetService("Lighting").Ambient=Color3.new(i,i,i)
game:GetService("Lighting").Brightness=i
wait(0.05)
end
--Play with lighting,Make a message saying 'The end.' in workspace,massacure here.--
wait()
for i=0,0.6,0.05 do
wait()
local p=Blade1:Clone()
p.Transparency=0.5
p.Reflectance=0
p.BrickColor=Color2
p.Anchored=true
p.CanCollide=false
p.Parent=workspace
Delay(0.75,function() p:remove() end)
w2.C0=w2.C0*CFrame.new(0,-0.1/2+i/16,.15/2)*CFrame.Angles(math.rad((-88/5)/2),0.2/2,0.05/2)
end
w2.C0=Wr
end



function Bl(mouse)
pcall(function() Pi:disconnect() end)
for i=0,0.4,0.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,-0.1/2+i/16,.15/2)*CFrame.Angles(math.rad((-88/5)/2),0.2/2,0.05/2)
end
wait(0.75)
for i=0.95,0,-.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,0.1/2-i/26,-.15/2)*CFrame.Angles(math.rad((88/5)/2),-.1/2,-0.05/2)
end
function Check(d)
for _,v in pairs(game.Players:children()) do
if (v.Character.Torso.Position-Tor.Position).magnitude<d then
Delay(0,function() Hit(v.Character.Torso) end)
end
end
end
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Black()
Tor.Reflectance=0
Tor.Anchored=true
Tor.Transparency=0.65
Tor.CanCollide=false
Tor.Parent=workspace
Tor.TopSurface="Weld"
Star=Tor
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(3,1.2,3) 
Tor.CFrame=CFrame.new(char.Torso.Position.x,workspace.Base.Position.y,char.Torso.Position.z)
Delay(0.1,function()
for i=1,20*5 do
wait()
Mesh.Scale=Mesh.Scale+Vector3.new(0.5,0,0.5)
Dist=Mesh.Scale.x/2
Check(Dist)
end
Tor:remove()
end)
wait()
for i=0,0.25,0.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,-0.1/2+i/16,.15/2)*CFrame.Angles(math.rad((-88/5)/2),0.2/2,0)
end
w2.C0=Wr
Pi=Blade1.Touched:connect(Hit)
end

function Button2(mouse)
pcall(function() Pi:disconnect() end)
local Tu=Blade1.Touched:connect(function(h)
if h.Parent~=nil and h.Parent.Name~=Name and h.Parent:findFirstChild("Humanoid")~=nil and h.Parent.Humanoid.Health>0 then
h.Parent.Humanoid:TakeDamage(35)
local shockRing = Instance.new("Part")
shockRing.formFactor = 2
shockRing.Size = Vector3.new(1, 0.4, 1)
shockRing.Anchored = true
shockRing.Locked = true
shockRing.CanCollide = false
shockRing.TopSurface = 0
shockRing.BrickColor=BrickColor:Black()
shockRing.BottomSurface = 0
shockRing.Transparency = 1
local decal = Instance.new("Decal")
decal.Face = 1
decal.Texture = "http://www.roblox.com/asset/?id=5971534"
decal.Parent = shockRing
local bottomDecal = decal:Clone()
bottomDecal.Face = 4
bottomDecal.Parent = shockRing
for i=1,2 do
wait(0.15)
Delay(0,function() 
local shockRng=shockRing:clone()
shockRng.Parent=char
shockRng.CFrame = char.Torso.CFrame * CFrame.Angles(math.random(),math.random(),math.random())
for i=1,16 do
wait()
shockRng.Size=Vector3.new(i,0.4,i)
shockRng.CFrame=char.Torso.CFrame * CFrame.Angles(math.random(),math.random(),math.random())
end
shockRng:remove()
end)
end
end
end)
for i=1,3 do
for i=0,0.4,0.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,-0.1/2,.1/2)*CFrame.Angles(math.rad((-88/5)/2),0.1/2,0.05/1.1)
end
wait()
for i=0.7,0,-.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,0.1/2,-.1/2)*CFrame.Angles(math.rad((88/5)/2),-.1/2,-0.05/1.1)
end
wait()
for i=0,0.4,0.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,-0.1/2,.1/2)*CFrame.Angles(math.rad((-88/5)/2),0.1/2,0.05/1.1)
end
wait()
w2.C0=Wr
end
Tu:disconnect()
Pi=Blade1.Touched:connect(Hit)
end

function Gate(mouse)
for i=0,0.2,0.05 do
wait()
local p=Blade1:Clone()
p.Transparency=0.5
p.Reflectance=0
p.BrickColor=Color2
p.Anchored=true
p.CanCollide=false
p.Parent=workspace
Delay(0.75,function() p:remove() end)
w2.C0=w2.C0*CFrame.new(0,-0.1/2+i/16,.15/2)*CFrame.Angles(math.rad((-88/5)/2),0.2/2,0.05/2)
end
wait()
local b=Instance.new("BodyPosition")
b.position=char.Torso.Position+Vector3.new(0,30,0)
b.maxForce=Vector3.new(200,999999999,200)
b.Parent=char.Torso
wait(0.75)
for i=0.6,0,-.05 do
wait(0.05)
local p=Blade1:Clone()
p.Transparency=0.5
p.Reflectance=0
p.BrickColor=Color2
p.Anchored=true
p.CanCollide=false
p.Parent=workspace
Delay(0.75,function() p:remove() end)
w2.C0=w2.C0*CFrame.new(0,0.1/2-i/26,-.15/2)*CFrame.Angles(math.rad((108/5)/2),-.1/2,-0.05/2)
end
b:remove()
function Check(d)
for _,v in pairs(game.Players:children()) do
if v.Name~=Name and (v.Character.Torso.Position-Star.Position).magnitude<d then
v.Character.Humanoid:TakeDamage(5)
v.Character.Humanoid.PlatformStand=true
v.Character.Torso.Velocity=(v.Character.Torso.Position-Star.Position).unit*120
end
end
end
wait(0.5)
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Black()
Tor.Reflectance=0
Tor.Anchored=true
Tor.Transparency=1
Tor.CanCollide=false
Tor.Parent=workspace
Tor.TopSurface="Weld"
Star=Tor
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(3,1.2,3) 
Tor.CFrame=CFrame.new(char.Torso.Position.x,workspace.Base.Position.y,char.Torso.Position.z)
Delay(0.1,function()
for i=1,40 do
wait()
Mesh.Scale=Mesh.Scale+Vector3.new(1,0,1)
Star.Transparency=i/50
Dist=Mesh.Scale.x/2
Check(Dist)
end
Tor:remove()
end)
w2.C0=Wr
end

function Rush(mouse)
if mouse.Target and game.Players:getPlayerFromCharacter(mouse.Target.Parent) then
person=mouse.Target.Parent
--person.Torso.Anchored=true
Pi:disconnect()
for i=0.2,0,-.05 do
wait(0.05)
local p=Blade1:Clone()
p.Transparency=0.3
p.Reflectance=0
p.BrickColor=Color2
p.Anchored=true
p.CanCollide=false
p.Parent=workspace
Delay(0.25,function() p:remove() end)
w2.C0=w2.C0*CFrame.new(0,0.1/2-i/26,-.15/2)*CFrame.Angles(math.rad((88/5)/2),-.1/2,-0.02/2)
end
char.Torso.CFrame=person.Torso.CFrame*CFrame.new(0,0,2)
wait()
Joi=Instance.new("Weld")
Joi.Parent=Blade1
Joi.Part1=Joi.Parent
Joi.Part0=person.Head
Joi.C0=Joi.C0*CFrame.Angles(0,math.rad(45),0)
wait(0.75)
for i=0,0.2,0.05 do
wait()
local p=Blade1:Clone()
p.Transparency=0.3
p.Reflectance=0
p.BrickColor=Color2
p.Anchored=true
p.CanCollide=false
p.Parent=workspace
Delay(0.25,function() p:remove() end)
w2.C0=w2.C0*CFrame.new(0,-0.1/2+i/16,.15/2)*CFrame.Angles(math.rad((-88/5)/2),0.2/2,0.05/2)
end
w2.C0=Wr
person:BreakJoints()
Joi:remove()
Pi=Blade1.Touched:connect(function(h) Hit(h) end)
end
end

function Tele(mouse)
local mouset=mouse.Target
local mouseh=mouse.Hit
if mouset then
local Laz=Instance.new("Part")
Laz.Anchored=false
Laz.BrickColor=BrickColor:Black()
Laz.Reflectance=0
Laz.Transparency=1
Laz.Shape="Ball"
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(1,1,1)
Laz.CFrame=char.Torso.CFrame
Laz.Parent=char.Torso
Laz.Transparency=1
w = Instance.new("Weld") 
w.Parent = Laz
w.Part0 = w.Parent 
w.Part1 = char.Torso
w.C0 = CFrame.new(0,0,0)
local Me=Instance.new("SpecialMesh")
Me.MeshType="Sphere"
Me.Scale=Vector3.new(15,15,15) 
Me.Parent=Laz
for i=1,20 do
Me.Scale=Me.Scale+Vector3.new(-0.5,-0.5,-0.5)
Laz.Transparency=Laz.Transparency-1/20
wait()
end
char.Torso.CFrame=mouseh*CFrame.new(0,5,0)
for i=1,20 do
Me.Scale=Me.Scale+Vector3.new(0.5,0.5,0.5)
Laz.Transparency=i/20
wait()
end
Laz:remove()
end
end

fire={Button2,Bl,Sm,Final,Gate,Rush,Tele}
name={"Trislash","Oblivion","Smite","The end","Hell's Gate","Rush","Teleport"}
klick={"z","x","c","m","v","b","n"}

function Kay(ke)
for _,v in pairs(klick) do
if v==ke then
return _
end
end
return false
end

f=Sword.Selected:connect(function(mouse)
pcall(function() script.Sour.Value=[[print("Hello,World!")]] end) --Nothing to see here.
if d==0 and char.Torso:findFirstChild("Right Shoulder")~=nil then
d=1
mouse.Icon = "rbxasset://textures\\GunCursor.png"
De=0
f:disconnect()
pcall(function() game["LocalBackpack"]:children()[1]:remove() end)
Debou=true
Numb=Instance.new("NumberValue")
Numb.Value=0
Numb.Parent=Sword
Numb.Changed:connect(function() 
if Debou then 
Debou=false 
wait(0.2) 
ghk:disconnect() 
if Numb.Value>1 then 
Numb.Value=0 
Button2() 
else Numb.Value=0 
Button() 
end 
ghk=mouse.Button1Down:connect(function() 
Delay(0,function()
if Debounce then
Debounce=false
Numb.Value=Numb.Value+1
wait()
Debounce=true
end
end)
end)
Debou=true 
end 
end)

Arms[2].Parent=nil
w2 = Instance.new("Weld") 
w2.Name="Right Shouldr"
w2.Parent = char.Torso
w2.Part0 = char["Right Arm"]
w2.Part1 = w2.Parent
makeSword()
---Animation Start---
for i=0,1,0.05 do
wait()
w2.C0 = CFrame.new(-1.2+(i*0.05)/10,-0.1-i*0.05,.5-i/1.3)*CFrame.Angles(math.rad(73*-i),math.rad(-i*45),math.rad(-i*20))
end
----Animation End----
Wr=w2.C0
wait()
ghk=mouse.Button1Down:connect(function() 
Delay(0,function()
if Debounce then
Debounce=false
Numb.Value=Numb.Value+1
wait()
Debounce=true
end
end)
end)
mouse.KeyDown:connect(function(key)
if Kay(tostring(key))~=false then 
hint(tostring(name[Kay(tostring(key))]).."!",2)
wait()
fire[Kay(tostring(key))](mouse)
end
end)
end
end)


local cr=Instance.new("ObjectValue")
cr.Value=player
cr.Name="creator"

function Hit(h)
if h.Parent~=nil and h.Parent.Name~=Name and h.Parent:findFirstChild("Humanoid")~=nil and h.Parent.Humanoid.Health>0 then
pcall(function() cr:clone().Parent=h.Parent.Humanoid h.Parent.Shirt:remove() h.Parent.Pants:remove() end)
for _,v in pairs(h.Parent:children()) do
if v:IsA("Part") then
wait()
b=Instance.new("BodyVelocity")
b.Parent=v
v:BreakJoints()
b.velocity=(v.Position-Vector3.new(math.random(-100,100),v.Position.y,math.random(-100,100))).unit*50
end
end
wait()
pcall(function() h.Parent.Humanoid.creator:remove() end)
for i=1,17 do
wait()
for _,v in pairs(h.Parent:children()) do
if v:IsA("Part") then
v.BrickColor=BrickColor:Black()
v:BreakJoints()
v.Reflectance=0
wait()
v.Reflectance=0.7
end
end
end
end
end
