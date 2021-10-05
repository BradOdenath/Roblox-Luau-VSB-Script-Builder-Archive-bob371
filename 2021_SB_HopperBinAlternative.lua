--[[
	Framework: Roblox
	Language: Lua
	Project: Script/ HopperBin Events
	Coders: supergod800, bob371
]]--

local Keys,downs,lastpressed={},{},{}  --Shoutout to @supergod800

local function isKeyDown(key) return downs[tostring(key)] or false end

local function emptyFunction(key, key_event) print("Empty Key Function: "..tostring(key)..key_event) end

local function _setKey(key, func_keydown, func_keyup) 
	
	local ku, kd
	
	ku = func_keyup
	
	kd = func_keydown
	
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

local function timePassed(key)
    local t = tick() return math.max(t - (lastpressed[key] or t),0)
end

local function keyDown(plr,key)	
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
owner.PlayerGui))
	
local mouseEvent = Instance.new('RemoteEvent',keysEvent)
--local cameraEvent = Instance.new('RemoteEvent',keysEvent)
mouseEvent.OnServerEvent:Connect(function(plr,data) mouse = data end)
--cameraEvent.onServerEvent:Connect(function(plr,data) currentcamera = data end)
keysEvent.OnServerEvent:Connect(keyDown)

setKey({'q','e'}, 
	function() for i,v in pairs(mouse) do print(i,v) end end, 
	function() for i,v in pairs(currentcamera) do print(i,v) end end
)