dp = [[dataPosition = Vector3.new(20,10,0)]]

print(dp)
print('partData = {')
for i,v in pairs(workspace.Model:GetChildren()) do
	if v:IsA("Part") then
		print(
			'{' 
				..'name = "'..v.Name..'",'
				..'size = Vector3.new('..tostring(v.Size)..'),'
				..'brickColor = BrickColor.new("'..tostring(v.BrickColor)..'"),'
				..'cframe = CFrame.new('
					..'dataPosition.X + '..tostring(v.Position.X)..','
					..'dataPosition.Y + '..tostring(v.Position.Y)..','
					..'dataPosition.Z + '..tostring(v.Position.Z)..','
				..'),'
				..'decalTexture = "'..tostring(v:FindFirstChild("Decal").Texture)..'",'
			..'},'
		)
	end
end
print('}')
