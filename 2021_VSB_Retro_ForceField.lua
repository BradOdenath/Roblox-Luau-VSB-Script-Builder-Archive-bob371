local focus = owner.Character

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
end

local populate_sbs = function(location)
	for i,v in pairs(location:GetDescendants()) do
		_populate_sbs(v)
	end
	location.DescendantAdded:Connect(_populate_sbs)
end

populate_sbs(focus)
color_sbs()

for i,v in pairs(workspace:GetDescendants()) do
	if v:IsA("SelectionBox") then
		v:Remove()
		
	end
end