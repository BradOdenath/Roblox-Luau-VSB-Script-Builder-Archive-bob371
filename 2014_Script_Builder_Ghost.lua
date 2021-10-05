Player = owner or game:getService("Players").bob371
Character = Player.Character

Model = Instance.new("Model",Character)
Model.Name = Character.Name

Human = Instance.new("Humanoid",Model)
Human.MaxHealth = 0

function gpart(part)
	local p = Instance.new("Part")
	p.CanCollide = false
	p.Locked = true
	p.Anchored = true
	p.Massless = true
	p.CastShadow = false
	p.Size = part.Size
	local pc = part:GetChildren()
	if pc then
		for i,v in pairs(pc) do
			if v:IsA("SpecialMesh") or v:IsA("BlockMesh") then
				v:Clone().Parent = p
			end
		end
	end
	p.Parent = Model
	p.CFrame = part.CFrame
	return p
end

while true do wait(0.1)
	for i,v in pairs(Character:GetChildren()) do
		if v:IsA("Part") then
			gpart(v)
		end
	end

	for i,v in pairs(Model:GetChildren()) do
		if v:IsA("Part") then
			if v.Transparency < 1 then
				v.Transparency = v.Transparency + 0.1
			else
				v:Remove()
			end
		end
	end

end