if script.Parent.className ~= "Model" then
M = Instance.new("Model")
M.Name = "Sling Shot"
M.Parent = game.Workspace
script.Parent = M
H = Instance.new("Humanoid")
H.Parent = M
N = Instance.new("BrickColorValue")
N.Name = "No"
N.Parent = M
N.Value = BrickColor.new("Really red")
Y = Instance.new("BrickColorValue")
Y.Name = "Yes"
Y.Parent = M
Y.Value = BrickColor.new("Lime green")
P1 = Instance.new("Part")
P1.formFactor = "Symmetric"
P1.Anchored = true
P1.Locked = true
P1.Shape = "Ball"
P1.Name = "Part1"
P1.Size = Vector3.new(1,1,1)
P1.TopSurface = 0
P1.BottomSurface = 0
P1.Parent = M
P1.CFrame = CFrame.new(-3.5,3,-8.5)
P2 = Instance.new("Part")
P2.formFactor = "Symmetric"
P2.Anchored = true
P2.Locked = true
P2.Shape = "Ball"
P2.Name = "Part2"
P2.Size = Vector3.new(1,1,1)
P2.TopSurface = 0
P2.BottomSurface = 0
P2.Parent = M
P2.CFrame = CFrame.new(3.5,3,-8.5)
H = Instance.new("Handles")
--[[H.Right = false
H.Top = false
H.Back = true
H.Left = false
H.Bottom = false
H.Front = false]]
H.Faces = Faces.new(false,false,true,false,false,false)
H.Name = "Handles"
H.Visible = true
H.Parent = M
SB = Instance.new("SelectionBox")
SB.Parent = M
SPL1 = Instance.new("SelectionPartLasso")
SPL1.Name = "SPL1"
SPL1.Parent = M
SPL2 = Instance.new("SelectionPartLasso")
SPL2.Name = "SPL2"
SPL2.Parent = M
SPL3 = Instance.new("SelectionPointLasso")
SPL3.Parent = M
Seat = Instance.new("Seat")
Seat.Anchored = false
Seat.CanCollide = false
Seat.Name = "Torso"
Seat.Locked = true
Seat.formFactor = "Symmetric"
Seat.Size = Vector3.new(4,1,4)
Seat.TopSurface = 0
Seat.BottomSurface = 0
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Parent = Seat
BodyPosition = Instance.new("BodyPosition")
BodyPosition.position = Vector3.new(0,3,-5)
--BodyPosition.maxForce = Vector3.new(1e+005,1e+005,1e+005)
BodyPosition.maxForce = Vector3.new(math.huge,math.huge,math.huge)
BodyPosition.P = 9e+004
BodyPosition.D = 1.25e+003
BodyPosition.Parent = Seat
BodyGyro = Instance.new("BodyGyro")
BodyGyro.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
BodyGyro.Parent = Seat
Seat.Parent = M
Seat.CFrame = CFrame.new(0,3,-5)
end

script.Parent.SelectionBox.Adornee = script.Parent.Torso
script.Parent.SelectionPointLasso.Humanoid = script.Parent.Humanoid
script.Parent.Handles.Adornee = script.Parent.Torso
script.Parent.SPL1.Humanoid = script.Parent.Humanoid
script.Parent.SPL2.Humanoid = script.Parent.Humanoid
script.Parent.SPL1.Part = script.Parent.Part1
script.Parent.SPL2.Part = script.Parent.Part2

Blah = true

function Yes()
script.Parent.SPL1.Color = script.Parent.Yes.Value
script.Parent.SPL2.Color = script.Parent.Yes.Value
script.Parent.SelectionBox.Color = script.Parent.Yes.Value
script.Parent.SelectionPointLasso.Color = script.Parent.Yes.Value
script.Parent.Handles.Color = script.Parent.Yes.Value
end

function No()
script.Parent.SPL1.Color = script.Parent.No.Value
script.Parent.SPL2.Color = script.Parent.No.Value
script.Parent.SelectionBox.Color = script.Parent.No.Value
script.Parent.SelectionPointLasso.Color = script.Parent.No.Value
script.Parent.Handles.Color = script.Parent.No.Value
end

function Stats()
for i = 1,100 do
tag = Instance.new("ObjectValue") 
tag.Name = "creator" 
tag.Value = game.Players.bob371 
tag.Parent = hit.Parent.Humanoid 
end
end

Yes()

function Touched(hit)
if Blah == true and hit.Parent:findFirstChild("Humanoid") ~= nil then
Blah = false
No()
--Stats()
--[[for i = 1,100 do
tag = Instance.new("ObjectValue") 
tag.Name = "creator" 
tag.Value = game.Players.bob371 
tag.Parent = hit.Parent.Humanoid 
end]]
BodyPosition.maxForce = Vector3.new(1e+005,1e+005,1e+005)
script.Parent.Torso.BodyPosition.position = Vector3.new(0,20,-5)
wait(3)
script.Parent.Torso.BodyPosition.position = Vector3.new(0,20,5000)
while script.Parent.Torso.Position.z < 90 do wait() end
script.Parent.Torso.BodyPosition.position = Vector3.new(0,20,-150)
while script.Parent.Torso.Position.z > 50 do wait() end
hit.Parent.Humanoid.Sit = false
hit.Parent.Humanoid.PlatformStand = true
while script.Parent.Torso.Position.z > 90 do wait() end
print(hit.Parent.Name.." Was Shot Off Of bob371's Slingshot XD")
--script.Parent.Torso:BreakJoints()
--for i = 1,100 do hit.Parent:BreakJoints() end
script.Parent.Torso.BodyPosition.position = Vector3.new(0,20,-5)
hit.Parent.Humanoid.PlatformStand = false
wait(5)
BodyPosition.maxForce = Vector3.new(math.huge,math.huge,math.huge)
wait(5)
BodyPosition.maxForce = Vector3.new(1e+005,1e+005,1e+005)
wait(1)
script.Parent.Torso.BodyPosition.position = Vector3.new(0,6,-5)
--script.Parent.Torso:BreakJoints()
wait(0.5)
script.Parent.Torso.BodyPosition.position = Vector3.new(0,3,-5)
Yes()
Blah = true
end
end

script.Parent.Torso.Touched:connect(Touched)
