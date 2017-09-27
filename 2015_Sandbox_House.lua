--[[

	Project: Sandbox Floating House
	
	Date Modified: 9/26/2017 @ 23:18
	
	Self made project for the purpose of teaching myself
	more effecient programming concepts while maintaining
	a sense of inspiration and reducing uneccesary repetition.

]]

------------------------------------------------------------

-- Default Information

Player = game.Players.bob371

op = {"bob371", "Alfederate", "DoogleFox", 
		"TheNewScripter", "TheMaleScripter", "oni0n"}

location = {-60,100,0} --y=0.6 for base

tele = true
base = false

pcall(function() game.Workspace.DH:Remove() end)

script.Parent = game.Workspace
script.Name = "DH"

------------------------------------------------------------

--  Default Part Function (Parameters: 7)

function Part(na,co,ma,sx,sy,sz,pa)
	local p = Instance.new("Part")
	p.Anchored = true
	p.Locked = true
	p.formFactor = "Custom"
	p.TopSurface = 0
	p.BottomSurface = 0
	p.CanCollide = true
	p.BrickColor = BrickColor.new(co)
	p.Material = ma
	p.Name = na
	p.Size = Vector3.new(sx,sy,sz)
	p.Parent = pa
	return p
end

--	Default Light Instance (Parameters: 1)

function Light(pa)
	local l = Instance.new("PointLight")
	l.Range = 16
	l.Parent = pa
	return l
end

--	Default Mesh Instance (Parameters: 5)

function Mesh(mi,sx,sy,sz,pa)
	local m = Instance.new(mi)
	m.Scale = Vector3.new(sx,sy,sz)
	m.Parent = pa
	return m
end

-- Default Model Script

function Model(na,pa)
	local m = Instance.new("Model")
	m.Name = na
	m.Parent = pa
	return m
end

function Fire(he,si,pa)
	local f = Instance.new("Fire")
	f.Heat = he
	f.Size = si
	f.Parent = pa
	return f
end

------------------------------------------------------------

function Pos(x,y,z)
	return CFrame.new(x+location[1],y+location[2],z+location[3])
end

------------------------------------------------------------

-- Building

house = Model("Paradise",script)

function CreateBase()
	base = Part("Base","Dark green","Grass",99.97,0.2,100,house)
	base.CFrame = Pos(0,0.3,0)
	
	if tele then
		Player.Character.Torso.CFrame = base.CFrame + Vector3.new(80,5,34)
	end
	
	Part("BaseA","Dark green","Grass",20.07,0.2,40,house).CFrame = Pos(60,0.3,30)
	Part("BaseB","Dark green","Grass",20.07,0.2,40,house).CFrame = Pos(60,0.3,-30)
	Part("BaseC","Dark green","Grass",14.97,0.2,100,house).CFrame = Pos(77.5,0.3,0)
	Part("BaseD","Dark green","Grass",14.97,0.2,100,house).CFrame = Pos(102.5,0.3,0)
	Part("BaseE","Dark green","Grass",10.06,0.2,64.25,house).CFrame = Pos(90,0.3,17.875)
	Part("BaseE","Dark green","Grass",10.06,0.2,30.15,house).CFrame = Pos(90,0.3,-34.925)

	Part("Base","Dark stone grey","DiamondPlate",99.97,0.4,100,house).CFrame = Pos(0,0,0)
	Part("BaseA","Dark stone grey","DiamondPlate",20.07,0.4,40,house).CFrame = Pos(60,0,30)
	Part("BaseB","Dark stone grey","DiamondPlate",20.07,0.4,40,house).CFrame = Pos(60,0,-30)
	Part("BaseC","Dark stone grey","DiamondPlate",14.97,0.4,100,house).CFrame = Pos(77.5,0,0)
	Part("BaseD","Dark stone grey","DiamondPlate",14.97,0.4,100,house).CFrame = Pos(102.5,0,0)
	Part("BaseE","Dark stone grey","DiamondPlate",10.06,0.4,64.25,house).CFrame = Pos(90,0,17.875)
	Part("BaseE","Dark stone grey","DiamondPlate",10.06,0.4,30.15,house).CFrame = Pos(90,0,-34.925)
	
	doorA = Part("DoorA","Medium stone grey","DiamondPlate",20,0.2,20,house)
	doorA.CFrame = Pos(50,0,10)	
	doorB = Part("DoorB","Medium stone grey","DiamondPlate",20,0.2,20,house)
	doorB.CFrame = Pos(50,0,-10)
	doorC = Part("DoorC","Medium stone grey","DiamondPlate",20,0.2,20,house)
	doorC.CFrame = Pos(70,0,10)
	doorD = Part("DoorD","Medium stone grey","DiamondPlate",20,0.2,20,house)
	doorD.CFrame = Pos(70,0,-10)
	
	for i = 1,40 do
		if (25 < i and i <= 40) then
			Part("StairL",192,"Wood",10,1,1,house).CFrame = Pos(65,-0.6-(i-1)/2,10-(i-1))
			Part("StairR",192,"Wood",10,1,1,house).CFrame = Pos(55,-0.6-(i-1)/2,10-(i-1))
		else
			Part("Stair",192,"Wood",10,1,1,house).CFrame = Pos(65,-0.6-(i-1)/2,10-(i-1))
			Part("Stair",192,"Wood",10,1,1,house).CFrame = Pos(55,-0.6-(i-1)/2,10-(i-1))
		end
		temp = Part("Stair","Medium Stone Grey","DiamondPlate",0.2,1.1,1.1,house)
		temp.CFrame = Pos(50.1,-0.6-(i-1)/2,10-(i-1))
		Light(temp)
		temp = Part("Stair","Medium Stone Grey","DiamondPlate",0.2,1.1,1.1,house)
		temp.CFrame = Pos(69.9,-0.6-(i-1)/2,10-(i-1))
		Light(temp)
	end
	
	cdoorA = Part("CDoorA","Medium stone grey","DiamondPlate",0.25,9.75,4.75,house)
	cdoorA.CFrame = Pos(70.15,-15.225,13.625)
	cdoorB = Part("CDoorB","Medium stone grey","DiamondPlate",0.25,9.75,4.75,house)
	cdoorB.CFrame = Pos(70.15,-15.225,18.375)

	for i = 1,13 do
		Part("UWall",192,"Wood",1,0.5*i,1,house).CFrame = Pos(55,-20.1+(i*0.25),-27+(i-1))
		Part("UWall",192,"Wood",1,0.5*i,1,house).CFrame = Pos(65,-20.1+(i*0.25),-27+(i-1))
	end	
	
	Part("UWall",192,"Wood",5.5,7,1,house).CFrame = Pos(52.75,-16.6,-14)
	Part("UWall",192,"Wood",5.5,7,1,house).CFrame = Pos(67.25,-16.6,-14)
	
	Part("UWall","Dark stone grey","DiamondPlate",0.5,7,0.75,house).CFrame = Pos(64.5,-16.6,-14)
	Part("UWall","Dark stone grey","DiamondPlate",0.5,7,0.75,house).CFrame = Pos(55.5,-16.6,-14)
	Part("UWall","Dark stone grey","DiamondPlate",8.5,0.5,0.75,house).CFrame = Pos(60,-13.1,-14)
	
	Part("WFloor",192,"Wood",159.6,0.5,79.6,house).CFrame = Pos(30,-20.35,0)
	Part("Floor","Dark stone grey","DiamondPlate",160,0.5,80,house).CFrame = Pos(30,-20.85,0)
	Part("FTrim","Dark stone grey","DiamondPlate",160,0.5,0.2,house).CFrame = Pos(30,-20.35,-39.9)
	Part("FTrim","Dark stone grey","DiamondPlate",160,0.5,0.2,house).CFrame = Pos(30,-20.35,39.9)
	Part("FTrim","Dark stone grey","DiamondPlate",0.2,0.5,80,house).CFrame = Pos(109.9,-20.35,0)
	Part("FTrim","Dark stone grey","DiamondPlate",0.2,0.5,80,house).CFrame = Pos(-49.9,-20.35,0)
	
	Part("Wall","Dark stone grey","Brick",0.3,20,70,house).CFrame = Pos(49.85,-10.1,5)
	Part("Wall","Dark stone grey","Brick",0.3,20,51,house).CFrame = Pos(70.15,-10.1,-14.5)
	Part("Wall","Dark stone grey","Brick",0.3,20,19,house).CFrame = Pos(70.15,-10.1,30.5)
	Part("Wall","Dark stone grey","Brick",0.3,10,10,house).CFrame = Pos(70.15,-5.1,16)
	Part("Wall","Dark stone grey","Brick",0.2,20,80,house).CFrame = Pos(109.9,-10.1,0)
	
	Part("WTrim","Dark stone grey","DiamondPlate",0.5,0.5,10.5,house).CFrame = Pos(70.15,-10.1,16)
	Part("WTrim","Dark stone grey","DiamondPlate",0.5,10,0.5,house).CFrame = Pos(70.15,-15.35,11)
	Part("WTrim","Dark stone grey","DiamondPlate",0.5,10,0.5,house).CFrame = Pos(70.15,-15.35,21)

	temp = Part("Window","Pearl","Plastic",0.2,20,80,house)
	temp.Transparency = 0.9
	temp.CFrame = Pos(-49.9,-10.1,0)
	Mesh("BlockMesh",0,1,1,temp)
	
	temp = Part("Wall","Dark stone grey","Brick",0.3,20,9.6,house)
	temp.CFrame = Pos(70.15,-10.1,-44.8) * CFrame.Angles(math.pi,math.pi,0)
	Mesh("SpecialMesh",1,1,1,temp).MeshType = "Wedge"	
	
	temp = Part("Wall","Dark stone grey","Brick",0.3,20,9.6,house)
	temp.CFrame = Pos(49.85,-10.1,44.8) * CFrame.Angles(math.pi,0,0)
	Mesh("SpecialMesh",1,1,1,temp).MeshType = "Wedge"	
	
	temp = Part("Wall","Dark stone grey","Brick",0.3,20,9.6,house)
	temp.CFrame = Pos(70.15,-10.1,44.8) * CFrame.Angles(math.pi,0,0)
	Mesh("SpecialMesh",1,1,1,temp).MeshType = "Wedge"
	
	temp = Part("Wall","Dark stone grey","Brick",0.2,20,9.6,house)
	temp.CFrame = Pos(109.9,-10.1,44.8) * CFrame.Angles(math.pi,0,0)
	Mesh("SpecialMesh",1,1,1,temp).MeshType = "Wedge"
	
	temp = Part("Wall","Dark stone grey","Brick",0.2,20,9.6,house)
	temp.CFrame = Pos(109.9,-10.1,-44.8) * CFrame.Angles(math.pi,math.pi,0)
	Mesh("SpecialMesh",1,1,1,temp).MeshType = "Wedge"	
	
	temp = Part("Window","Pearl","Plastic",0.2,20,9.6,house)
	temp.Transparency = 0.9
	temp.CFrame = Pos(-49.9,-10.1,44.8) * CFrame.Angles(math.pi,0,0)
	Mesh("SpecialMesh",0,1,1,temp).MeshType = "Wedge"
	
	temp = Part("Window","Pearl","Plastic",0.2,20,9.6,house)
	temp.Transparency = 0.9
	temp.CFrame = Pos(-49.9,-10.1,-44.8) * CFrame.Angles(math.pi,math.pi,0)
	Mesh("SpecialMesh",0,1,1,temp).MeshType = "Wedge"	
	
	for i = 1,9 do --  -51.65 +20.3
		Part("Support","Dark stone grey","DiamondPlate",0.5,23.1,0.3,house).CFrame = Pos(-49.75+(19.935*(i-1)),-10.3,-44.7) * CFrame.Angles(-.45,0,0)
		Part("Support","Dark stone grey","DiamondPlate",0.5,23.1,0.3,house).CFrame = Pos(-49.75+(19.935*(i-1)),-10.3,44.7) * CFrame.Angles(.45,0,0)
	end
	
	temp = Part("Window","Pearl","Plastic",160,23.1,0.2,house)
	temp.Transparency = 0.9
	temp.CFrame = Pos(30,-10.3,-44.7) * CFrame.Angles(-.45,0,0)
	Mesh("BlockMesh",1,1,0,temp)
	
	temp = Part("Window","Pearl","Plastic",160,23.1,0.2,house)
	temp.Transparency = 0.9
	temp.CFrame = Pos(30,-10.3,44.7) * CFrame.Angles(.45,0,0)
	Mesh("BlockMesh",1,1,0,temp)
	
	Part("Wall","Dark stone grey","Brick",40,23.1,0.2,house).CFrame = Pos(89.9,-10.3,-44.7) * CFrame.Angles(-.45,0,0)
	Part("Wall","Dark stone grey","Brick",40,23.1,0.2,house).CFrame = Pos(89.9,-10.3,44.7) * CFrame.Angles(.45,0,0)
	
	Part("Wall","Dark stone grey","Brick",14.7,20,0.3,house).CFrame = Pos(77.65,-10.1,-20)
	Part("Wall","Dark stone grey","Brick",15,20,0.3,house).CFrame = Pos(102.5,-10.1,-20)
	
	--Part("Wall","Dark stone grey","Brick",14.5,20,0.3,house).CFrame = Pos(77.75,-10.1,-14.3)
	--Part("Wall","Dark stone grey","Brick",15,20,0.3,house).CFrame = Pos(102.5,-10.1,-14.3)
	
	Part("Wall","Dark stone grey","Brick",10.03,12,0.3,house).CFrame = Pos(90,-6.1,-20)
	
	Part("FBrick",350,"Brick",2,20,6,house).CFrame = Pos(84.01,-10.1,-17.1)
	Part("FBrick",350,"Brick",2,20,6,house).CFrame = Pos(95.99,-10.1,-17.1)	
	Part("FBrick",350,"Brick",13.97,12,0.2,house).CFrame = Pos(90,-6.1,-14.19)
	Part("FBrick",350,"Brick",10,12,0.2,house).CFrame = Pos(90,-6.11,-19.9)
	fplace = Part("FBrick","Dark stone grey","Cobblestone",12,0.8,5.8,house)
	fplace.CFrame = Pos(90,-19.7,-17.01)	
	Light(fplace)
	Fire(7,8,fplace)
	
	fDoorA = Part("FBrick",350,"Brick",10,8,0.2,house)
	fDoorA.CFrame = Pos(90,-16.1,-20)	
	
	--Part("BShelf",18,"Wood",12.65,0.2,3,house).CFrame = Pos(76.65,-19.6 ,-15.6)	

	Part("DFloor",192,"Wood",20.4,0.2,28.4,house).CFrame = Pos(90,0.5,0)
	Part("DWall",192,"Wood",5.17,10,0.2,house).CFrame = Pos(97.6,5.4,-14.1)
	Part("DWall",192,"Wood",5.17,10,0.2,house).CFrame = Pos(82.4,5.4,-14.1)
	--Part("DWall",192,"Wood",10.2,2,0.2,house).CFrame = Pos(90,9.4,-14.1) -- unsure
	Part("DWall",192,"Wood",15.2,3,0.2,house).CFrame = Pos(92.6,8.9,14.1)
	Part("DWall",192,"Wood",9.8,3,0.2,house).CFrame = Pos(95.3,1.9,14.1)
	Part("DWall",192,"Wood",1.9,4,0.2,house).CFrame = Pos(91.35,5.4,14.1)
	Part("DWall",192,"Wood",3.9,4,0.2,house).CFrame = Pos(98.25,5.4,14.1)
	Part("DWall",192,"Wood",5.2,10,0.2,house).CFrame = Pos(82.4,5.4,14.1)

	Part("DWall",192,"Wood",0.2,3,28,house).CFrame = Pos(100.1,1.9,0)
	Part("DWall",192,"Wood",0.2,3,28,house).CFrame = Pos(100.1,8.9,0)
	Part("DWall",192,"Wood",0.2,4,8,house).CFrame = Pos(100.1,5.4,0)
	Part("DWall",192,"Wood",0.2,4,6,house).CFrame = Pos(100.1,5.4,-11)
	Part("DWall",192,"Wood",0.2,4,6,house).CFrame = Pos(100.1,5.4,11)
	
	Part("DWall",192,"Wood",0.2,3,28,house).CFrame = Pos(79.9,1.9,0)
	Part("DWall",192,"Wood",0.2,3,28,house).CFrame = Pos(79.9,8.9,0)
	Part("DWall",192,"Wood",0.2,4,8,house).CFrame = Pos(79.9,5.4,0)
	Part("DWall",192,"Wood",0.2,4,6,house).CFrame = Pos(79.9,5.4,-11)
	Part("DWall",192,"Wood",0.2,4,6,house).CFrame = Pos(79.9,5.4,11)

	Part("DWall",192,"Wood",0.2,1,18.2,house).CFrame = Pos(90,10.9,14.1) * CFrame.Angles(0,math.pi/2,0)
	Part("DWall",192,"Wood",0.2,1,13.3,house).CFrame = Pos(90,11.9,14.1) * CFrame.Angles(0,math.pi/2,0)
	Part("DWall",192,"Wood",0.2,1,8.5,house).CFrame = Pos(90,12.9,14.1) * CFrame.Angles(0,math.pi/2,0)
	Part("DWall",192,"Wood",0.2,1,3.6,house).CFrame = Pos(90,13.9,14.1) * CFrame.Angles(0,math.pi/2,0)
	
	Part("DWall",192,"Wood",0.2,1,18.2,house).CFrame = Pos(90,10.9,-14.1) * CFrame.Angles(0,-math.pi/2,0)
	Part("DWall",192,"Wood",0.2,1,13.3,house).CFrame = Pos(90,11.9,-14.1) * CFrame.Angles(0,-math.pi/2,0)
	Part("DWall",192,"Wood",0.2,1,8.5,house).CFrame = Pos(90,12.9,-14.1) * CFrame.Angles(0,-math.pi/2,0)
	Part("DWall",192,"Wood",0.2,1,3.6,house).CFrame = Pos(90,13.9,-14.1) * CFrame.Angles(0,-math.pi/2,0)
	
	for i = 1,3 do
		Part("DSiding",3,"Wood",0.4,1,28.5,house).CFrame = Pos(79.7,i,0) * CFrame.Angles(0,0,-0.2)
		Part("DSiding",3,"Wood",0.4,1,28.5,house).CFrame = Pos(100.3,i,0) * CFrame.Angles(0,0,0.2)
		Part("DSiding",3,"Wood",0.4,1,28.5,house).CFrame = Pos(79.7,7+i,0) * CFrame.Angles(0,0,-0.2)
		Part("DSiding",3,"Wood",0.4,1,28.5,house).CFrame = Pos(100.3,7+i,0) * CFrame.Angles(0,0,0.2)
		Part("DSiding",3,"Wood",0.4,1,20.55,house).CFrame = Pos(90,7+i,14.3) * CFrame.Angles(0,math.pi/2,-0.2)
		Part("DSiding",3,"Wood",0.4,1,9.85,house).CFrame = Pos(95.35,i,14.3) * CFrame.Angles(0,math.pi/2,-0.2)
	end
	for i = 1,4 do
		Part("DSiding",3,"Wood",0.4,1,7.97,house).CFrame = Pos(79.7,3+i,0) * CFrame.Angles(0,0,-0.2)
		Part("DSiding",3,"Wood",0.4,1,7.97,house).CFrame = Pos(100.3,3+i,0) * CFrame.Angles(0,0,0.2)
		Part("DSiding",3,"Wood",0.4,1,6.2,house).CFrame = Pos(79.7,3+i,-11.15) * CFrame.Angles(0,0,-0.2)
		Part("DSiding",3,"Wood",0.4,1,6.2,house).CFrame = Pos(100.3,3+i,-11.15) * CFrame.Angles(0,0,0.2)
		Part("DSiding",3,"Wood",0.4,1,6.2,house).CFrame = Pos(79.7,3+i,11.15) * CFrame.Angles(0,0,-0.2)
		Part("DSiding",3,"Wood",0.4,1,6.2,house).CFrame = Pos(100.3,3+i,11.15) * CFrame.Angles(0,0,0.2)
		Part("DSiding",3,"Wood",0.4,1,1.87,house).CFrame = Pos(91.36,i+3,14.3) * CFrame.Angles(0,math.pi/2,-0.2)
		Part("DSiding",3,"Wood",0.4,1,3.95,house).CFrame = Pos(98.3,i+3,14.3) * CFrame.Angles(0,math.pi/2,-0.2)
	end
	for i = 1,10 do
		Part("DSiding",3,"Wood",0.4,1,5.2,house).CFrame = Pos(82.35,i,-14.3) * CFrame.Angles(0,-math.pi/2,-0.2)
		Part("DSiding",3,"Wood",0.4,1,5.2,house).CFrame = Pos(97.65,i,-14.3) * CFrame.Angles(0,-math.pi/2,-0.2)
	end
	for i = 1,7 do
		Part("DSiding",3,"Wood",0.4,1,5.25,house).CFrame = Pos(82.35,i,14.3) * CFrame.Angles(0,math.pi/2,-0.2)
	end
	Part("DSiding",3,"Wood",0.4,1,17.7,house).CFrame = Pos(90,11,14.3) * CFrame.Angles(0,math.pi/2,-0.2)
	Part("DSiding",3,"Wood",0.4,1,13.2,house).CFrame = Pos(90,12,14.3) * CFrame.Angles(0,math.pi/2,-0.2)
	Part("DSiding",3,"Wood",0.4,1,8.3,house).CFrame = Pos(90,13,14.3) * CFrame.Angles(0,math.pi/2,-0.2)
	Part("DSiding",3,"Wood",0.4,1,3.5,house).CFrame = Pos(90,14,14.3) * CFrame.Angles(0,math.pi/2,-0.2)
	
	Part("DSiding",3,"Wood",0.4,1,17.7,house).CFrame = Pos(90,11,-14.3) * CFrame.Angles(0,-math.pi/2,-0.2)
	Part("DSiding",3,"Wood",0.4,1,13.2,house).CFrame = Pos(90,12,-14.3) * CFrame.Angles(0,-math.pi/2,-0.2)
	Part("DSiding",3,"Wood",0.4,1,8.3,house).CFrame = Pos(90,13,-14.3) * CFrame.Angles(0,-math.pi/2,-0.2)
	Part("DSiding",3,"Wood",0.4,1,3.5,house).CFrame = Pos(90,14,-14.3) * CFrame.Angles(0,-math.pi/2,-0.2)
	
	Part("FBrick",350,"Brick",12.03,20,2,house).CFrame = Pos(90,9.89,-19.8)
	Part("FBrick",350,"Brick",12.03,12,2,house).CFrame = Pos(90,13.89,-14.2)
	Part("FBrick",350,"Brick",2,20,7.57,house).CFrame = Pos(84.97,9.89,-17)
	Part("FBrick",350,"Brick",2,20,7.57,house).CFrame = Pos(95.03,9.89,-17)
	
	Part("FBrick","Dark stone grey","Concrete",12.43,0.99,2.5,house).CFrame = Pos(90,20,-19.9)
	Part("FBrick","Dark stone grey","Concrete",12.43,0.99,2.5,house).CFrame = Pos(90,20,-14.1)
	Part("FBrick","Dark stone grey","Concrete",2.5,1,8.17,house).CFrame = Pos(84.97,20,-17)
	Part("FBrick","Dark stone grey","Concrete",2.5,1,8.17,house).CFrame = Pos(95.03,20,-17)

	Part("Roof",192,"Wood",12.537,1,30.01,house).CFrame = Pos(95.6,12.4,0) * CFrame.Angles(0,0,-math.pi/8)
	Part("Roof",192,"Wood",12.537,1,30,house).CFrame = Pos(84.4,12.4,0) * CFrame.Angles(0,0,math.pi/8)
	
end


function CreateLiteralBase()
	location[2]=0.6
	Part("Base","Dark green","Grass",462,0.2,1024,house).CFrame = Pos(341,0.3,0)
	Part("Base","Dark green","Grass",462,0.2,1024,house).CFrame = Pos(-281,0.3,0)
	Part("Base","Dark green","Grass",160,0.2,462,house).CFrame = Pos(30,0.3,281)
	Part("Base","Dark green","Grass",160,0.2,462,house).CFrame = Pos(30,0.3,-281)
	pcall(function() game.Workspace.Base:Remove() end)
end

------------------------------------------------------------

function coslerp(a, b, x)
	ft = x * math.pi
	f = (1 - math.cos(ft)) * .5
	return a*(1-f) + b*f
end

-- Animation @ping.

function OpenMD()	--Main Door
    cf = {doorA.CFrame,doorB.CFrame,doorC.CFrame,doorD.CFrame}
	for i = 1,40 do 
		cf[1] = cf[1] * CFrame.Angles(0,math.pi/80,0)
		cf[1] = cf[1] + Vector3.new(0.2,0,0.2)
		cf[2] = cf[2] * CFrame.Angles(0,math.pi/80,0)
		cf[2] = cf[2] + Vector3.new(-0.2,0,0.2)
		cf[3] = cf[3] * CFrame.Angles(0,math.pi/80,0)
		cf[3] = cf[3] + Vector3.new(0.2,0,-0.2)
		cf[4] = cf[4] * CFrame.Angles(0,math.pi/80,0)
		cf[4] = cf[4] + Vector3.new(-0.2,0,-0.2)
	end 
    cf_ = {doorA.CFrame,doorB.CFrame,doorC.CFrame,doorD.CFrame}
	for i = 1,80 do
	    doorA.CFrame=cf_[1]:lerp(cf[1],coslerp(0,1,i/80))
	    doorB.CFrame=cf_[2]:lerp(cf[2],coslerp(0,1,i/80)) 
	    doorC.CFrame=cf_[3]:lerp(cf[3],coslerp(0,1,i/80))
	    doorD.CFrame=cf_[4]:lerp(cf[4],coslerp(0,1,i/80))
	    wait()
	end
	for i = 1,20 do
	   doorA.CFrame = doorA.CFrame + Vector3.new(0.08,0,0.08)
	   doorB.CFrame = doorB.CFrame + Vector3.new(-0.08,0,0.08)
	   doorC.CFrame = doorC.CFrame + Vector3.new(0.08,0,-0.08)
	   doorD.CFrame = doorD.CFrame + Vector3.new(-0.08,0,-0.08)
	   wait()
	end
end

function CloseMD()	--Main Door
	for i = 1,20 do
	   doorA.CFrame = doorA.CFrame - Vector3.new(0.08,0,0.08)
	   doorB.CFrame = doorB.CFrame - Vector3.new(-0.08,0,0.08)
	   doorC.CFrame = doorC.CFrame - Vector3.new(0.08,0,-0.08)
	   doorD.CFrame = doorD.CFrame - Vector3.new(-0.08,0,-0.08)
	   wait()
	end
    cf = {doorA.CFrame,doorB.CFrame,doorC.CFrame,doorD.CFrame}
	for i = 1,40 do 
		cf[1] = cf[1] - Vector3.new(0.2,0,0.2)
		cf[1] = cf[1] * CFrame.Angles(0,-math.pi/80,0)
		cf[2] = cf[2] - Vector3.new(-0.2,0,0.2)
		cf[2] = cf[2] * CFrame.Angles(0,-math.pi/80,0)
		cf[3] = cf[3] - Vector3.new(0.2,0,-0.2)
		cf[3] = cf[3] * CFrame.Angles(0,-math.pi/80,0)
		cf[4] = cf[4] - Vector3.new(-0.2,0,-0.2)
		cf[4] = cf[4] * CFrame.Angles(0,-math.pi/80,0)
	end 
    cf_ = {doorA.CFrame,doorB.CFrame,doorC.CFrame,doorD.CFrame}
	for i = 1,80 do
	    doorA.CFrame=cf_[1]:lerp(cf[1],coslerp(0,1,i/80))
	    doorB.CFrame=cf_[2]:lerp(cf[2],coslerp(0,1,i/80)) 
	    doorC.CFrame=cf_[3]:lerp(cf[3],coslerp(0,1,i/80))
	    doorD.CFrame=cf_[4]:lerp(cf[4],coslerp(0,1,i/80))
	    wait()
	end
end

function OpenMS()	--Main Stairs
	for i = 1,20 do
		for j,v in pairs(house:GetChildren()) do
			if (v.Name == "StairL") then
				temp_cf = v.CFrame
				v.Size = v.Size - Vector3.new(0.2,0,0)
				v.CFrame = temp_cf + Vector3.new(0.1,0,0)
			elseif (v.Name == "StairR") then
				temp_cf = v.CFrame
				v.Size = v.Size - Vector3.new(0.2,0,0)
				v.CFrame = temp_cf - Vector3.new(0.1,0,0)
			end
		end
		wait()
	end
end

function CloseMS()	--Main Stairs
	for i = 1,20 do
		for j,v in pairs(house:GetChildren()) do
			if (v.Name == "StairL") then
				temp_cf = v.CFrame
				v.Size = v.Size + Vector3.new(0.2,0,0)
				v.CFrame = temp_cf - Vector3.new(0.1,0,0)
			elseif (v.Name == "StairR") then
				temp_cf = v.CFrame
				v.Size = v.Size + Vector3.new(0.2,0,0)
				v.CFrame = temp_cf + Vector3.new(0.1,0,0)
			end
		end
		wait()
	end
end

function OpenCD()	--Control Door
	for i = 1,20 do
		cdoorA.CFrame = cdoorA.CFrame - Vector3.new(0,0,0.2)
		cdoorB.CFrame = cdoorB.CFrame + Vector3.new(0,0,0.2)
		wait()
	end
end

function CloseCD()	--Control Door
	for i = 1,20 do
		cdoorA.CFrame = cdoorA.CFrame + Vector3.new(0,0,0.2)
		cdoorB.CFrame = cdoorB.CFrame - Vector3.new(0,0,0.2)
		wait()
	end
end

function OpenFP()
	for i = 1,20 do
		fDoorA.CFrame = fDoorA.CFrame + Vector3.new(0,0.399,0)
		wait()
	end
end

function CloseFP()
	for i = 1,20 do
		fDoorA.CFrame = fDoorA.CFrame - Vector3.new(0,0.399,0)
		wait()
	end
end

------------------------------------------------------------

function Main()
	if base then CreateLiteralBase() end
	CreateBase()
	OpenMD()
	OpenMS()
	OpenCD()
	OpenFP()
end

Main()
