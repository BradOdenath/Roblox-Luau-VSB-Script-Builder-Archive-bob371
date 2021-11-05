--[[Bleh]]-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

who = owner.Name or "bob371"

vip = game.Players[who]
char = vip.Character

Main1 = Instance.new("Part")
Main1.CanCollide = false
Main1.Locked = true
Main1.Anchored = false
Main1.formFactor = "Plate"
Main1.Color = BrickColor.new("Black").Color
Main1.Size = Vector3.new(1,1.4,2)
Main1.TopSurface = 0
Main1.BottomSurface = 0
Main1.Parent = char
Weld = Instance.new("Weld")
Weld.Parent = Main1
Weld.Part0 = char["Right Arm"]
Weld.Part1 = Main1
Weld.C0 = CFrame.new(0,-2,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.75,1,1)
Mesh.Parent = Main1
Main2 = Instance.new("Part")
Main2.CanCollide = false
Main2.Locked = true
Main2.Anchored = false
Main2.formFactor = "Plate"
Main2.Color = BrickColor.new("Medium stone grey").Color
Main2.Size = Vector3.new(1,1.3,1)
Main2.TopSurface = 0
Main2.BottomSurface = 0
Main2.Parent = char
Weld = Instance.new("Weld")
Weld.Parent = Main2
Weld.Part0 = char["Right Arm"]
Weld.Part1 = Main2
Weld.C0 = CFrame.new(0,-1,0) * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
Mesh = Instance.new("CylinderMesh")
Mesh.Scale = Vector3.new(0.3,1,0.3)
Mesh.Parent = Main2
Smoke2 = Instance.new("Smoke")
Smoke2.Enabled = false
Smoke2.Size = 20
Smoke2.RiseVelocity = 0
Smoke2.Opacity = 1
Smoke2.Parent = Main2
Main3 = Instance.new("Part")
Main3.CanCollide = false
Main3.Locked = true
Main3.Anchored = false
Main3.formFactor = "Plate"
Main3.Color = BrickColor.new("Medium stone grey").Color
Main3.Size = Vector3.new(1,1,1)
Main3.TopSurface = 0
Main3.BottomSurface = 0
Main3.Parent = char
Weld = Instance.new("Weld")
Weld.Parent = Main3
Weld.Part0 = char["Right Arm"]
Weld.Part1 = Main3
Weld.C0 = CFrame.new(0,-1.25,-0.5) * CFrame.fromEulerAnglesXYZ(0,0,0)
Mesh = Instance.new("CylinderMesh")
Mesh.Scale = Vector3.new(0.3,0.5,0.3)
Mesh.Parent = Main3
Main4 = Instance.new("Part")
Main4.CanCollide = false
Main4.Locked = true
Main4.Anchored = false
Main4.formFactor = "Plate"
Main4.Color = BrickColor.new("Medium stone grey").Color
Main4.Size = Vector3.new(1,1,1)
Main4.TopSurface = 0
Main4.BottomSurface = 0
Main4.Parent = char
Weld = Instance.new("Weld")
Weld.Parent = Main4
Weld.Part0 = char["Right Arm"]
Weld.Part1 = Main4
Weld.C0 = CFrame.new(0,-1.25,0.5) * CFrame.fromEulerAnglesXYZ(0,0,0)
Mesh = Instance.new("CylinderMesh")
Mesh.Scale = Vector3.new(0.3,0.5,0.3)
Mesh.Parent = Main4

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

setKey({'e','q','MouseButton1Down'}, 
	function() Smoke2.Enabled = true end, 
	function() Smoke2.Enabled = false end
)

