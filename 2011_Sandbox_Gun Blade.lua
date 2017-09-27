--[[_bob371's_Gun_Blade_]]--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Player = game.Players.LocalPlayer
Character = Player.Character
script.Parent = Character

--[[ * Gun Blade * ]]--

pcall(function() Character.GBlade:Remove() end)

GBlade = Instance.new("Model")
GBlade.Name = "GBlade"
GBlade.Parent = Character

--[[ * Barrel * ]]--

Barrel = Instance.new("Part")
Barrel.formFactor = "Custom"
Barrel.Locked = true
Barrel.CanCollide = false
Barrel.Anchored = false
Barrel.Size = Vector3.new(0.3,2.1,0.3)
Barrel.TopSurface = 0
Barrel.BottomSurface = 0
Barrel.Parent = GBlade
Mesh = Instance.new("SpecialMesh",Barrel)
Mesh.MeshType = "Brick"
Weld = Instance.new("Weld")
Weld.Parent = Barrel
Weld.Part0 = Character["Right Arm"]
Weld.Part1 = Barrel
Weld.C0 = CFrame.new(0,-1.9,-0.5) * CFrame.Angles(-math.pi,0,0)

--[[ * Hole * ]]--

Hole = Instance.new("Part")
Hole.formFactor = "Custom"
Hole.BrickColor = BrickColor.Black()
Hole.Locked = true
Hole.CanCollide = false
Hole.Anchored = false
Hole.Size = Vector3.new(0.2,2,0.2)
Hole.TopSurface = 0
Hole.BottomSurface = 0
Hole.Parent = GBlade
Mesh = Instance.new("SpecialMesh",Hole)
Weld = Instance.new("Weld")
Weld.Parent = Hole
Weld.Part0 = Barrel
Weld.Part1 = Hole
Weld.C0 = CFrame.new(0,0.1,0) * CFrame.Angles(0,0,0)

--[[ * Handle * ]]--

Handle = Instance.new("Part")
Handle.formFactor = "Custom"
Handle.Locked = true
Handle.CanCollide = false
Handle.Anchored = false
Handle.Size = Vector3.new(0.3,0.3,0.6)
Handle.TopSurface = 0
Handle.BottomSurface = 0
Handle.Parent = GBlade
Mesh = Instance.new("SpecialMesh",Handle)
Mesh.MeshType = "Brick"
Weld = Instance.new("Weld")
Weld.Parent = Handle
Weld.Part0 = Barrel
Weld.Part1 = Handle
Weld.C0 = CFrame.new(0,-0.9,-0.2) * CFrame.Angles(-0.15,0,0)

--[[ * Trigger * ]]--

Trigger = Instance.new("Part")
Trigger.formFactor = "Custom"
Trigger.BrickColor = BrickColor.Black()
Trigger.Locked = true
Trigger.CanCollide = false
Trigger.Anchored = false
Trigger.Size = Vector3.new(0.2,0.2,0.2)
Trigger.TopSurface = 0
Trigger.BottomSurface = 0
Trigger.Parent = GBlade
Mesh = Instance.new("SpecialMesh",Trigger)
Mesh.MeshType = "Brick"
Weld = Instance.new("Weld")
Weld.Parent = Trigger
Weld.Part0 = Barrel
Weld.Part1 = Trigger
Weld.C0 = CFrame.new(0,-0.75,-0.2) * CFrame.Angles(0.15,0,0)

--[[ * HGuard * ]]--

HGuard = Instance.new("Part")
HGuard.formFactor = "Custom"
HGuard.BrickColor = BrickColor.Black()
HGuard.Locked = true
HGuard.CanCollide = false
HGuard.Anchored = false
HGuard.Size = Vector3.new(0.2,0.6,0.2)
HGuard.TopSurface = 0
HGuard.BottomSurface = 0
HGuard.Parent = GBlade
Mesh = Instance.new("SpecialMesh",HGuard)
Mesh.MeshType = "Brick"
Weld = Instance.new("Weld")
Weld.Parent = HGuard
Weld.Part0 = Barrel
Weld.Part1 = HGuard
Weld.C0 = CFrame.new(0,0,-0.2) * CFrame.Angles(0,0,0)

--[[ * Blade * ]]--

Blade = Instance.new("Part")
Blade.formFactor = "Custom"
Blade.BrickColor = BrickColor.Black()
Blade.Locked = true
Blade.CanCollide = false
Blade.Anchored = false
Blade.Size = Vector3.new(0.2,2,0.2)
Blade.TopSurface = 0
Blade.BottomSurface = 0
Blade.Reflectance = 1
Blade.Parent = GBlade
Mesh = Instance.new("SpecialMesh",Blade)
Mesh.Scale = Vector3.new(0.05,1,0.5)
Mesh.MeshType = "Wedge"
Weldz = Instance.new("Weld")
Weldz.Parent = Blade
Weldz.Part0 = Barrel
Weldz.Part1 = Blade
Weldz.C0 = CFrame.new(0,0.05,0) * CFrame.Angles(0,0,0)
Reloader = Instance.new("Sound")
Reloader.SoundId = "http://www.roblox.com/asset/?id=2920960"
Reloader.Parent = Blade
Reloader.Volume = 1

BladePos = true -- In / false -- Out

function Touched(hit)
if BladePos == false then
if hit.Parent:findFirstChild("Humanoid") ~= nil then
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 25
end
end
end

--[[ * Arm Weld * ]]--

ArmWeld = Instance.new("Weld") 
ArmWeld.Parent = Character["Torso"]
ArmWeld.Part0 = ArmWeld.Parent
ArmWeld.Part1 = Character["Right Arm"]
ArmWeld.C0 = CFrame.new(1.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)

--[[ * Tool * ]]--

if script.Parent.Name == Player.Name then
Hopper = Instance.new("HopperBin")
Hopper.Name = "Gun Blade"
Hopper.Parent = Player.Backpack
end

Blah = true

function Clicked(Mouse)
if Blah == true then
Blah = false
if BladePos == false then 
for i = 1,13 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0.05,-0.07)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0.2,0.05,0.09)
end
for i = 1,20 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-0.2,-0.05,-0.09)
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,-0.05,0.07)
end
for i = 1,7 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0.05,-0.07)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0.2,0.05,0.09)
end
ArmWeld.C0 = CFrame.new(1.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)
Blah = true
return
end
if Mouse.Target == nil then Blah = true return end
local P = Instance.new("Part") 
local Place0 = Barrel.CFrame * CFrame.new(0,1,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local Place1 = Mouse.Hit.p 

P.formFactor = 0 

P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 

P.Name = "Laser" 

P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 

P.Parent = Character
P.BrickColor = BrickColor.Yellow()
P.Anchored = true 

P.CanCollide = false 
M = Instance.new("BlockMesh")

M.Scale = Vector3.new(0.2,0.2,1)
M.Bevel = 0.11
M.Parent = P
for i = 1,5 do
P2 = P:Clone()
P2.Size = Vector3.new(1,1,10)
P2.Parent = P
P2.CFrame = CFrame.new(Place1.x,Place1.y,Place1.z) * CFrame.fromEulerAnglesXYZ(math.random(1,100),math.random(1,100),math.random(1,100))
end
Bullet = Instance.new("Part")
Bullet.formFactor = "Symmetric"
Bullet.Anchored = true
Bullet.Shape = "Ball"
Bullet.Transparency = 1
Bullet.BrickColor = BrickColor.Black()
Bullet.Size = Vector3.new(1,1,1)
Bullet.Parent = Character
Bullet.CFrame = CFrame.new(Vector3.new(Place1.x,Place1.y,Place1.z))


FireSound = Instance.new("Sound")
FireSound.SoundId = "http://www.roblox.com/asset/?id=2760979"
FireSound.Parent = Bullet
FireSound.Volume = 1
FireSound:Play()
if Mouse.Target.Parent:findFirstChild("Humanoid") ~= nil then
Mouse.Target.Parent.Humanoid.Health = Mouse.Target.Parent.Humanoid.Health - 30
else
Mouse.Target:BreakJoints()
end
wait(0.1)
P:remove() 
Bullet:Remove()
wait()
Blah = true
end
end

function UnClicked(Mouse)
end

function onKeyDown(key)
--Blade Out
if key == "q" then
if Blah == true then
Blah = false
if BladePos == true then
BladePos = false
for i = 1,10 do wait()
Weldz.C0 = Weldz.C0 + Vector3.new(0,0.2,0)
end
Blah = true
return
elseif BladePos == false then
for i = 1,10 do wait()
Weldz.C0 = Weldz.C0 - Vector3.new(0,0.2,0)
end
BladePos = true
Blah = true
return
end
end
end
--Reload
if key == "r" then
if Blah == true then
Blah = false
for i = 1,14 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0.1,0,0)
end
wait()
Reloader:Play()
for i = 1,4 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0.1,0)
end
for i = 1,4 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,-0.1,0)
if BladePos == false then
Weldz.C0 = Weldz.C0 - Vector3.new(0,0.5,0)
end
end
BladePos = true
for i = 1,14 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-0.1,0,0)
end
Blah = true
end
end
end

function Selected(Mouse) 
	Mouse.Icon = "rbxasset://textures\\GunCursor.png"
	Mouse.KeyDown:connect(onKeyDown)
	Mouse.Button1Down:connect(function()Clicked(Mouse)end) 
	Mouse.Button1Up:connect(function()UnClicked(Mouse)end)
end 

function Deselected(Mouse)
end

Hopper.Selected:connect(Selected)
Hopper.Deselected:connect(Deselected) 

Blade.Touched:connect(Touched)