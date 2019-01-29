--Project: Build Josh a Flower lmao learn to use Roblox Studio Bro lmk how this works

print(_VERSION) --Lua Version

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



--Weld Instance (Args: 3)
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
    l.Name = "light"
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
    m.Name = "mesh"
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


------------------------------------------------------------

--Changing Shortcuts

--Why did I make this?
function Anc(p,pa)
	pcall(function()
		p.Anchored = true
		p.Parent = pa
	end)
end

function Cfr(x,y,z)
	return CFrame.new(x,y,z)
end

--CFrame.Angles
function Ang(rX,rY,rZ)
	return CFrame.Angles(rX,rY,rZ)
end

--Cframe.new * CFrame.Angles
function CfrAng(x,y,z,rX,rY,rZ)
	return Cfr(x,y,z) * Ang(rX,rY,rZ)
end

--Returns magnitude between two parts
function CfrMagnitude(P1, P2)
	return math.abs(math.sqrt(
		math.pow(P2.x-P1.x,2) +
		math.pow(P2.y-P1.y,2) +
		math.pow(P2.z-P1.z,2) ))
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
	x,y,z,	--CFrame.new(x,y,z)
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
		if p == nil then return end
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
------------------------------------------------------------

--Prebuilts

function Ball(r,p)
    local ball = Part("ball","Hot pink","Plastic",1.0*r,2.0*r,3.0*r,p)
    Mesh("SpecialMesh",1.1,1.1,1.1,ball)
    Light(ball)
    return ball
end
function Stem(r,p)
    local stem = Part("stem","Dark green","Plastic",1.0*r,2.0*r,1.0*r,p)
    Mesh("CylinderMesh",1.1,1.1,1.1,stem)
    Light(stem)
    return stem
end
function Wall(r,p)
    local wall = Part("wall","Dark green","Plastic",2.0*r,1.0*r,2.0*r,p)
    Mesh("BlockMesh",1.1,1.1,1.1,wall)
    Light(wall)
    return wall
end

function StemWallBall(ratio,parent)
    local core = Model("core",parent)
    local stemleafplot = Model("WallBallThing",core)
    local stem = Stem(ratio,stemleafplot)
    local ball = Ball(ratio,stemleafplot)
    local wall = Wall(ratio,stemleafplot)
    local walltostem = Weld(wall,stem,Cfr(0,1+r,0))
    local stemtoball = Weld(stem,ball,Cfr(0,1+r,0))
    return wall
end


function StemCylinder(ratio,parent)
    for i = 1,8 do
        local core = Part("core","Dark green", "Plastic",1,1,1,p)
        local SWB = StemWallBall(ratio,parent)
        local weld = Weld(core,SWB,CfrAng(cos(i)*ratio,0,sin(i)*ratio,cos(i),0,sin(i)) -- May need to rethink this
        SWB.Parent:findFirstChild("ball").Touched:connect(pcall(function(hit)
            bp = Instance.new("BodyPostion")
            bp.Parent = hit
            while bp ~= nil do
                bp.Positon = SWB.Position
                destroyAllHumans() --TODO: This andchange concept maybe
                wait()
            end
        end))
    end
    return core
end

function StemBuilder(parent)
    local root = Part("plantrootpart","Black","Plastic",1,1,1)
    local gTemp = root
    for i = 1,50 do
        local g = StemCylinder(i/47.7,parent)
        Weld(gTemp,g,Cfr(0,2+(i/47.7),0))
    end
end

rootmodel = Model("rootM",game.Workspace)
std_plant_model_test = StemBuilder(rootmodel) --mep
