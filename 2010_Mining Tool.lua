who = "bob371"

Speed = 50

if script.Parent.className ~= "HopperBin" then
Tool = Instance.new("HopperBin")
Tool.Name = "Mining ["..Speed.."]"
Tool.Parent = game.Players[who].Backpack
Tool.TextureId = "http://www.roblox.com/asset/?id=35431045"
script.Parent = Tool
end

Tool = script.Parent

vip = game.Players.LocalPlayer
char = vip.Character

SPL = Instance.new("SelectionPointLasso")
SPL.Parent = game.Workspace.CurrentCamera
SPL.Humanoid = char.Humanoid
SPL.Color = BrickColor.new("Really red")
SPL.Visible = false

Block = Instance.new("Part")

function CheckBlock()
Block.Parent = game.Lighting
for i,v in pairs(game.Workspace:GetChildren()) do
if v.className == "Part" then
if v.Name == "Block" then
if v.CFrame == Block.CFrame then
v:Remove()
end
end
end
end
Block.Parent = game.Workspace
end

Clickingz = true

function Clicked(Mouse)
Mouse.Icon = "http://www.roblox.com/asset/?id=33567823"
if Mouse.Target ~= nil then
if Mouse.Target.Name == "Block" then
if Mouse.TargetSurface == Enum.NormalId.Top then
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame + Vector3.new(8,0,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame - Vector3.new(8,0,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame + Vector3.new(0,0,8)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame - Vector3.new(0,0,8)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame - Vector3.new(0,8,0)
CheckBlock()
Mouse.Target:Remove()
end

if Mouse.TargetSurface == Enum.NormalId.Left then
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame + Vector3.new(0,8,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame + Vector3.new(8,0,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame + Vector3.new(0,0,8)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame - Vector3.new(0,0,8)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame - Vector3.new(0,8,0)
CheckBlock()
Mouse.Target:Remove()
end

if Mouse.TargetSurface == Enum.NormalId.Right then
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame + Vector3.new(0,8,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame - Vector3.new(8,0,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame + Vector3.new(0,0,8)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame - Vector3.new(0,0,8)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame - Vector3.new(0,8,0)
CheckBlock()
Mouse.Target:Remove()
end

if Mouse.TargetSurface == Enum.NormalId.Front then
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame + Vector3.new(8,0,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame - Vector3.new(8,0,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame + Vector3.new(0,0,8)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame + Vector3.new(0,8,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame - Vector3.new(0,8,0)
CheckBlock()
Mouse.Target:Remove()
end

if Mouse.TargetSurface == Enum.NormalId.Back then
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame + Vector3.new(8,0,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame - Vector3.new(8,0,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame - Vector3.new(0,0,8)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame + Vector3.new(0,8,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame - Vector3.new(0,8,0)
CheckBlock()
Mouse.Target:Remove()
end

if Mouse.TargetSurface == Enum.NormalId.Bottom then
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame + Vector3.new(8,0,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame - Vector3.new(8,0,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame + Vector3.new(0,0,8)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame - Vector3.new(0,0,8)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = Mouse.Target.CFrame + Vector3.new(0,8,0)
CheckBlock()
Mouse.Target:Remove()
end

end
end
end 

function UnClicked(Mouse)
Mouse.Icon = "http://www.roblox.com/asset/?id=33567812"
end

function onKeyDown(key, Mouse)
if key == "p" then
for i,v in pairs(game.Workspace:GetChildren()) do
if v.className == "Part" then
if v.Name == "Block" then
v:Remove()
end
end
end
end
if key == "f" then
if char.Torso:findFirstChild("BodyVelocity") == nil and char.Torso:findFirstChild("BodyGyro") == nil then
d = Instance.new("BodyVelocity")
d.velocity = Vector3.new(0,Speed,0)
d.maxForce = Vector3.new(0,math.huge,0)
d.Parent = char.Torso
g = Instance.new("BodyGyro")
g.maxTorque = Vector3.new(math.huge,0,math.huge)
g.Parent = char.Torso
else
for i,v in pairs(char.Torso:GetChildren()) do
if v.className == "BodyVelocity" or v.className == "BodyGyro" then
v:Remove()
end
end
end
end
--[[if key == "z" then
Speed = Speed - 5
if char.Torso:findFirstChild("BodyVelocity") ~= nil then char.Torso.BodyVelocity.velocity = Vector3.new(0,Speed,0) end
Tool.Name = "Mining ["..Speed.."]"
end
if key == "x" then
Speed = Speed + 5
if char.Torso:findFirstChild("BodyVelocity") ~= nil then char.Torso.BodyVelocity.velocity = Vector3.new(0,Speed,0) end
Tool.Name = "Mining ["..Speed.."]"
end]]
if Mouse.Target == nil then return end
if key == "q" then
if game.Workspace:findFirstChild("Block") ~= nil then return end
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.Position = Mouse.Hit.p
end
if key == "e" then
if Mouse.Target == nil then return end
if Mouse.Target.Name == "Block" then
MT = Mouse.Target
MT.Transparency = 1
wait(2)
MT.Transparency = 0
end
end
if key == "t" then
char.Torso.CFrame = CFrame.new(Mouse.Hit.p.x,Mouse.Hit.p.y+3,Mouse.Hit.p.z)
end
if key == "r" then
if Mouse.Target == nil then return end
if Mouse.Target.Name == "Block" then
Mouse.Target:Remove()
SPL.Visible = false
end
end
if key == "u" then
if game.Players:GetPlayerFromCharacter(Mouse.Target.Parent) ~= nil then
Tool.Parent = game.Players:GetPlayerFromCharacter(Mouse.Target.Parent).Backpack
end
end
end

running = false

facez = Instance.new("Decal")
--facez.Texture = "http://www.roblox.com/asset/?id=33142252"

function Selected(Mouse)
Tool.TextureId = "http://www.roblox.com/asset/?id=35431101"
Mouse.Icon = "http://www.roblox.com/asset/?id=33567812"
Mouse.KeyDown:connect(function(key) onKeyDown(key, Mouse) end) 
Mouse.Button1Down:connect(function()Clicked(Mouse)end) 
Mouse.Button1Up:connect(function()UnClicked(Mouse)end)
running = true
while running == true do wait()
if Mouse.Target ~= nil then
if Mouse.Target.Name == "Block" then
facez.Parent = Mouse.Target
facez.Face = Mouse.TargetSurface
SPL.Visible = true
SPL.Point = Mouse.Hit.p
else
facez.Parent = nil
SPL.Visible = false
end
else
facez.Parent = nil
SPL.Visible = false
end
end 
end

function Deselected(Mouse)
Tool.TextureId = "http://www.roblox.com/asset/?id=35431045"
running = false
facez.Parent = nil
SPL.Visible = false
end

script.Parent.Selected:connect(Selected)
script.Parent.Deselected:connect(Deselected) 
