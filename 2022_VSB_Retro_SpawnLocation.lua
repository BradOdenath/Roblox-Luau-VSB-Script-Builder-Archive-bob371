local MIN = 0
local MAX = 255
local STEP = 15
local COUNTER = 0
local STATUS = true

local sbColor = function(selection_box)
	--print(COUNTER,_COUNTER)
	selection_box.Color3 = Color3.fromRGB(COUNTER,0,MAX-COUNTER)
	selection_box.SurfaceColor3 = selection_box.Color3
end


local sbs = {}
local _sbs = false
color_sbs = function()
	if (_sbs == false) then
		_sbs = true
		coroutine.resume(coroutine.create(function()
			while (#sbs > 0) do wait()
				if (COUNTER >= MAX) then
					_COUNTER = false
				elseif (COUNTER <= MIN) then
					_COUNTER = true
				end
				if (_COUNTER) then
					COUNTER = COUNTER + STEP
				else
					COUNTER = COUNTER - STEP
				end
				--print(COUNTER)
				for i,v in pairs(sbs) do
					sbColor(v)
				end
			end
			_sbs = false
		end))
	end
end

clear_sbs = function()
	for i,v in pairs(sbs) do
		pcall(function()
			table.remove(sbs,i)
			v.Parent = nil
			v:Remove()
		end)
	end
	sbs = {}
end

local sb = function(part)
	local _sb = Instance.new("SelectionBox")
	_sb.Parent = part
	_sb.Adornee = part
	_sb.Name = "SB"
	table.insert(sbs,_sb)
	return _sb
end

local _populate_sbs = function(v)
	if v:IsA("BasePart") then
		sb(v)
	end
	if (not _sbs) then
		color_sbs()
	end
end

local populate_sbs = function(location)
	pcall(function()
		local ff = Instance.new("ForceField",focus)
		ff.Visible = false

	end)
	for i,v in pairs(location:GetDescendants()) do
		_populate_sbs(v)
	end
	location.DescendantAdded:Connect(_populate_sbs)
	wait(10)	
	for i,v in pairs(location:GetDescendants()) do
		if v:IsA("SelectionBox") then
			v:Remove()
			
		end
	end
end

local spawn = function()
	local _sl = Instance.new("SpawnLocation")
	_sl.Name = "Handle"
	_sl.Locked = true
	_sl.CanCollide = true
	_sl.Anchored = true
	_sl.Massless = true
	_sl.Size = Vector3.new(12,1,12)
	_sl.BottomSurface, _sl.RightSurface, _sl.LeftSurface, _sl.BackSurface, _sl.FrontSurface, _sl.TopSurface = 2,2,2,2,2,0
	_sl.Parent = workspace:FindFirstChild("Base") or workspace
	_sl.CFrame = CFrame.new(0,0.5,0)	local _dc = Instance.new("Decal")
	_dc.Texture = "rbxasset://textures/SpawnLocation.png"
	_dc.Face = "Top"
	_dc.Parent = _sl	
	_sl.Touched:Connect(function(hit) 
		local _ff = hit.Parent:FindFirstChildWhichIsA("ForceField")
		if (_ff) then
			_ff:Remove()
			populate_sbs(hit.Parent)
		end
	end)
	return _sl
end

local add_spawn  = function()
	local _t = spawn()
end

local main = function()
	add_spawn()
end

main()
