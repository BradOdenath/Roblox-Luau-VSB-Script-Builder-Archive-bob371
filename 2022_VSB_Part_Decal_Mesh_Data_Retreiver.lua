dp = [[dataPosition = Vector3.new(0,0,0)]]
runcode = [[


part = function(className, name, shape, reflectance, transparency, canCollide, size, brickColor, cframe, parent, 
	decalFace, decalTexture, 
	cylinderMeshScale, cylinderMeshOffset, 
	blockMeshScale, blockMeshOffset, 
	specialMeshScale, specialMeshType, specialMeshId)
	local p = Instance.new(className)
	p.Anchored = true
	p.Locked = true
	p.Size = size
	p.Shape = shape
	p.CanCollide = canCollide
	p.Transparency = transparency
	p.Reflectance = reflectance
	p.BrickColor = brickColor
	p.Name = name
	p.CFrame = cframe
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = parent
	
	if (decalTexture ~= "") then
		local d = Instance.new("Decal",p)
		d.Face = decalFace
		d.Texture = decalTexture
	end
	
	if (cylinderMeshScale ~= Vector3.new(0,0,0)) then
		local cm = Instance.new("CylinderMesh",p)
		cm.Scale = cylinderMeshScale
		cm.Offset = cylinderMeshOffset
	end
	
	if (blockMeshScale ~= Vector3.new(0,0,0)) then
		local bm = Instance.new("BlockMesh",p)
		bm.Scale = blockMeshScale
		bm.Offset = blockMeshOffset
	end
	
	if (specialMeshScale ~= Vector3.new(0,0,0)) then
		local sm = Instance.new("SpecialMesh",p)
		sm.Scale = specialMeshScale
		sm.MeshType = specialMeshType
		sm.MeshId = specialMeshId
	end
	
	
	--if (p.Name == "DiscoFloor") then
	local l = Instance.new("PointLight",p)
	l.Brightness = 0.2/27
	l.Range = 666
	--end
	
	
	return p
end

main = function()
	local model = Instance.new("Model",workspace)
	for i,v in pairs(partData) do
		part(v.className, v.name, v.shape, v.reflectance, v.transparency, v.canCollide, v.size, v.brickColor, v.cframe, model, v.decalFace, v.decalTexture, v.cylinderMeshScale, v.cylinderMeshOffset, v.blockMeshScale, v.blockMeshOffset, v.specialMeshScale, v.specialMeshType, v.specialMeshId)
	end
end

main()
]]

main = function()
	print(dp)
	print('partData = {')
	for i,v in pairs(workspace.Model:GetDescendants()) do
		if (v:IsA("Part") or v:IsA("TrussPart")) then
			print(
				'{' 
					..'className = "'..v.ClassName..'",'
					..'name = "'..v.Name..'",'
					..'shape = '..tostring(v.Shape)..','
					..'reflectance = '..tostring(v.Reflectance)..','
					..'transparency = '..tostring(v.Transparency)..','
					..'canCollide = '..tostring(v.CanCollide)..','
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
				print(', decalTexture = "'..tostring(v:FindFirstChild("Decal").Texture)..'", decalFace = '..tostring(v:FindFirstChild("Decal").Face)..'')
			else
				print(', decalFace = "Top", decalTexture = ""')
			end
			if (v:FindFirstChildWhichIsA("CylinderMesh")) then
				print(',cylinderMeshScale = Vector3.new('..tostring(v:FindFirstChildWhichIsA("CylinderMesh").Scale)..'),cylinderMeshOffset = Vector3.new('..tostring(v:FindFirstChildWhichIsA("CylinderMesh").Offset)..')')
			else
				print(',cylinderMeshScale = Vector3.new(0,0,0),cylinderMeshOffset = Vector3.new(0,0,0)')
			end
			if (v:FindFirstChildWhichIsA("BlockMesh")) then
				print(',blockMeshScale = Vector3.new('..tostring(v:FindFirstChildWhichIsA("BlockMesh").Scale)..'),blockMeshOffset = Vector3.new('..tostring(v:FindFirstChildWhichIsA("BlockMesh").Offset)..')')
			else
				print(',blockMeshScale = Vector3.new(0,0,0),blockMeshOffset = Vector3.new(0,0,0)')
			end
			if (v:FindFirstChildWhichIsA("SpecialMesh")) then
				print(',specialMeshScale = Vector3.new('..tostring(v:FindFirstChildWhichIsA("SpecialMesh").Scale)..'), specialMeshType = '..tostring(v:FindFirstChildWhichIsA("SpecialMesh").MeshType)..', specialMeshId = "'..tostring(v:FindFirstChildWhichIsA("SpecialMesh").MeshId)..'"')

			else
				print(',specialMeshScale = Vector3.new(0,0,0), specialMeshType = "Head", specialMeshId = ""')
			end
			print('},')
		end
	end
	print('}')
	print(runcode)
end

main()
