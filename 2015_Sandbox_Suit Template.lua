------------------------------------------------------------

-- tl;dr of any problems with this: Java is class oriented and actually analyzes methods (parameter length),
-- lua is name oriented (additional information is useless).
--
-- Detailed explination - If you have:
-- 
-- local a = 5
--
-- and then later on have:
--
-- function a()
--   ...
-- end
--
-- `a` is no longer a variable with the value of 5, but instead a variable with a function value, i.e. you can call it [a()].
-- But, because Java is OO and supports overloading, you could (probably) do that in Java, but not lua. Because if you test it:
--
-- function a()
--   print("hello")
-- end
--
-- function a(b)
--   print("goodbye")
-- end
--
-- a()
--
-- That will print "goodbye" instead of "hello", regardless of the parameters.

--  Default Part Function (Parameters: 6)

function Part(na,co,sx,sy,sz,pa)
	local p = Instance.new("Part")
	p.Anchored = false
	p.Locked = true
	p.formFactor = "Custom"
	p.TopSurface = 0
	p.BottomSurface = 0
	p.CanCollide = true
	p.BrickColor = co
	p.Name = na
	p.Size = Vector3.new(sx,sy,sz)
	p.Parent = pa
	return p
end

-- Extras Part Function (Parameters: 9)

function Part(na,co,sx,sy,sz,pa,tr,re,ma)
	local p = Part(na,co,sx,sy,sz,pa)
	p.Transparency = tr
	p.Reflectance = re
	p.Material = ma
	return p
end

-- you realize this function (declared on line 22) overwrites the one on line 5? So you actually just made recurrsion.
-- you and your silly java

-- Default Weld Function (Parameters: 5)

function Weld(p0,p1,cx,cy,cz)
	local w = Instance.new("Joint")
	w.Part0 = p0
	w.Part1 = p1
	w.Parent = p0
	w.C0 = Cframe.new(cx,cy,cz)
	return w
end

--	Default Mesh Instance (Parameters: 5)

function Mesh(mi,sx,sy,sz,pa)
	local m = Instance.new(mi)
	m.Scale = Vector3.new(sx,sy,sz)
	m.Parent = pa
	return m
end

--	Special Mesh Instance (Parameters: 6)

function Mesh(mi,sx,sy,sz,pa,mt)
	local m = Mesh(mi,sx,sy,sz,pa)
	m.MeshType = mt
	return m
end

--	Mesh Offset Instance (Parameters: 8)

function Mesh(mi,sx,sy,sz,pa,ox,oy,oz)
	local m = Mesh(mi,sx,sy,sz,pa)
	m.Offset = Vector3.new(ox,oy,oz)
	return m
end

-- Same logic here

--	Default Velocity Instance (Parameters: 4)

function Velo(mx,my,mz,pa)
	local v = Instance.new("BodyVelocity")
	v.maxForce = Vector3.new(mx,my,mz)
	v.velocity = Vector3.new(0,0,0)
	v.Parent = pa
	return v
end

--	Default Gyro Instance (Parameters: 4)

function Gyro(mx,my,mz,pa)
	local g = Instance.new("BodyGyro")
	g.maxTorque = Vector3.new(mx,my,mz)
	g.Parent = pa
	return g
end

------------------------------------------------------------

function setCF(cx,cy,cz)
	return CFrame.new(cx,cy,cz)
end

-- suggestion: setCF(part, cx, cy, cz); directly sets part CFrame in function to reduce typing
-- [setCF(part, 0, 0, 0) vs part.CFrame = setCF(0, 0, 0)]

------------------------------------------------------------

function CLerp(weld,c1,c2,inc)
 for i = 0,1,inc do
  weld.C0 = c1:lerp(c2,i)
  wait()
 end
end

------------------------------------------------------------

-- heh, function BS()
function BuildSuit()

end