local plr = 'LocalPlayer'
if (owner) then plr = owner else plr = game.Players[plr] end
local chr = plr.Character

local ghost_parts = Instance.new("Model",workspace)

local e = 2.7182818

local DissolvissapearPart = function(part)
	coroutine.resume(coroutine.create(function()
		while (part.Transparency < 1) do 
			part.Transparency = part.Transparency + (e*0.003)
			wait(
				0.07
			)
		end
		pcall(function() part:BreakJoints() end)
		part:Remove()
	end))	
end

local GhostPart = function(part)
	local cf = part.CFrame
	
	local p = Instance.new("Part")
	for i,v in pairs(part:GetChildren()) do
		if (v:IsA("SpecialMesh") or v:IsA("BlockMesh")) then
			v:Clone().Parent = p
		end
	end	
	p.Transparency = (e*0.1) 
	p.Locked = true
	p.CanCollide = false
	p.Anchored = true
	p.BrickColor = BrickColor.new("Institutional white")
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Name = "GhostPart"
	p.Size = part.Size
	p.Parent = ghost_parts
	p.CFrame = cf
	DissolvissapearPart(p)
end


local GhostCharacter = function(character)
	for i,v in pairs(character:GetChildren()) do
		if (v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart")) then
			GhostPart(v)
		end
	end
end

while true do wait(0.3)
	for i,v in pairs(game.Players:GetChildren()) do
		GhostCharacter(v)
	end
end