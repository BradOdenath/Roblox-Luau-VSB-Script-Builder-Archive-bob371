--Epic Path
Player = 'LocalPlayer'
if owner then Player = owner else 
Player = game.Players[Player] end
Character = Player.Character

Model = Instance.new("Model",Character)

P = Instance.new("Part")
P.Anchored = true
P.Locked = true
P.CanCollide = true
P.formFactor = "Custom"
P.Size = Vector3.new(10,0.5,10)
P.TopSurface = 0
P.BottomSurface = 0
M = Instance.new("CylinderMesh",P)
pcall(function() if M.Bevel then M.Bevel = 0.1 end end)

while true do wait()
P2 = P:Clone()
P2.Color = Color3.new(math.random(),math.random(),math.random())
P2.Parent = Model
P2.CFrame = Character.HumanoidRootPart.CFrame - Vector3.new(0,3.2,0)
for i,v in pairs(Model:GetChildren()) do
if v:IsA("Part") then
if v.Mesh.Scale.x > 0.01 then
v.Mesh.Scale = v.Mesh.Scale + Vector3.new(-0.05,0.05,-0.05)
--v.Mesh.Offset = v.Mesh.Offset + Vector3.new(0,0.02,0)
else
v:Remove()
end
end
end
end
