dp = [[dataPosition = Vector3.new(1572,-277.9,-1808)]]

print(dp)
print('partData = {')
for i,v in pairs(workspace.Model:GetChildren()) do
	if v:IsA("Part") then
		print(
			'{' 
				..'name = "'..v.Name..'",'
				..'transparency = "'..tostring(v.Transparency)..'",'
				..'canCollide = "'..tostring(v.CanCollide)..'",'
				..'size = Vector3.new('..tostring(v.Size)..'),'
				..'brickColor = BrickColor.new("'..tostring(v.BrickColor)..'"),'
				..'cframe = CFrame.fromMatrix('
					..'Vector3.new('
						..'dataPosition.X + '..tostring(v.Position.X)..','
						..'dataPosition.Y + '..tostring(v.Position.Y)..','
						..'dataPosition.Z + '..tostring(v.Position.Z)..''
					..'),'
					..'Vector3.new('
					..tostring(v.CFrame.XVector)
					..'),'
					..'Vector3.new('
					..tostring(v.CFrame.YVector)
					..'),'
					..'Vector3.new('
					..tostring(v.CFrame.ZVector)
					..')'
				..')'
		)
		if (v:FindFirstChild("Decal")) then
			print(', decalTexture = "'..tostring(v:FindFirstChild("Decal").Texture)..'"')
			print(', decalFace = '..tostring(v:FindFirstChild("Decal").Face)..'')
		else
			print(', decalFace = "Top", decalTexture = ""')
		end
		if (v:FindFirstChildWhichIsA("CylinderMesh")) then
			print(',cylinderMeshScale = Vector3.new('..tostring(v:FindFirstChildWhichIsA("CylinderMesh").Scale)..')')
			print(',cylinderMeshOffset = Vector3.new('..tostring(v:FindFirstChildWhichIsA("CylinderMesh").Offset)..')')
		else
			print(',cylinderMeshScale = Vector3.new(0,0,0)')
			print(',cylinderMeshOffset = Vector3.new(0,0,0)')
		end
		if (v:FindFirstChildWhichIsA("BlockMesh")) then
			print(',blockMeshScale = Vector3.new('..tostring(v:FindFirstChildWhichIsA("BlockMesh").Scale)..')')
			print(',blockMeshOffset = Vector3.new('..tostring(v:FindFirstChildWhichIsA("BlockMesh").Offset)..')')
		else
			print(',blockMeshScale = Vector3.new(0,0,0)')
			print(',blockMeshOffset = Vector3.new(0,0,0)')
		end
		if (v:FindFirstChildWhichIsA("SpecialMesh")) then
			print(',specialMeshScale = Vector3.new('..tostring(v:FindFirstChildWhichIsA("SpecialMesh").Scale)..'), specialMeshType = '..tostring(v:FindFirstChildWhichIsA("SpecialMesh").MeshType))
				
		else
			print(',specialMeshScale = Vector3.new(0,0,0), specialMeshType = "Head"')
		end
		print('},')
	end
end
print('}')
