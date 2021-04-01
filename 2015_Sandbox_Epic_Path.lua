Player = game:getService("Players").LocalPlayer
Character = Player.Character

Model = Instance.new("Model",Character)

P = Instance.new("Part")
P.Anchored = true
P.Locked = true
P.CanCollide = true
P.Transparency = 1
P.formFactor = "Custom"
P.Size = Vector3.new(10,10,1)
P.TopSurface = 0
P.BottomSurface = 0
M = Instance.new("CylinderMesh",P)
M.Scale = Vector3.new(1,1,1)
M.Offset = Vector3.new(0,5,-0.5)

P2 = nil
while true do
P2 = P:Clone()
P2.Size = Vector3.new(10,10,1)
P2.Color = Color3.new(math.random(),math.random(),math.random())
P2.CFrame = CFrame.new(Character.Torso.CFrame.x,Character.Torso.CFrame.y-3.6,Character.Torso.CFrame.z) * CFrame.Angles(math.pi/2,0,0)
wait()
pcall(function()
	for i,v in pairs(Model:GetChildren()) do
		if v.Size.y > 0.4 then
			v.Size = v.Size - Vector3.new(0.005,0.1,0.005)
			v.CanCollide = false
			v.CFrame = P2.CFrame * CFrame.Angles(0,0,math.pi/8*i)
			v.Mesh.Offset = v.Mesh.Offset - Vector3.new(0.04,-0.04,0.001)
			v.Transparency = 0
		else
			v:Remove()
		end
	end
end)
P2.Parent = Model
P2.CFrame = CFrame.new(Character.Torso.CFrame.x,Character.Torso.CFrame.y-3.6,Character.Torso.CFrame.z) * CFrame.Angles(math.pi/2,0,0)
end
