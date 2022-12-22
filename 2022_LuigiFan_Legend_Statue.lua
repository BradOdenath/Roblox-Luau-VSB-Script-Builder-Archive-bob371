dataPosition = Vector3.new(0,0,0)
partData = {
	{name = "Part",shape = Enum.PartType.Block,reflectance = 0,transparency = 0,canCollide = true,size = Vector3.new(1, 1, 1),brickColor = BrickColor.new("Medium stone grey"),cframe = CFrame.fromMatrix(Vector3.new(dataPosition.X + -104.269775390625,dataPosition.Y + 8.257060050964355,dataPosition.Z + 58.77425003051758),Vector3.new(1, 0, 0),Vector3.new(0, 1, 0),Vector3.new(0, 0, 1))
		, decalFace = "Top", decalTexture = ""
		,cylinderMeshScale = Vector3.new(0,0,0),cylinderMeshOffset = Vector3.new(0,0,0)
		,blockMeshScale = Vector3.new(0,0,0),blockMeshOffset = Vector3.new(0,0,0)
		,specialMeshScale = Vector3.new(0.4000000059604645, 0.4000000059604645, 0.4000000059604645), specialMeshType = Enum.MeshType.FileMesh, specialMeshId = "http://www.roblox.com/asset/?id=2264333"
	},
	{name = "Part",shape = Enum.PartType.Block,reflectance = 0,transparency = 0,canCollide = true,size = Vector3.new(1, 1, 1),brickColor = BrickColor.new("Medium stone grey"),cframe = CFrame.fromMatrix(Vector3.new(dataPosition.X + -104.269775390625,dataPosition.Y + 4.257059097290039,dataPosition.Z + 58.77425003051758),Vector3.new(1, 0, 0),Vector3.new(0, 1, 0),Vector3.new(0, 0, 1))
		, decalFace = "Top", decalTexture = ""
		,cylinderMeshScale = Vector3.new(0,0,0),cylinderMeshOffset = Vector3.new(0,0,0)
		,blockMeshScale = Vector3.new(0,0,0),blockMeshOffset = Vector3.new(0,0,0)
		,specialMeshScale = Vector3.new(1, 1, 1), specialMeshType = Enum.MeshType.FileMesh, specialMeshId = "http://www.roblox.com/asset/?id=2798691"
	},
}

part = function(name, shape, reflectance, transparency, canCollide, size, brickColor, cframe, parent, 
	decalFace, decalTexture, 
	cylinderMeshScale, cylinderMeshOffset, 
	blockMeshScale, blockMeshOffset, 
	specialMeshScale, specialMeshType, specialMeshId)
	local p = Instance.new("Part")
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
		part(v.name, v.shape, v.reflectance, v.transparency, v.canCollide, v.size, v.brickColor, v.cframe, model, v.decalFace, v.decalTexture, v.cylinderMeshScale, v.cylinderMeshOffset, v.blockMeshScale, v.blockMeshOffset, v.specialMeshScale, v.specialMeshType, v.specialMeshId)
	end
	--[[
	while true do wait()
		for i,v in pairs(model:GetChildren()) do
			if v.Name == "DiscoFloor" then
				pcall(function() 
					v.Color = Color3.fromRGB(math.random(1,255),math.random(1,255),math.random(1,255))
				end)
			end
		end
	end
	]]
end

main()
