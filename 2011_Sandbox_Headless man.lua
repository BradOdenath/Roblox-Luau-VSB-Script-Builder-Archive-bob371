Player = game.Players.LocalPlayer
Character = Player.Character

game.Workspace.CurrentCamera.CameraSubject = Character.Torso
game.Workspace.CurrentCamera.CameraType = "Follow"

--[[ * Neck Weld * ]]--

Character.Head.Size = Character.Torso.Size
Neck = Instance.new("Weld") 
Neck.Parent = Character["Torso"]
Neck.Part0 = Neck.Parent
Neck.Part1 = Character["Head"]
Neck.C0 = CFrame.new(0,100,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
Character.Head.Transparency = 1
pcall(function() Character.Head.face:Remove() end)
pcall(function() Character.Head.Mesh.Scale = Vector3.new(0,0,0) end)

function Dead()
Character.Parent = game:getService("Lighting")
wait()
Character.Parent = game:getService("Workspace")
Character:MakeJoints()
Character.Head.Size = Character.Torso.Size
Neck = Instance.new("Weld") 
Neck.Parent = Character["Torso"]
Neck.Part0 = Neck.Parent
Neck.Part1 = Character["Head"]
Neck.C0 = CFrame.new(0,100,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
Character.Head.Transparency = 1
pcall(function() Character.Head.face:Remove() end)
pcall(function() Character.Head.Mesh.Scale = Vector3.new(0,0,0) end)
pcall(function() Character.Head.Mesh.Scale = Vector3.new(0,0,0) end)
end

Character.Humanoid.Died:connect(Dead)

while true do wait()
for i,v in pairs(Character:GetChildren()) do
if v:IsA("Hat") then v.Parent = game.Workspace end
Character.Head.Transparency = 1
pcall(function() Character.Head.Mesh.Scale = Vector3.new(0,0,0) end)
end
end