function Part(anc, sz, pa) 
	local p = Instance.new("Part")
	p.Locked = anc -- easier to move in testing
	p.formFactor = "Custom"
	p.BrickColor = BrickColor.Green()
	p.Material = "Grass"
	p.TopSurface = 0
	p.BottomSurface = 0
	p.CanCollide = true
	p.Size = sz
	p.Parent = pa
	p.Anchored = anc
	if (anc == true) then
		local m = Instance.new("BlockMesh")
		m.Name = "thang"
		m.Scale = Vector3.new(0.975,1,0.975)
		m.Parent = p
	end
	return p
end

OFFSET = 16

thing = Part(true, Vector3.new(OFFSET/2,OFFSET/2,OFFSET/2), nil)

function map()
	local chief = Instance.new("Model")
	for i = 1, OFFSET do
		for j = 1, OFFSET do
			local g = thing:Clone()
			g.Parent = chief
			g.CFrame = CFrame.new( (i * OFFSET/2) - (math.pow(OFFSET, 2)/4) , 0, (math.pow(OFFSET, 2)/4) - (j * OFFSET/2) )
		end
	end
	chief.Parent = game.Workspace
	return chief
end

function ball() 
	local b = Part(	false, 
					Vector3.new(4,4,4),
					game.Workspace
	)
	b.Reflectance = 1
	b.CFrame = CFrame.new(0,(OFFSET + b.Size.y),0)
	b.Shape = 2
	return b
end

function reflect(map, ball)
	for i,v in pairs(map:GetChildren()) do
		local c = (v.Position - ball.Position).magnitude
		local f = v.CFrame
		pcall(function()
			v.Color = Color3.new(0,255-(100/c),0)
			if ( c > OFFSET) then
				v.Size = Vector3.new(OFFSET/2, 1+(OFFSET/2*math.sin(math.pi/2*c)), OFFSET/2)
				v.CFrame = f
			else
				v.Size = Vector3.new(OFFSET/2, 1, OFFSET/2)
			end
		end)
	end
end

function main()
	local m = map()
	local b = ball()
	blah = true
	b.Touched:connect(
		function(h) 
			if h.Parent:findFirstChild("Humanoid") ~= nil then
				if blah == true then
					blah = false
					reflect(m,b)
					wait(1)
					blah = true
				end
			end
		end
	)
end

main()

