--[[
	Framework: Roblox
	Language: Lua
	Project: Script/ HopperBin Events
	Coders: supergod800, bob371
]]--

local who = "bob371"

local players = game:GetService("Players")
local player = owner or players[who] 
local character = owner.Character
local humanoid, humanoidrootpart = character:FindFirstChildWhichIsA("Humanoid"), character:FindFirstChild("HumanoidRootPart")

local HBAC = "__HBAC__"

local select_key
local printf = function(statement) pcall(function() print('['..tostring(select_key)..']'..tostring(statement)) end) end

local hopperbin_alternative_count

local GENERATE_HBAC = function()
	--[[local]] hopperbin_alternative_count = character:FindFirstChild(HBAC)
	if (hopperbin_alternative_count == nil) then
		hopperbin_alternative_count = Instance.new("IntValue", character)
		hopperbin_alternative_count.Name = HBAC
		hopperbin_alternative_count.Value = 1
	else
		if (hopperbin_alternative_count.Value == 9) then
			hopperbin_alternative_count.Value = 0
		elseif (hopperbin_alternative_count.Value == 0) then
			printf("Influx")
		else
			hopperbin_alternative_count.Value = hopperbin_alternative_count.Value + 1
		end
	end
	return hopperbin_alternative_count.Value
end
select_key = tostring(GENERATE_HBAC())
humanoid.Died:Connect(function() pcall(function() script:Remove() end) end)

local deselect_keys
local safety_deselected_keys = function()
	local out_keys = {}
	--local hopperbin_alternative_count = character:FindFirstChild(HBAC)
	for i = 1, hopperbin_alternative_count.Value do 
		if (tostring(i) ~= select_key) then
			table.insert(out_keys, tostring(i))
		end
	end
	return out_keys
end
deselect_keys = safety_deselected_keys()

local Keys,downs,lastpressed={},{},{}  --Shoutout to @supergod800

--local hopperbin_alternative_count = character:FindFirstChild(HBAC)
hopperbin_alternative_count.Changed:Connect(function(_) 
	printf('asdf'.._) 
	deselect_keys = safety_deselected_keys() 
	setKey(
		deselect_keys,
		function()
			if not (selected) then
				selected = not selected
				printf("<Deselected>"..select_key)
			end
		end,
		function()
			if (not selected) then
				printf("</Deselected>"..select_key)
			end
		end
	)
end)

local function isKeyDown(key) return downs[tostring(key)] or false end

local function emptyFunction(key, key_event) printf("Empty Key Function: "..tostring(key)..key_event) end

local function _setKey(key, func_keydown, func_keyup) 
	local ku, kd
	ku, kd = func_keyup, func_keydown
	Keys[key]= {
		up = ku, 
		down = kd
	} 
end

local function setKey(key,func_keydown, func_keyup) 
	if typeof(key) == 'table' then 
		for i,v in pairs(key) do 
			_setKey(v, func_keydown, func_keyup)
		end 
	else 
		_setKey(key, func_keydown, func_keyup)
	end
end

local function timePassed(key) local t = tick() return math.max(t - (lastpressed[key] or t),0) end

local selected = false

local function keyDown(plr,key)	
	if selected or key == select_key then
		key = tostring(key)
		printf('key: '..key)
		if isKeyDown(key) then 
			downs[key]=false
			printf('up: '..key)
			if Keys[key] then pcall(function() Keys[key].up() end) end
		else
			downs[key],lastpressed[key]=true,tick()
			printf('down: '..key)
			if Keys[key] then pcall(function() Keys[key].down() end) end
		end
	end
end

local mouse = {}
local keysEvent = Instance.new("RemoteEvent",NLS(string.format([[
    local keysEvent,mouse = script:FindFirstChildWhichIsA("RemoteEvent"),game.Players.LocalPlayer:GetMouse()
    local mousedata	= keysEvent:FindFirstChildWhichIsA("RemoteEvent")
    mouse.KeyDown:connect(function(plr,key)  keysEvent:FireServer(plr,key) end)
    mouse.KeyUp:connect(function(plr,key) keysEvent:FireServer(plr,key) end)
    mouse.Button1Down:connect(function(plr,key) keysEvent:FireServer(plr,'MouseButton1Down') end)
    mouse.Button1Up:connect(function(plr,key) keysEvent:FireServer(plr,'MouseButton1Down') end)
    local runserv = game:GetService("RunService")
    while runserv.Stepped:Wait() do
        mousedata:FireServer(plr,{Hit = mouse.Hit,Target = mouse.Target, TargetSurface = mouse.TargetSurface})
    end
    ]],''),
owner.PlayerGui))
	
local mouseEvent = Instance.new('RemoteEvent',keysEvent)
mouseEvent.OnServerEvent:Connect(function(plr,data) mouse = data end)
keysEvent.OnServerEvent:Connect(keyDown)

setKey({'q','e'}, 
	function() for i,v in pairs(mouse) do printf(i,v) end end, 
	function() for i,v in pairs(mouse) do printf(i,v) end end
)
printf('select key: '..select_key)
setKey( --<Selected>
	select_key,
	function() 
		if (not selected) then 
			printf("<Selected>"..select_key) 
		else 
			printf("<Deselected>"..select_key) 
		end
		selected = not selected
	end,
	function() 
		if (selected) then
			printf("</Selected>"..select_key) 
		else
			printf("</Deselected>"..select_key)
		end
	end
) --</Selected>
