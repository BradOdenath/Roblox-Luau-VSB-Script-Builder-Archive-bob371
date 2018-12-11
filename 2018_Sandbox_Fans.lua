--[[_bob371's_Fire_Fans_]]--

debugStance = true

print(_VERSION)
T = true
F = false

--[[ Notes:
	1) CFrame.Angles.x/y/z is not real.  Use CFrame:toAxisAngles() to get a Vector3 of radians to access.
	2) I'm doing too much with this magnitude finding.  CFrame:lerp should be what I'm doing.
	3) Lua says arrays start at 1.  Thanks though, lmao
	4) I went full abstract on this to make it so you can change toys with a gui and animations.
	5) The CFrame:lerp line has a comment that has no context if you don't know what it means.
]]

--OP List
op = {"bob371", "Visualist"}

--Toy List
toys = { -- {Name, Active?}
		{"Fans",	true	}, 	--Current Boi to work on
		{"Staff",	false	}, 
		{"Poi",		false	}, 
		{"Puppy",	false	},
		{"Spit",	false	},
		{"Hoop",	false	}
	}

--References
Player = game.Players.LocalPlayer
Character = Player.Character
Torso = Character.Torso
Lighting = game.Lighting

--Move it Move it
script.Name = "_asdf"
script.Parent = Character

--Generate a base for coding alone?
base = false --Change this value.

--Want a gui on startup?
autoRun = true

--Offsets for standard things
offset = {
		{512, 512, 512},	--1	:Base.CFrame
		{0, 0, 0}, 			--2	:RightHandle.CFrame
		{0, 0, 0},			--3	:LeftHandle.CFrame
		{0, 0, 0},			--4	:LeftToyMount
		{0, 0, 0},			--5	:RightToyMount 
		{0, 0, 0}			--6	:BackMount
	}

------------------------------------------------------------

--Part Instance (Args: 7)
function Part(	
	na,	--p.Name		:String
	co,	--p.Color		:String
	ma,	--p.Material	:MaterialType
	sx,	--p.Size.x		:Decimal
	sy,	--p.Size.y		:Decimal
	sz,	--p.Size.z		:Decimal
	pa	--p.Parent 		:Object
	)
	local p = Instance.new("Part")
	p.Anchored = false --false by default, but doesn't hurt. 
	p.Locked = true
	p.formFactor = "Custom"
	p.TopSurface = 0
	p.BottomSurface = 0
	p.CanCollide = false
	p.BrickColor = BrickColor.new(co)
	p.Material = ma
	p.Name = na
	p.Size = Vector3.new(sx,sy,sz)
	p.Parent = pa
	return p
end

function Weld(p0,p1,cf)
	local w = Instance.new("Weld")
	w.Parent = p1
	w.Part0 = p0
	w.Part1 = p1
	w.C0 = cf
	return w
end

--Light Instance (Args: 1)
function Light(
	pa	--l.Parent	:Object
	)
	local l = Instance.new("PointLight")
	l.Range = 16
	l.Parent = pa
	return l
end

--Mesh Instance (Args: 5)
function Mesh(
	mi, --m.Object	:Object<Mesh>
	sx, --m.Scale.x	:Decimal
	sy, --m.Scale.y	:Decimal
	sz, --m.Scale.z	:Decimal
	pa	--m.Parent	:Object
	)
	local m = Instance.new(mi)
	m.Scale = Vector3.new(sx, sy, sz)
	m.Parent = pa
	return m
end

--Model Instance (Args: 2)
function Model(
	na,	--m.Name	:String 
	pa	--m.Parent	:Object
	)
	local m = Instance.new("Model")
	m.Name = na
	m.Parent = pa
	return m
end

function Fire(
	he,	--f.Heat	:Integer
	si,	--f.Size	:Integer
	pa	--f.Parent	:Object
	)
	local f = Instance.new("Fire")
	f.Heat = he
	f.Size = si
	f.Parent = pa
	return f
end

------------------------------------------------------------

--Changing Shortcuts

function Anc(p,pa)
	pcall(function()
		p.Anchored = true
		p.Parent = pa
	end)
end

function Pos(x,y,z)
	return CFrame.new(x,y,z)
end

function Cfr(x,y,z)
	return CFrame.new(x,y,z)
end

function Ang(rX,rY,rZ)
	return CFrame.Angles(rX,rY,rZ)
end

function CfrAng(x,y,z,rX,rY,rZ)
	return Cfr(x,y,z) * Ang(rX,rY,rZ)
end

function CfrMagnitude(P1, P2)
	return (
		math.abs(
			math.sqrt(
				math.pow(P2.x-P1.x,2) +
				math.pow(P2.y-P1.y,2) +
				math.pow(P2.z-P1.z,2)
			)
		)
end

function AngMagnitude(A1, A2)
	local xMag, yMag, zMag
	
	local Ang1 = A1:toAxisAngles()
	local Ang2 = A2:toAxisAngles()
	
	xMag = math.abs(math.sqrt(math.pow(Ang2.rX - Ang1.rX,2)))
	yMag = math.abs(math.sqrt(math.pow(Ang2.rY - Ang1.rY,2)))
	zMag = math.abs(math.sqrt(math.pow(Ang2.rZ - Ang1.rZ,2)))
	
	return {xMag, yMag, zMag}
end

--Animation Function.  Point A to Point B
function ChangeCFrameTo(
	p,		--Object<Part>
	x,y,z	--CFrame.new(x,y,z)
	xEuler, --CFrame.Angles.x
	yEuler, --CFrame.Angles.y
	zEuler	--CFrame.Angles.z
	)
	Pos1 = p.CFrame
	Pos2 = Cfr(x, y, z) * Ang(xEuler, yEuler, zEuler)
		
	--TOOD: animation mathematics
	print("<animation>")
	for i = 0, 1, 0.1 do
		p.CFrame = Pos1:lerp(Pos2, i) --This should work in theory 
		Trail(p)
		wait()
	end
	print("</animation>")
	
	--Failure Checking
	if p.CFrame == Pos2 then 
		print("Animation Success!")
		p.CFrame = Pos2
	else
		print("Animation Failure!")
		print("Start: " ..Pos1)
		print("/Start: " ..Pos2)
		p.CFrame = Pos1
		return false
	end
	return true
end

function Trail(p)
	coroutine.resume(coroutine.create(function()
		if p == nil return end
		local shadow = Part(
			"_TShadow",
			"Really black",
			"Plastic",
			p.Size.x,
			p.Size.y,
			p.Size.z,
			nil
		)
		shadow.Anchored = true
	end))
end

--TODO: Build Gui Building functions

function PlrGui(plr)
{
	--TODO: build the gui with functions then return it.
	
}

------------------------------------------------------------

--GUI MOTHER FUCKER

--TODO: Build a fucking GUI for carroselling the toys.

------------------------------------------------------------

--Framework

ToyChest = Model("Toy Chest", nil)

for i,v in pairs(toys) do
	local m = Model(v[1], ToyChest)
	v.insert(m)
	print("Toy: "..v[1].." | Active: "..v[2].." | "..m.Name)
end

function Toy(ref)
	return toys[ref][3] --Always 3.
end

------------------------------------------------------------

--Build the toys.
function Fans(p)
	local weldAccess = {
			{},	--Handle Weld :D	:[1][1]
			{},	--FanArm Welds		:[2][1..	]
			{},	
			{},
		}
	local yuge = .13 
	--Fan Handle TODO: Modify this to be unversal for all players :)
	local _fans = Model("Fans", Character)
	local h = Part("Handle","Really black","Metal",
					yuge,yuge,yuge,_fans)
	local hw = Weld(Torso,h,CfrAng(0,-1.5,0,math.pi/2,0,0))
	weldAccess[1].insert(hw)
	--Fan Body (Note: All Arms Weld to the Handle (h))
	for i = 1, 5 do
		local faA = Part("FA_A","Really black","Metal",
						yuge,(13.0*yuge),yuge,_fans)
		local w = Weld(h,faA,CfrAng(0,1,0,0,0,0))
	end
	return weldAccess --Get that weld for animations boi
end

function DebugStance()
	if (debugStance) then
		Weld(Torso,['Right Arm'],CfrAng(0,.5,2,0,math.pi/2,math.pi/2)
		Weld(Torso,['Left Arm'],CfrAng(0,.5,-2,0,math.pi/2,-math.pi/2)
	end
end

function Run()
	DebugStance()
	Fan(plr)
end

Run()
