Player = owner or game.Players.LocalPlayer
Character = Player.Character

--[[ * Neck Weld * ]]--

function NW()
	Character.Head.Size = Character.Torso.Size
	Neck = Instance.new("Weld") 
	Neck.Parent = Character["Torso"]
	Neck.Part0 = Neck.Parent
	Neck.Part1 = Character["Head"]
	Neck.C0 = CFrame.new(0,0.25,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
	Character.Head.Transparency = 1
	Character.Head.CastShadow = false
	pcall(function() Character.Head.face:Remove() end)
	pcall(function() Character.Head.Mesh.Scale = Vector3.new(0,0,0) end)
end

function main()
	game.Workspace.CurrentCamera.CameraSubject = Character.Torso
	game.Workspace.CurrentCamera.CameraType = "Follow"
	NW()
	Character.Humanoid.Died:connect(NW)
	while true do wait()
		for i,v in pairs(Character:GetChildren()) do
			if v:IsA("Hat") then v.Parent = game.Workspace end
			Character.Head.Transparency = 1
			pcall(function() Character.Head.Mesh.Scale = Vector3.new(0,0,0) end)
		end
	end
end

main()