local plr=owner or game.Players.LocalPlayer

print('Ninja Script Loading For '..plr.Name)

local ninja_suit = function(charz)
	--local ms=plr:GetMouse()
	local chr=charz--plr.Character
	local blah = true
	
	--[[
		Framework: Roblox
		Language: Lua
		Project: Script/ HopperBin Events
		Coders: supergod800, bob371
	]]--

	local Keys,downs,lastpressed={},{},{}  --Shoutout to @supergod800

	local isKeyDown = function(key) return downs[tostring(key)] or false end

	local emptyFunction = function(key, key_event) print("Empty Key Function: "..tostring(key)..key_event) end

	local _setKey = function(key, func_keydown, func_keyup) 
		
		local ku, kd
		
		ku = func_keyup
		
		kd = func_keydown
		
		Keys[key]= {
			up = ku, 
			down = kd
		} 
		
	end

	local setKey = function(key,func_keydown, func_keyup) 
		if typeof(key) == 'table' then 
			for i,v in pairs(key) do 
				_setKey(v, func_keydown, func_keyup)
			end 
		else 
			_setKey(key, func_keydown, func_keyup)
		end
	end

	local timePassed = function(key)
		local t = tick() return math.max(t - (lastpressed[key] or t),0)
	end

	local keyDown = function(plr,key)	
		key = tostring(key)
		print(key)
		if isKeyDown(key) then 
			downs[key]=false
			print('up')
			if Keys[key] then pcall(function() Keys[key].up() end) end
		else
			downs[key],lastpressed[key]=true,tick()
			print('down')
			if Keys[key] then pcall(function() Keys[key].down() end) end
		end
	end

	local mouse = {}
	local currentcamera = {}
	local keysEvent = Instance.new("RemoteEvent",NLS(string.format([[
		local keysEvent,mouse = script:FindFirstChildWhichIsA("RemoteEvent"),game.Players.LocalPlayer:GetMouse()
		local mousedata
					--, cameradata 
			= keysEvent:FindFirstChildWhichIsA("RemoteEvent"), keysEvent:FindFirstChildWhichIsA("RemoteEvent")
		mouse.KeyDown:connect(function(plr,key)  keysEvent:FireServer(plr,key) end)
		mouse.KeyUp:connect(function(plr,key) keysEvent:FireServer(plr,key) end)
		mouse.Button1Down:connect(function(plr,key) keysEvent:FireServer(plr,'MouseButton1Down') end)
		mouse.Button1Up:connect(function(plr,key) keysEvent:FireServer(plr,'MouseButton1Down') end)
		local runserv = game:GetService("RunService")
		while runserv.Stepped:Wait() do
			mousedata:FireServer(plr,{Hit = mouse.Hit,Target = mouse.Target, TargetSurface = mouse.TargetSurface})
			--cameradata:FireServer(plr,{Cam = workspace.CurrentCamera})
		end
		]],''),
	plr.PlayerGui))
			
	local mouseEvent = Instance.new('RemoteEvent',keysEvent)
	--local cameraEvent = Instance.new('RemoteEvent',keysEvent)
	mouseEvent.OnServerEvent:Connect(function(plr,data) mouse = data end)
	--cameraEvent.onServerEvent:Connect(function(plr,data) currentcamera = data end)
	keysEvent.OnServerEvent:Connect(keyDown)


	local ws=game.Workspace

	local offset={x=0,y=0,z=0}
	local t,f = true,false
	local new=Instance.new
	local v3=Vector3.new
	local bc=BrickColor.new
	local c3 = Color3.fromRGB

	local rgb=function(r,g,b) return bc(Color3.new(r,g,b)) end
	local siz=function(sx,sy,sz) return v3(sx,sy,sz) end
	local cf=function(cx,cy,cz) return CFrame.new(offset.x+cx,offset.y+cy,offset.z+cz) end

	local ang=function(rx,ry,rz) return CFrame.Angles(math.rad(rx),math.rad(ry),math.rad(rz)) end

	local eang=function(x,y,z) return CFrame.fromEulerAnglesXYZ(x,y,z) end

	--------------------------------------------------------------------------

	local kill_script = function()
		script:Remove()
	end

	--SpecificUse:Part,Mesh
	local cln=function(it,pa,_v3)
		local asd=it:clone()
		asd.Parent=pa
		if pa then
			pcall(function() asd.CFrame=_v3 end)
			pcall(function() asd.Scale=_v3 end)
		end
		return asd
	end

	--Name,Parent
	local mdl=function(na,pa)
		local m=new("Model")
		m.Name=na
		m.Parent=pa
		return m
	end

	--Name,Color,Material,CanCollide,Anchored,Reflectance,SizeTable,Parent,[CFrame]
	local prt=function(na,co,ma,cc,an,rf,tr,sz,pa,ps)
		local p=new("Part")
		p.BrickColor=bc(co)
		p.formFactor=3
		p.Name=na
		p.Material=ma
		p.Reflectance=rf
		p.Transparency=tr
		p.CanCollide,p.Anchored,p.Locked=cc,an,t
		p.TopSurface,p.BottomSurface=0,0
		p.Size=sz
		p.Parent = pa
		if ps then
			p.CFrame=ps
		end
		return p
	end 

	--MeshType,ScaleTable,Parent
	local msh=function(ms,mt,sc,pa)
		local m=new(ms)
		if mt then
			m.MeshType=mt
		end
		m.Scale=sc
		m.Parent=pa
		return m
	end

	local wld=function(p0,p1,c0,c1)
		local w=new("Weld")
		if p0 and p1 then 
			pcall(function() w.Parent = p0 end)
			pcall(function() w.Part0 = p0 end)
			pcall(function() w.Part1 = p1 end) 
			pcall(function() w.C0 = c0 end)
			pcall(function() w.C1 = c1 end)
		end
		return w
	end

	----------------------------------------------------------

	local hats_location = function()
		for i,v in pairs(plr:GetChildren()) do
			if v.Name == "Hats" then
				v:Remove()
			end
		end
		return mdl("Hats", plr)
	end

	local faces_location = function()
		for i,v in pairs(plr:GetChildren()) do
			if v.Name == 'Faces' then
				v:Remove()
			end
		end
		return mdl("Faces", plr)
	end

	-----------------------------------------------------

	local color_schemes = {
		--	{	body_primary,		body_secondary,		accent_primary,		accent_secondary
		{	c3(0, 0, 0), 		c3(0, 0, 0),		c3(255, 0, 0),		c3(196, 40, 28)		}, 	--	Black	Red		--A
		{	c3(163, 162, 165),	c3(99, 95, 98),		c3(0, 255, 0),		c3(58, 125, 21)		},	--	Grey	Green	--H	
		{	c3(255, 255, 255),	c3(205, 205, 205),	c3(0, 0, 255),		c3(0, 0, 255)		},	--	White	Blue	--B

		{	c3(196, 40, 28),	c3(255, 0, 0),		c3(0, 0, 0),		c3(0, 0, 0)			},	--	Red		Black	--C
		{	c3(58, 125, 21),	c3(0, 255, 0),		c3(163, 162, 165),	c3(99, 95, 98)		},	--	Green	Grey	--E
		{	c3(0, 32, 96),		c3(0, 0, 255), 		c3(255, 255, 255),	c3(205, 205, 205)	},	-- 	Blue	White	--J

		{	c3(234, 184, 65),	c3(213, 115, 61),	c3(255, 255, 0),	c3(255, 175, 0) 	},	--	Orange	Yellow	--D

		{	c3(255, 255, 0),	c3(255, 175, 0), 	c3(0, 0, 0),		c3(0, 0, 0)			},	--	Yellow	Black	--F
		{	c3(255, 0, 191), 	c3(255, 0, 104), 	c3(0, 0, 0), 		c3(163, 75, 75)		},	-- 	Pink	Black	--G

		{	c3(39, 70, 45), 	c3(58, 125, 21), 	c3(255, 255, 255),	c3(205, 205, 205)	},	--	Green,	White	--I

	}

	local color_scheme_index = 7

	local suitz = false
	local visible = true
	local invisi_suit = false

	local jump_velocity = nil

	local hats = hats_location()
	print(hats)
	local faces = faces_location()
	print(faces)

	local part_a = nil
	local part_b = nil
	local part_c = nil
	local part_d = nil
	local part_e = nil
	local part_f = nil
	local part_g = nil
	local part_h = nil
	local part_i = nil
	local part_j = nil

	--------------------------------------------------------------

	local buttons_exist = function()
		return (part_a ~= nil 
			and part_b ~= nil 
			and part_c ~= nil
			and part_d ~= nil
			and part_e ~= nil
			and part_f ~= nil
			and part_g ~= nil
			and part_h ~= nil
			and part_i ~= nil
			and part_j ~= nil)
	end

	local clear_face = function()
		local _face = chr.Head:FindFirstChild("face")
		if _face then
			_face.Parent = faces
		end
	end

	local add_face = function() 
		for i,v in pairs(faces:GetChildren()) do
			if v.Name == 'face' then
				v.Parent = chr:FindFirstChild("Head")
			end
		end
	end

	local next_index = function(arr, ind)
		local length = table.getn(arr)
		if (ind >= length) then
			return 1
		else
			return ind + 1
		end
	end

	local otize = function(v, transparency)
		local ot = false
		for j,w in pairs(v:GetChildren()) do
			if w.Name == "ot" then
				ot = true
				break;
			end
		end
		if not ot then
			local ot = new("NumberValue")
			ot.Name = 'ot'
			ot.Value = v.Transparency	
			ot.Parent = v
		end
		v.Transparency = transparency
		print(v.Transparency, transparency)
	end

	local dotize = function(v)
		pcall(function() 
			v.ot:Remove() 			
			if (v.Name ~= "HumanoidRootPart") then
				v.Transparency = 0
			end
		end)
	end

	local transparenfy_location = function(location, transparency)
		for i,v in pairs(location:GetChildren()) do
			if (v:IsA("Part") or v:IsA("MeshPart")) and v.Name ~= "HumanoidRootPart" then
				otize(v, transparency)
			elseif v:IsA("Accessory") then
				otize(v.Handle, transparency)
			end
		end
	end

	local detransparenfy_location = function(location)
		for i,v in pairs(location:GetChildren()) do
			if v:IsA("Accessory") then
				pcall(function() dotize(v:FindFirstChild("Handle")) end)
			elseif v:FindFirstChild('ot') ~= nil then
				dotize(v)
			end
		end
	end

	local visibilify_character = function()
		detransparenfy_location(chr)
		add_face()
		visible = true
	end

	local invisible_character = function(tr)
		if tr == nil then tr = 1 end
		transparenfy_location(chr, tr)
		clear_face()
		visible = false
	end

	local clear_hats = function()
		for i,v in pairs(chr:GetChildren()) do
			if v:IsA("Accessory") then
				print(v)
				dotize(v)
				v.Parent = hats
			end
		end
	end

	local add_hats = function()
		for i,v in pairs(hats:GetChildren()) do
			if v:IsA("Accessory") then
				pcall(function() 
					if chr.Head:FindFirstChild("ot") ~= nil then
						otize(v, chr.Head.Transparency)
					end
				end)
				v.Parent = chr
			end
		end
	end
		
	local isR15 = function(_c)
		if (_c:FindFirstChild("Torso") ~= nil) then
			return false
		else
			return true
		end
	end

	local headTagName = "Head"

	local characterHeadMesh = function(part)
		local _m = Instance.new("SpecialMesh")
		if (isR15(character) == false) then
			_m.Scale = v3n(1.15,1.15,1.15)
		end
		_m.Parent = part
		return (headTagName.."Mesh"..part.Name)
	end

	local clear_suit = function()
		pcall(function() chr.Suit:Remove() end)
		suitz = false
	end

	local suit_up = function()
		local p,m,w
		clear_suit()
		local suit = mdl("Suit",chr)
		for i,v in pairs(chr:GetChildren()) do
			if (v:IsA("Part") or v:IsA("MeshPart")) and v.Name ~= "HumanoidRootPart" then
				p = prt('BodyArmor', color_schemes[color_scheme_index][2], "Plastic", f, f, 0.1, 0, v.Size, suit)
				local cm = false
				for j,w in pairs(v:GetChildren()) do
					print(tostring(j),tostring(w))
					print(v.Name, w.Name)?/s
					local _a =w:FindFirstChildWhichIsA("SpecialMesh")
					if (_a ~= nil)then
						print(tostring(_a))
						m = _a:Clone()
						m.Parent = p
						cm = true
						break
					end
				end
				if cm == false then
					if v.Name == '' then
					m = msh("BlockMesh", f,siz(1.005,1.005,1.01),p)
				end
				w = wld(v,p,f,cf(0,0,0))
				--print(p,m,w)
				--print(p.Parent)
			end
		end
		
		pcall(function()

		p = prt('BodyArmor_P2', color_schemes[color_scheme_index][4], "Plastic", f, f, 0, 0.9, siz(1,0.4,1), suit)
		m = msh('BlockMesh', f, siz(2, 1.05, 1.02), p)
		w = wld(chr:FindFirstChild('Torso'), p, f, cf(0, 0.8, 0))
		w = wld(chr:FindFirstChild('LowerTorso'), p, f, cf(0, 0.3, 0))

		p = prt('BodyArmor_P3', color_schemes[color_scheme_index][2], "Plastic", f, f, 0.1, 0, siz(1,1,1), suit)
		m = msh('BlockMesh', f, siz(0.9,1,1), p)
		w = wld(chr:FindFirstChild('Torso'), p, f, eang(-0.1, 0, 0) * cf(-0.55, -0.5, 0.05))
		w = wld(chr:FindFirstChild('UpperTorso'), p, f, eang(-0.1, 0, 0) * cf(-0.55, -0.215, 0.05))

		p = prt('BodyArmor_P4', color_schemes[color_scheme_index][2], "Plastic", f, f, 0.1, 0, siz(1,1,1), suit)
		m = msh('BlockMesh', f, siz(0.9,1,1), p)
		w = wld(chr:FindFirstChild('Torso'), p, f, eang(-0.1, 0, 0) * cf(0.55, -0.5, 0.05))
		w = wld(chr:FindFirstChild('UpperTorso'), p, f, eang(-0.1, 0, 0) * cf(0.55, -0.23, 0.05))

		p = prt('BodyArmor_P5', color_schemes[color_scheme_index][1], "Plastic", f, f, 0, 0, siz(1,1,1), suit)
		m = msh('BlockMesh', f, siz(0.515,1.1,0.7), p)
		w = wld(chr:FindFirstChild('Torso'), p, f, eang(-0.1, 0, 0) * cf(0.75, -0.5, 0.25))
		w = wld(chr:FindFirstChild('UpperTorso'), p, f, eang(-0.1, 0, 0) * cf(0.75, -0.37, 0.25))

		p = prt('BodyArmor_P6', color_schemes[color_scheme_index][1], "Plastic", f, f, 0, 0, siz(1,1,1), suit)
		m = msh('BlockMesh', f, siz(0.515,1.1,0.7), p)
		w = wld(chr:FindFirstChild('Torso'), p, f, eang(-0.1, 0, 0) * cf(-0.75, -0.5, 0.25))
		w = wld(chr:FindFirstChild('UpperTorso'), p, f, eang(-0.1, 0, 0) * cf(-0.75, -0.37, 0.25))

		p = prt('BodyArmor_P7', color_schemes[color_scheme_index][1], "Plastic", f, f, 0, 0, siz(1,1,1), suit)
		m = msh('BlockMesh', f, siz(0.515,1.1,0.7), p)
		w = wld(chr:FindFirstChild('Torso'), p, f, eang(0.05, 0, 0) * cf(0.75, 0.5, 0.25))
		w = wld(chr:FindFirstChild('UpperTorso'), p, f, eang(0.05, 0, 0) * cf(0.75, 0.57, 0.25))

		p = prt('BodyArmor_P8', color_schemes[color_scheme_index][1], "Plastic", f, f, 0, 0, siz(1,1,1), suit)
		m = msh('BlockMesh', f, siz(0.515,1.1,0.7), p)
		w = wld(chr:FindFirstChild('Torso'), p, f, eang(0.05, 0, 0) * cf(-0.75, 0.5, 0.25))
		w = wld(chr:FindFirstChild('UpperTorso'), p, f, eang(0.05, 0, 0) * cf(-0.75, 0.57, 0.25))

		p = prt('BodyArmor_P9', color_schemes[color_scheme_index][1], "Plastic", f, f, 0, 0, siz(1,1,1), suit)
		m = msh("BlockMesh", f, siz(2.02, 2.02, 0.65), p)
		w = wld(chr:FindFirstChild("Torso"), p, f, cf(0, 0, -0.25))
		w = wld(chr:FindFirstChild("UpperTorso"), p, f, cf(0, 0.15, -0.25))

		--Head

		p = prt('BodyArmor_P21', color_schemes[color_scheme_index][1], "Plastic", f, f, 0.1, 0, siz(1, 1, 1), suit)
		m = msh('SpecialMesh', 'Sphere', siz(1, 0.9, 0.9), p)
		w = wld(chr:FindFirstChild("Head"), p, f, cf(0, 0.25, 0.25))

		p = prt('BodyArmor_P22', color_schemes[color_scheme_index][1], "Plastic", f, f, 0, 0, siz(1, 0.4, 1), suit)
		m = msh('CylinderMesh', f, siz(1.27, 0.5, 1.27), p)
		w = wld(chr:FindFirstChild("Head"), p, f, cf(0, -0.35, 0))

		p = prt('BodyArmor_P23', color_schemes[color_scheme_index][1], "Plastic", f, f, 0, 0, siz(1, 0.4, 1), suit)
		m = msh('BlockMesh', f, siz(0.3, 5, 0.15), p)
		w = wld(chr:FindFirstChild("Head"), p, f, eang(0.3, -0.5, 0) * cf(-0.25, 0.5, -0.75))

		p = prt('BodyArmor_P24', color_schemes[color_scheme_index][1], "Plastic", f, f, 0, 0, siz(1, 0.4, 1), suit)
		m = msh('BlockMesh', f, siz(0.3, 5, 0.15), p)
		w = wld(chr:FindFirstChild("Head"), p, f, eang(0.3, 0.5, 0) * cf(0.25, 0.5, -0.75))

		p = prt('BodyArmor_P25', color_schemes[color_scheme_index][3], "Plastic", f, f, 0.1, 0, siz(1, 1, 1), suit)
		m = msh('BlockMesh', f, siz(0.4, 0.1, 0.3), p)
		w = wld(chr:FindFirstChild("Head"), p, f, eang(0, 0.1, 0) * cf(-0.25, -0.2, 0.48))

		p = prt('BodyArmor_P26', color_schemes[color_scheme_index][3], "Plastic", f, f, 0.1, 0, siz(1,1, 1), suit)
		m = msh('BlockMesh', f, siz(0.4, 0.1, 0.3), p)
		w = wld(chr:FindFirstChild("Head"), p, f, eang(0, -0.1, 0) * cf(0.25, -0.2, 0.48))

		--Right Arm

		p = prt('BodyArmor_P31', color_schemes[color_scheme_index][1], 'Plastic', f, f, 0.1, 0, siz(1,0.4,1), suit)
		m = msh('BlockMesh', f, siz(1.02, 0.5 ,1.02), p)
		w = wld(chr:FindFirstChild("Right Arm"), p, f, cf(0, 0.5, 0))
		w = wld(chr:FindFirstChild("RightLowerArm"), p, f, cf(0, 0, 0))

		p = prt('BodyArmor_P32', color_schemes[color_scheme_index][4], 'Plastic', f, f, 0.1, 0.9, siz(1,0.4,1), suit)
		m = msh('BlockMesh', f, siz(1.02, 1.03, 1.02), p)
		w = wld(chr:FindFirstChild("Right Arm"), p, f, cf(0, 0.8, 0))
		w = wld(chr:FindFirstChild("RightHand"), p, f, cf(0, 0, 0))

		--Right Leg

		p = prt('BodyArmor_P41', color_schemes[color_scheme_index][4], 'Plastic', f, f, 0.1, 0.9, siz(1,0.4,1), suit)
		m = msh('BlockMesh', f, siz(1.02, 1.03, 1.02), p)
		w = wld(chr:FindFirstChild("Right Leg"), p, f, cf(0, 0.8, 0))
		w = wld(chr:FindFirstChild("RightLowerLeg"), p, f, cf(0, 0, 0))

		p = prt('BodyArmor_P42', color_schemes[color_scheme_index][1], 'Plastic', f, f, 0.1, 0, siz(1,0.4,1), suit)
		m = msh('BlockMesh', f, siz(1.02, 0.5 ,1.02), p)
		w = wld(chr:FindFirstChild("Right Leg"), p, f, cf(0, 0.5, 0))
		w = wld(chr:FindFirstChild("RightFoot"), p, f, cf(0, 0, 0))

		--Left Arm

		p = prt('BodyArmor_P31', color_schemes[color_scheme_index][1], 'Plastic', f, f, 0.1, 0, siz(1,0.4,1), suit)
		m = msh('BlockMesh', f, siz(1.02, 0.5 ,1.02), p)
		w = wld(chr:FindFirstChild("Left Arm"), p, f, cf(0, 0.5, 0))
		w = wld(chr:FindFirstChild("LeftLowerArm"), p, f, cf(0, 0, 0))

		p = prt('BodyArmor_P32', color_schemes[color_scheme_index][4], 'Plastic', f, f, 0.1, 0.9, siz(1,0.4,1), suit)
		m = msh('BlockMesh', f, siz(1.02, 1.03, 1.02), p)
		w = wld(chr:FindFirstChild("Left Arm"), p, f, cf(0, 0.8, 0))
		w = wld(chr:FindFirstChild("LeftHand"), p, f, cf(0, 0, 0))

		--Left Leg

		p = prt('BodyArmor_P41', color_schemes[color_scheme_index][4], 'Plastic', f, f, 0.1, 0.9, siz(1,0.4,1), suit)
		m = msh('BlockMesh', f, siz(1.02, 1.03, 1.02), p)
		w = wld(chr:FindFirstChild("Left Leg"), p, f, cf(0, 0.8, 0))
		w = wld(chr:FindFirstChild("LeftLowerLeg"), p, f, cf(0, 0, 0))


		p = prt('BodyArmor_P42', color_schemes[color_scheme_index][1], 'Plastic', f, f, 0.1, 0, siz(1,0.4,1), suit)
		m = msh('BlockMesh', f, siz(1.02, 0.5 ,1.02), p)
		w = wld(chr:FindFirstChild("Left Leg"), p, f, cf(0, 0.5, 0))
		w = wld(chr:FindFirstChild("LeftFoot"), p, f, cf(0, 0, 0))

		end)

		suitz = true

		print(suit.Parent)
	end

	local reset = function()
		pcall(function() chr.Head:Remove() end)
		--kill_script()
	end

	local smoke = function(l)
		local smoke = game.Lighting:FindFirstChild("Smoke")
		if smoke == nil then
			smoke = prt('Smoke',c3(255,255,255),"Plastic", f, t, 1, 0, siz(1,1,1), game.Lighting)
			local mz = msh('SpecialMesh','FileMesh',siz(5,20,10),smoke)
			mz.TextureId = 'http://www.roblox.com/asset/?id=1095709'
			mz.MeshId = 'http://www.roblox.com/asset/?id=1095708'
		end
		coroutine.resume(coroutine.create(function() 
			local cloud = smoke:Clone()
			cloud.Parent = chr
			cloud.CFrame = l
			while cloud.Transparency > 0 do
				wait()
				cloud.Transparency = cloud.Transparency - 0.25
			end
			cloud.Transparency = 0.05
			while cloud.Transparency < 1 do
				wait()
				cloud.Transparency = cloud.Transparency + 0.05
			end
			cloud:Remove()
		end))
	end

	local smoke_character = function()
		smoke(chr:FindFirstChild("HumanoidRootPart").CFrame)
	end

	local run = function()
		chr.Humanoid.WalkSpeed = 32
	end

	local walk = function()
		chr.Humanoid.WalkSpeed = 16
	end

	local tip_toe = function()
		chr.Humanoid.WalkSpeed = 8
	end

	local med = false
	local ubp = nil
	local gyr = nil
	local meditate = function()
		local cp = chr.HumanoidRootPart.Position
		if not med then
			ubp = new("BodyPosition")
			ubp.Position = cp
			ubp.MaxForce = v3(100000,100000,100000)
			ubp.Parent = chr.HumanoidRootPart
			gyr = new("BodyGyro")
			gyr.P = gyr.P*10
			gyr.MaxTorque = v3(math.huge,math.huge,math.huge)
			gyr.CFrame = chr.HumanoidRootPart.CFrame
			gyr.Parent = chr.HumanoidRootPart
			for i = 1, 20 do wait(0.01)
				chr.Torso["Left Shoulder"].C1 = chr.Torso['Left Shoulder'].C1 * eang(0.03,-0.03,0.1)
				chr.Torso["Right Shoulder"].C1 = chr.Torso['Right Shoulder'].C1 * eang(0.03,0.03,0.1)
			end
			med = true
		else
			chr.Humanoid.Jump = true
			ubp.Parent = nil
			ubp:Remove()
			ubp = nil
			gyr.Parent = nil
			gyr:Remove()
			gyr = nil
			for i = 1, 20 do wait(0.01)
				chr.Torso["Left Shoulder"].C1 = chr.Torso['Left Shoulder'].C1 * eang(-0.03,0.03,0)
				chr.Torso["Right Shoulder"].C1 = chr.Torso['Right Shoulder'].C1 * eang(-0.03,-0.03,0)
			end
			med = false
		end
	end

	local backflip = function()
		local veloc = new("BodyVelocity")
		veloc.MaxForce = v3(0,math.huge,0)
		veloc.Velocity = v3(0,32,0)
		veloc.Parent = chr:FindFirstChild("HumanoidRootPart")
		coroutine.resume(coroutine.create(function()
			local gyro = new("BodyGyro")
			gyro.P = gyro.P * 10
			gyro.maxTorque = v3(100000,100000,100000)*999
			gyro.cframe = chr.HumanoidRootPart.CFrame
			gyro.Parent = chr.HumanoidRootPart
			chr.Humanoid.WalkSpeed = chr.Humanoid.WalkSpeed * 2.0
			wait()
			for i = 1,8 do
				gyro.cframe = gyro.cframe * eang(math.pi/4.0,0,0)
				wait()
			end
			chr.Humanoid.WalkSpeed = chr.Humanoid.WalkSpeed /2.0
			gyro.cframe = chr.HumanoidRootPart.CFrame 
			wait()
			gyro.maxTorque = v3(math.huge,0,math.huge)
			wait(1)
			gyro:Remove()
		end))
		wait()
		veloc:Remove()
	end

	local frontflip = function()
		local veloc = new("BodyVelocity")
		veloc.MaxForce = v3(0,math.huge,0)
		veloc.Velocity = v3(0,32,0)
		veloc.Parent = chr:FindFirstChild("HumanoidRootPart")
		coroutine.resume(coroutine.create(function()
			local gyro = new("BodyGyro")
			gyro.P = gyro.P * 10
			gyro.maxTorque = v3(100000,100000,100000)*999
			gyro.cframe = chr.HumanoidRootPart.CFrame
			gyro.Parent = chr.HumanoidRootPart
			chr.Humanoid.WalkSpeed = chr.Humanoid.WalkSpeed * 2.0
			wait()
			for i = 1,8 do
				gyro.cframe = gyro.cframe * eang(math.pi/-4.0,0,0)
				wait()
			end
			chr.Humanoid.WalkSpeed = chr.Humanoid.WalkSpeed / 2.0
			gyro.cframe = chr.HumanoidRootPart.CFrame 
			wait()
			gyro.maxTorque = v3(math.huge,0,math.huge)
			wait(1)
			gyro:Remove()
		end))
		wait()
		veloc:Remove()
	end

	local hurricane_twist = function()
		local veloc = new("BodyVelocity")
		veloc.MaxForce = v3(0,math.huge,0)
		veloc.Velocity = v3(0,32,0)
		veloc.Parent = chr:FindFirstChild("HumanoidRootPart")
		coroutine.resume(coroutine.create(function()
			local gyro = new("BodyGyro")
			gyro.P = gyro.P * 10
			gyro.maxTorque = v3(100000,100000,100000)*999
			gyro.cframe = chr.HumanoidRootPart.CFrame
			gyro.Parent = chr.HumanoidRootPart
			wait()
			for i = 1,8 do
				gyro.cframe = gyro.cframe * eang(0,math.pi/-4.0,0)
				wait()
			end
			gyro.cframe = chr.HumanoidRootPart.CFrame 
			wait()
			gyro.maxTorque = v3(math.huge,0,math.huge)
			wait(1)
			gyro:Remove()
		end))
		wait(0.3)
		veloc:Remove()
	end

	local rocket_jump = function()
		coroutine.resume(coroutine.create(function()
			local veloc = new("BodyVelocity")
			veloc.MaxForce = v3(0,math.huge,0)
			veloc.Velocity = v3(0,64,0)
			veloc.Parent = chr:FindFirstChild("HumanoidRootPart")
			jump_velocity = veloc
			wait()
		end))
	end
	
	local teleport_character = function(location)
		chr:FindFirstChild("HumanoidRootPart").CFrame = location * cf(0,3,0)
	end

	local disarm_suit = function()
		clear_suit()
		add_hats()
		visibilify_character()
	end

	local arm_suit = function()
		clear_hats()
		invisible_character(1)
		suit_up()
	end

	local suit_change = function()
		if invisi_suit then invisi_suit = false end
		if suitz then
			disarm_suit()
		else
			arm_suit()
		end
	end

	local brick_suit = function(hit)
		if hit.Parent == chr and blah == true then
			blah = false
			arm_suit()
			wait(7)
			blah = true
		end
	end

	pcall(function()
		part_a = game.Workspace.Map.Derp.PartA
		part_a.Touched:Connect(function(h)
			color_scheme_index = 1
			brick_suit(h)
		end)
		part_b = game.Workspace.Map.Derp.PartB
		part_b.Touched:Connect(function(h)
			color_scheme_index = 3
			brick_suit(h)
		end)
		part_c = game.Workspace.Map.Derp.PartC
		part_c.Touched:Connect(function(h)
			color_scheme_index = 4
			brick_suit(h)
		end)
		part_d = game.Workspace.Map.Derp.PartD
		part_d.Touched:Connect(function(h)
			color_scheme_index = 8
			brick_suit(h)
		end)
		part_e = game.Workspace.Map.Derp.PartE
		part_e.Touched:Connect(function(h)
			color_scheme_index = 5
			brick_suit(h)
		end)
		part_f = game.Workspace.Map.Derp.PartF
		part_f.Touched:Connect(function(h)
			color_scheme_index = 7
			brick_suit(h)
		end)
		part_g = game.Workspace.Map.Derp.PartG
		part_g.Touched:Connect(function(h)
			color_scheme_index = 9
			brick_suit(h)
		end)
		part_h = game.Workspace.Map.Derp.PartH
		part_h.Touched:Connect(function(h)
			color_scheme_index = 2
			brick_suit(h)
		end)
		part_i = game.Workspace.Map.Derp.PartI
		part_i.Touched:Connect(function(h)
			color_scheme_index = 10
			brick_suit(h)
		end)
		part_j = game.Workspace.Map.Derp.PartJ
		part_j.Touched:Connect(function(h)
			color_scheme_index = 6
			brick_suit(h)
		end)
	end)

	local tp = function()
		local l = mouse.Hit * cf(0,3,0)
		--if visible then invisible_character(0.5) end
		hurricane_twist()
		smoke_character()
		teleport_character(l)
		smoke_character()
		wait() 
	end

	-----------------------------------------------------------------------------------------------------------------------------------------------

	setKey('e', function()
		backflip()
	end,
	function()
	
	end)
	
	setKey('q', function()
		frontflip()
	end,
	function()
	
	end)
	
	setKey('u', function()
		if buttons_exist() then return end
		color_scheme_index = next_index(color_schemes, color_scheme_index)
		if suitz then
			suit_up()
		end
	end,
	function()
	
	end)
		
	setKey({'4','3'}, function()
		rocket_jump()
	end,
	function()
		pcall(function() jump_velocity.Parent = nil end)
		jump_velocity = nil
	end)
	
	setKey('t', function()
		tp()
	end,
	function()
	
	end)
		
	setKey('r', function()
		reset()
	end,
	function()
	
	end)
	
	setKey('p', function()
		if buttons_exist() then 
			disarm_suit() 
			return
		end
		suit_change()
	end,
	function()
	
	end)
	
	setKey('z', function()
		run()
	end,
	function()
	
	end)
		
	setKey('m', function()
		meditate()
	end,
	function()
	
	end)
	
	setKey('x', function()
		walk()
	end,
	function()
	
	end)
		
		
	setKey('c', function() 
		tip_toe() 
	end,
	function()
	
	end)
		
	setKey('y', function()
		if not visible then 
			if suitz then
				clear_suit()
				invisi_suit = true
				print('wat')
			else
				if invisi_suit then
					suit_up()
					invisi_suit = false
				else
					visibilify_character()
				end
			end
		else
			invisible_character(1)
		end
	end,
	function()
	
	end)

end

wait()
game.Workspace:WaitForChild(plr.Name)
ninja_suit(plr.Character) 
