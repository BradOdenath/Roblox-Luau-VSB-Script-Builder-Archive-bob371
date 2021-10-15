print("bob371's Ghost Admin Door 1.0")

_ASDF = {
	"I Just wanted you 2",
	"Watch Me Dissolve",
	"Sloooooooooooooow",
}

COORDINATES = Vector3.new(0,10,25)
PUBLIC = true --Change to true to make public
DEBUGGER = false
PLAYERS = game:GetService("Players")


e = 2.7182818

Admin = {
	"TheNewScripter",
	"TheMaleScripter",
	"bob371",
	"Player"
}

MIN = 0
MAX = 255

incrementer = 0
ascending = true

blah = true

door_open = false

ghost_parts = Instance.new("Model")
ghost_parts.Parent = script.Parent

--[[ TODO: Fix
function isPartAtPosition(position) --position = Vector3.new(#,#,#)
	for i,v in pairs(game.ghost_parts:GetChildren()) do
		if (v.Position == position) then
			print_debug("Part At Position")
			return true
		end
	end
	print_debug("No Part At Position")
	return false
end ]]

function AdminDoor()
	if (script.Parent:IsA("Part")) then
		print("Ghost Admin Door Loaded !")
	else
		print("Generating Script Builder Admin Door . . .")
		local admin_door = Instance.new("Part")
		admin_door.BrickColor = BrickColor.new("Persimmon")
		admin_door.Locked = true
		admin_door.Anchored = true
		admin_door.CanCollide = true
		admin_door.Size = Vector3.new(20,20,2)
		admin_door.Parent = game.Workspace
		script.Parent = admin_door
		admin_door.Position = COORDINATES
	end
end


function print_debug(print_statement)
	if (DEBUGGER) then
		print(print_statement)
	end
end

function ffColor()
	return Color3.new(incrementer,0,MAX-incrementer)
end


function ForceFieldColorChangeGhosts()
	coroutine.resume(coroutine.create(function() 
		while (door_open == true) do
			print_debug(incrementer)
			for i,v in pairs(ghost_parts:GetChildren()) do
				pcall(function() 
					v.Color = ffColor()
				end)
			end
			if (incrementer >= MAX) then
				ascending = false
				incrementer = incrementer - 15
			elseif (incrementer <= MIN) then
				ascending = true
				incrementer = incrementer + 15
			else
				if (ascending) then
					incrementer = incrementer + 15
				else
					incrementer = incrementer - 15
				end
			end
			wait()
		end
	end))
end


function DissolvissapearPart(part)
	coroutine.resume(coroutine.create(function()
		print_debug(_ASDF[2])
		while (part.Transparency < 1) do 
			part.Transparency = part.Transparency + (e*0.03)
			wait(0.07)
		end
		pcall(function() part:BreakJoints() end)
		part:Remove()
	end))	
end

function GhostPart(part)
	local cf = part.CFrame
	
	local p = Instance.new("Part")
	for i,v in pairs(part:GetChildren()) do
		if (v:IsA("SpecialMesh") or v:IsA("BlockMesh")) then
			v:Clone().Parent = p
		end
	end	
	print_debug(p)
	p.Transparency = (e*0.1) 
	p.Locked = true
	p.CanCollide = false
	p.Anchored = true
	p.Color = ffColor()
	--p.BrickColor = BrickColor.new("Institutional white")
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Name = "GhostPart"
	p.Size = part.Size
	p.Parent = ghost_parts
	p.CFrame = cf
	DissolvissapearPart(p)
end

function GhostThing(thing)
	for i,v in pairs(thing:GetChildren()) do
		if (v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart")) then
			GhostPart(v)
		end
	--[[if (v:GetChildren()) then
			GhostThing(v)
		end]]
	end
end

function GhostCharacter(character)
	if (character:FindFirstChild("Ghosted") == nil) then 
		local g = Instance.new("StringValue")
		g.Value = 'Ghosted'
		g.Name = "Ghosted"
		g.Parent = character	
	else
		return false
	end
	coroutine.resume(coroutine.create(function() 
		while (door_open) do 
			GhostThing(character)
			wait()
		end
		pcall(function() character.Ghosted:Remove() end)
		return true
	end))
end

function DissolvissapearCharacter(character)
	for i,v in pairs(character:GetChildren()) do
		if (v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart")) then
			print_debug(_ASDF[1])
			DissolvissapearPart(v)
		end
		if (v:GetChildren()) then
			DissolvissapearCharacter(v)
		end
	end
end

function OCC(character)
	local material = script.Parent.Material
	script.Parent.Material = "ForceField"
	script.Parent.CanCollide = false
	door_open = true
	ForceFieldColorChangeGhosts()
	print_debug('OPEN')
	GhostCharacter(character)
	print_debug("Success: "..character.Name)
	wait(4)
	door_open = false
	print_debug("CLOSE")
	script.Parent.Material = material
	script.Parent.CanCollide = true
	return true
end

function Touched(hit)
	if (hit.Parent == nil) then return false end
	local player = PLAYERS:GetPlayerFromCharacter(hit.Parent)
	if (hit.Parent:FindFirstChild("Humanoid") ~= nil and player) then
		if (door_open == true) then
			GhostCharacter(hit.Parent)
		else
			if (table.getn(Admin) == 0 or PUBLIC == true) then
				return OCC(hit.Parent)
			else
				for i,v in pairs(Admin) do
					if (player.Name == v) then
						return OCC(hit.Parent)
					end
				end
				print_debug("Failure: "..hit.Parent.Name)
				DissolvissapearCharacter(hit.Parent)
				print_debug(_ASDF[3])
				return false
			end
		end

	end
end

AdminDoor()

script.Parent.Touched:connect(Touched)