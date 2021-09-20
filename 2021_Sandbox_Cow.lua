pi = math.pi

--[[ @BrownMountain
	Framework: Roblox
	Language: Lua
	Project: Cow
	Coders: YLSID, bob371
]]--

local player = 'LocalPlayer'
if owner then player = owner else player = game.Players[Player] end
local character = player.Character
--mouse = Player:GetMouse()
script.Parent = character

local torso = character.Torso

local sizex, sizey, sizez = torso.Size.x/2, torso.Size.y/2, torso.Size.z/2

local scale = 1

local limb_skew = pi/2

local polish_character = function()
	for i,v in pairs(character:GetChildren()) do
		if v:IsA("Accessory") or v:IsA("Shirt") or v:IsA("Pants") or v:IsA("ShirtGraphic") or v:IsA("CharacterMesh") then
			v:Remove()
		elseif v.Name == 'Torso' then
			if v:FindFirstChild("Decal") ~= nil then
				v:FindFirstChildWhichIsA('Decal'):Remove()
			end
		end
	end
end

local reconnect = function(connection_value,parent)
	local _ = connection_value
	_:Remove()
	_:Clone()
	_.Parent = parent
end

local reanimate = function() reconnect(character:FindFirstChild("Animate"),character) end

local liggamentize = function(limb, attached_to, liggament_type, liggament_name, liggament_c0, liggament_c1)
	--Declare Variables
	local liggament
	--Size Up (Scale)
	print(limb)
	limb.Size = Vector3.new(limb.Size.x * scale, limb.Size.y * scale, limb.Size.z * scale)
	--Smooth Blocks
	limb.FrontSurface, limb.LeftSurface, 
		limb.RightSurface, limb.BottomSurface, 
		limb.BackSurface, limb.TopSurface = 0,0,0,0,0,0
	--Moterize
	liggament = Instance.new(liggament_type)
	liggament.Parent = attached_to
	liggament.Part0 = attached_to
	liggament.Part1 = limb
	if (liggament_type == 'Motor') then
		liggament.MaxVelocity = 0.1
	end
	if (liggament_c0) then
		liggament.C0 = liggament_c0
	end
	if (liggament_c1) then
		liggament.C1 = liggament_c1
	end
	return liggament
end

local configure_left_arm = function()
	local la = character:FindFirstChild("Left Arm")
	local lm = liggamentize(
		la, 				--limb
		torso,				--attached_to	
		"Motor",			--Type	
		"Left Shoulder",	--Name	
		CFrame.new(
			-sizex - la.Size.x/2 +scale, 		--x
			(la.Size.y/4)-2,				--y
			-2.25							--z
			) * CFrame.fromEulerAnglesXYZ(
				0,							--x
				pi/2,						--y	
				0							--z
			),
		CFrame.new(
			0,								--x
			la.Size.y/4,					--y/2
			0								--z
			) * CFrame.fromEulerAnglesXYZ(
				0,							--x
				-limb_skew,					--y
				0							--z	
			)
		)
end				

local configure_right_arm = function()
	local ra = character:FindFirstChild("Right Arm")
	local lm = liggamentize(
		ra, 				--limb
		torso,				--attached_to	
		"Motor",			--Type	
		"Right Shoulder",	--Name	
		CFrame.new(
			sizex - ra.Size.x/2, 			--x
			(ra.Size.y/4)-2,				--y
			-2.25)							--z
			* CFrame.fromEulerAnglesXYZ(
				0,							--x
				pi/2,						--y	
				0							--z
			),
		CFrame.new(
			0,								--x
			ra.Size.y/4,					--y/2
			0								--z
			) * CFrame.fromEulerAnglesXYZ(
				0,							--x
				limb_skew,					--y
				0							--z
			)
		)
end

local configure_left_leg = function()
	local ll = character:FindFirstChild("Left Leg")
	local lm = liggamentize(
		ll, 				--limb
		torso,				--attached_to	
		"Motor",			--type	
		"Left Hip",			--name	
		CFrame.new(			--c0
			-sizex - ll.Size.x/2 +scale, 		--x
			(ll.Size.y/4)-2,				--y
			2.25							--z
			) * CFrame.fromEulerAnglesXYZ(
				0,							--x
				pi/2,						--y	
				0							--z
			),
		CFrame.new(			--c1
			0,								--x
			ll.Size.y/4,					--y/2
			0								--z
			) * CFrame.fromEulerAnglesXYZ(
				0,							--x
				limb_skew,					--y
				0							--z	
			)
		)

end

local configure_right_leg = function()
	local rl = character:FindFirstChild("Right Leg")
	local lm = liggamentize(
		rl, 				--limb
		torso,				--attached_to	
		"Motor",			--type	
		"Right Hip",		--name	
		CFrame.new(			--c0	
			sizex - rl.Size.x/2, 			--x
			(rl.Size.y/4)-2,				--y
			2.25							--z
			) * CFrame.fromEulerAnglesXYZ(
				0,							--x
				pi/2,						--y	
				0							--z
			),
		CFrame.new(			--c1	
			0,								--x
			rl.Size.y/4,					--y/2
			0								--z
			) * CFrame.fromEulerAnglesXYZ(
				0,							--x	
				-limb_skew,					--y	
				0							--z
			)
		)
	
end

local configure_head = function()
	local h = character:FindFirstChild("Head")
	print(h)
	local lm = liggamentize(
		h,					--limb
		torso,				--attached_to
		"Snap",				--type
		"Neck",				--name
		CFrame.new(			--c0	
			0,								--x
			sizey + (h.Size.y/2), 			--y
			-2.5								--z	
			) * CFrame.fromEulerAnglesXYZ(
				0,							--x
				0,							--y		
				0							--z
		),
		nil					--c1
	)
end

local color_character = function(color)
	for i,v in pairs(character:GetChildren()) do
		if v:IsA("BasePart") then
			pcall(function() v.Color = color end)
		end
	end
end

local body_part = function(size, color, name)
	local part = Instance.new("Part")
	part.Size = size
	part.Color = color
	part.BottomSurface,	part.TopSurface = 0, 0
	part.CanCollide = false
	part.Anchored = false
	part.Locked = true
	--part.Massless = true
	part.Name = name
	part.Parent = character
	return part
end

local body_part_character = function()
	local right_arm = body_part(Vector3.new(2.25,2,5.75),Color3.fromRGB(255,255,255),'Ryght Arm')
	local lm = liggamentize(
		right_arm, 			--limb
		torso,				--attached_to	
		"Motor",			--Type	
		"Right Shoulder",	--Name	
		CFrame.new(
			0, 								--x
			0.5,							--y
			0)								--z
			* CFrame.fromEulerAnglesXYZ(
				0,							--x
				pi/2,						--y	
				0							--z
			),
		CFrame.new(
			0,								--x
			right_arm.Size.y/4,				--y
			0								--z
			) * CFrame.fromEulerAnglesXYZ(
				0,							--x
				limb_skew,					--y
				0							--z
			)
		)
	local left_arm = body_part(Vector3.new(1,1.5,1),Color3.fromRGB(255,255,255),'Lhft Arm')
	local lm = liggamentize(
		left_arm,			--limb
		torso,				--attached_to	
		"Motor",			--Type	
		"Lhft Shoulder",	--Name	
		CFrame.new(
			0, 	--x
			-.25,			--y
			2.5								--z
			) * CFrame.fromEulerAnglesXYZ(
				0,							--x
				pi/2,						--y	
				0							--z
			),
		CFrame.new(
			0,								--x
			left_arm.Size.y/4,				--y
			0								--z
			) * CFrame.fromEulerAnglesXYZ(
				0,							--x
				-limb_skew,					--y
				0							--z	
			)
		)
end

local configure_character = function()
	configure_left_arm()
	configure_right_arm()
	configure_left_leg()
	configure_right_leg()
	configure_head()
	polish_character()
	body_part_character()
	color_character(Color3.fromRGB(255,255,255))
	torso.Transparency = 1
	reanimate()
end

local main = function()
	configure_character()
end

main()