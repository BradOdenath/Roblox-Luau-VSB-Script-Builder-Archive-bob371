--[[_bob371's_Wings_For_xXtaylor10101Xx_]]--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Player = owner or game.Players.GForcebot or game.Players.LocalPlayer
Character = Player.Character
script.Parent = Character

--[[ * Fire Middle * ]]--

ColorABC = BrickColor.new("Medium stone grey")

LolWasFlying = false
Flying = false
Running = false

pcall(function() Character.Wings:Remove() end)

Wings = Instance.new("Model")
Wings.Name = "Wings"
Wings.Parent = Character

--[[ * Juice * ]]--

Juice = Instance.new("BodyPosition")
Juice.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
Swush = Instance.new("BodyGyro")
Swush.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
Boost = Instance.new("BodyVelocity")
Boost.MaxForce = Vector3.new(math.huge,math.huge,math.huge)

--[[ * Neck Weld * ]]--

Neck = Instance.new("Weld") 
Neck.Parent = Character["Torso"]
Neck.Part0 = Neck.Parent
Neck.Part1 = Character["Head"]
Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

--[[ * Body Weld * ]]--

Body = Instance.new("Weld")
Body.Parent = Character
Body.Name = "Body"
Body.Part0 = Character.HumanoidRootPart
Body.Part1 = Character.Torso
--Body.C0 = Body.C0 * CFrame.Angles(-math.pi/2,0,0)

Angles = {
	Fly = CFrame.Angles(-math.pi/2,0,0),
	Stand = CFrame.Angles(0,0,0),
	Run = CFrame.Angles(math.pi/4,0,0)
}

Animate = {
	Fly = function()
		local _c
		if Running then
			_c = Angles.Run
			Running = false
		else
			_c = Angles.Stand
		end
		local steps = 3
		for i = 1,steps do wait()
			local increment = _c:Lerp(Angles.Fly,i/steps)
			Body.C0 = increment
		end
		Body.C0 = Angles.Fly
	end,
	Stand = function()
		local _c
		if Running then
			_c = Angles.Run
			Running = false
		else
			_c = Angles.Fly
		end
		local steps = 3
		for i = 1,steps do wait()
			local increment = _c:Lerp(Angles.Stand,i/steps)
			Body.C0 = increment
		end
		--Body.C0 = Angles.Stand
	end,
	Run = function()
		local _c
		if Flying then
			_c = Angles.Fly
		else
			_c = Angles.Stand
		end
		local steps = 3
		for i = 1,steps do wait()
			local increment = _c:Lerp(Angles.Run,i/steps)
			Body.C0 = increment
		end
		Body.C0 = Angles.Run
	end
}

local lawnMower = function()
	Boost.Parent = nil
	Juice.Parent = nil
	Swush.Parent = nil
end

--[[
	Framework: Roblox
	Language: Lua
	Project: Script/ HopperBin Events
	Coders: supergod800, bob371
]]--

local runningKeys = {'w','a','s','d'}

local Keys,downs,lastpressed={},{},{}
local mouse = {}

local function isKeyDown(key) return downs[tostring(key)] or false end

local function isKeyDownFromKeys(keys) 
	for i,key in pairs(keys) do
		for downKey, status in pairs(downs) do
			--print('downs:'..tostring(downKey)..' | key:'..tostring(key))
			if key == downKey then
				if status then
					return true
				end
			end
		end
	end
	return false
end

local function isRunning()
	return isKeyDownFromKeys(runningKeys)
end

local function _setKey(key,func) Keys[key]=func end
local function setKey(key,func) 
	if typeof(key) == 'table' then 
		for i,v in pairs(key) do 
			_setKey(v, func) 
		end 
	else 
		_setKey(key, func) 
	end
end

local function timePassed(key)
    local t = tick() return math.max(t - (lastpressed[key] or t),0)
end

local function onKeyUp(key)
	print('oku'..tostring(key))
	if key == 'MouseButton1Down' then
	Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
	Flying = false
	end
	if Flying == false then
		if isRunning() then
			Animate.Run()
		else
			Animate.Stand()
		end
	end
	if key == 't' or key == 'h' then
		lawnMower()
		if LolWasFlying then
			LolWasFlying = false
			flyer()
		end
		if key == 't' then
			if (mouse.Target ~= nil) then
				Character.HumanoidRootPart.CFrame = mouse.Hit
			end
		end
	end
end

local function keyDown(plr,key)	
	key = tostring(key)
	--print(key)
	if isKeyDown(key) then 
		downs[key]=false
		onKeyUp(key)
	else
		downs[key],lastpressed[key]=true,tick()
		if Keys[key] then Keys[key]()end
	end
end

local keysEvent = Instance.new("RemoteEvent",NLS(string.format([[
    local keysEvent,mouse = script:FindFirstChildWhichIsA("RemoteEvent"),game.Players.LocalPlayer:GetMouse()
    local mousedata = keysEvent:FindFirstChildWhichIsA("RemoteEvent")
    mouse.KeyDown:connect(function(plr,key)  keysEvent:FireServer(plr,key) end)
    mouse.KeyUp:connect(function(plr,key) keysEvent:FireServer(plr,key) end)
    mouse.Button1Down:connect(function(plr,key) keysEvent:FireServer(plr,'MouseButton1Down') end)
    mouse.Button1Up:connect(function(plr,key) keysEvent:FireServer(plr,'MouseButton1Down') end)
    local runserv = game:GetService("RunService")
    while runserv.Stepped:Wait() do
        mousedata:FireServer(plr,{Hit = mouse.Hit,Target = mouse.Target})
    end
    ]],''),
Player.PlayerGui))
	
local mouseEvent = Instance.new('RemoteEvent',keysEvent)
mouseEvent.OnServerEvent:Connect(function(plr,data) mouse = data end)
keysEvent.OnServerEvent:Connect(keyDown)


--[[ * Middle * ]]--

Middle = Instance.new("Part")
Middle.formFactor = "Custom"
Middle.Locked = true
Middle.CanCollide = false
Middle.BrickColor = ColorABC
Middle.Anchored = false
Middle.Size = Vector3.new(1.25,2,1.25)
Middle.TopSurface = 0
Middle.BottomSurface = 0
Middle.Reflectance = 0
Middle.Parent = Wings
Mesh = Instance.new("CylinderMesh",Middle)
MidWeld = Instance.new("Weld")
MidWeld.Parent = Middle
MidWeld.Part0 = Character["Torso"]
MidWeld.Part1 = Middle
MidWeld.C0 = CFrame.new(0,0,0.5) * CFrame.Angles(0,0,0)

--[[ * Hole * ]]--

Hole = Instance.new("Part")
Hole.formFactor = "Custom"
Hole.Locked = true
Hole.CanCollide = false
Hole.BrickColor = BrickColor.new("Really black")
Hole.Anchored = false
Hole.Size = Vector3.new(1.2,2,1.2)
Hole.TopSurface = 0
Hole.BottomSurface = 0
Hole.Reflectance = 0
Hole.Parent = Wings
HMesh = Instance.new("CylinderMesh",Hole)
HWeld = Instance.new("Weld")
HWeld.Parent = Hole
HWeld.Part0 = Middle
HWeld.Part1 = Hole
HWeld.C0 = CFrame.new(0,-0.01,0) * CFrame.Angles(0,0,0)

--[[ * WingA * ]]--

WingA = Instance.new("Part")
WingA.formFactor = "Custom"
WingA.Locked = true
WingA.CanCollide = false
WingA.BrickColor = ColorABC
WingA.Anchored = false
WingA.Size = Vector3.new(0.75,0.75,0.75/2)
WingA.TopSurface = 0
WingA.BottomSurface = 0
WingA.Reflectance = 0
WingA.Parent = Wings
MeshA = Instance.new("BlockMesh",WingA)
WeldA = Instance.new("Weld")
WeldA.Parent = WingA
WeldA.Part0 = Middle
WeldA.Part1 = WingA
WeldA.C0 = CFrame.new(0.5,0.5,0.25) * CFrame.Angles(0,0,0)

--[[ * WingB * ]]--

WingB = Instance.new("Part")
WingB.formFactor = "Custom"
WingB.Locked = true
WingB.CanCollide = false
WingB.BrickColor = ColorABC
WingB.Anchored = false
WingB.Size = Vector3.new(0.75,0.75,0.75/2)
WingB.TopSurface = 0
WingB.BottomSurface = 0
WingB.Reflectance = 0
WingB.Parent = Wings
MeshB = Instance.new("BlockMesh",WingB)
WeldB = Instance.new("Weld")
WeldB.Parent = WingB
WeldB.Part0 = Middle
WeldB.Part1 = WingB
WeldB.C0 = CFrame.new(-0.5,0.5,0.25) * CFrame.Angles(0,0,0)

Wingz = false

function GWings()
for i = 1,10 do wait()
WingA.Size = WingA.Size + Vector3.new(0.3,0.1,0)
WingB.Size = WingA.Size
WeldA.Parent = WingA
WeldA.Part0 = Middle
WeldA.Part1 = WingA
WeldB.Parent = WingB
WeldB.Part0 = Middle
WeldB.Part1 = WingB
WeldB.C0 = WeldB.C0 - Vector3.new(0.115,0.05,-0.085)
WeldB.C0 = WeldB.C0 * CFrame.Angles(0,0.05,0)
WeldA.C0 = WeldA.C0 + Vector3.new(0.115,-0.05,0.085)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,-0.05,0)
end
end

function RWings()
for i = 1,10 do wait()
WingA.Size = WingA.Size - Vector3.new(0.3,0.1,0)
WingB.Size = WingA.Size
WeldA.Parent = WingA
WeldA.Part0 = Middle
WeldA.Part1 = WingA
WeldB.Parent = WingB
WeldB.Part0 = Middle
WeldB.Part1 = WingB
WeldB.C0 = WeldB.C0 + Vector3.new(0.115,0.05,-0.085)
WeldB.C0 = WeldB.C0 * CFrame.Angles(0,-0.05,0)
WeldA.C0 = WeldA.C0 - Vector3.new(0.115,-0.05,0.085)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0.05,0)
end
end

function Flap()
for i = 1,5 do wait()
Character.Torso["Right Shoulder"].DesiredAngle = math.pi
Character.Torso["Left Shoulder"].DesiredAngle = -math.pi
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0.2,0)
WeldB.C0 = WeldB.C0 * CFrame.Angles(0,-0.2,0)
WeldA.C0 = WeldA.C0 - Vector3.new(0,0,0.15*2)
WeldB.C0 = WeldB.C0 - Vector3.new(0,0,0.15*2)
end
for i = 1,5 do wait()
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,-0.2,0)
WeldB.C0 = WeldB.C0 * CFrame.Angles(0,0.2,0)
WeldA.C0 = WeldA.C0 + Vector3.new(0,0,0.15*2)
WeldB.C0 = WeldB.C0 + Vector3.new(0,0,0.15*2)
Character.Torso["Right Shoulder"].DesiredAngle = math.pi
Character.Torso["Left Shoulder"].DesiredAngle = -math.pi
end
end

function Jet()
Character.Torso["Right Shoulder"].DesiredAngle = math.pi
Character.Torso["Left Shoulder"].DesiredAngle = -math.pi
end


function Fly(cframe)
	if cframe then
		
	end
end

--[[ * Tool * ]]--

--[[if script.Parent.Name == Player.Name then
Hopper = Instance.new("HopperBin")
Hopper.Name = "Wings"
Hopper.Parent = Player.Backpack
end]]

Blah = true


function flyer()
if Blah == true then
Blah = false

Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
Flying = true
Animate.Fly()
Swush.Parent = Character.HumanoidRootPart
while Flying do

if Wingz then Flap() elseif not Wingz then Jet() end

if mouse.Target then
Swush.CFrame = CFrame.new(Character.HumanoidRootPart.Position,mouse.Hit.p)
Boost.Parent = nil
Juice.Parent = Character.HumanoidRootPart
Juice.Position = mouse.Hit.p + Vector3.new(0,4,0)
else
Boost.Parent = Character.HumanoidRootPart
Boost.Velocity = Swush.CFrame.lookVector * 100
Juice.Parent = nil
end

wait()
end
Juice.Parent = nil
Swush.Parent = nil
Boost.Parent = nil
Blah = true
return
end
end


setKey('MouseButton1Down', flyer())

setKey('t',
function()
	if (mouse.Target ~= nil) then
		Animate.Fly()
		Boost.Parent = nil	
		Boost.Parent = nil
		Juice.Parent = Character.HumanoidRootPart
		Juice.Position = mouse.Hit.p + Vector3.new(0,4,0)
		Swush.CFrame = CFrame.new(Character.HumanoidRootPart.Position,mouse.Hit.p)
	end
end)

setKey('h',
function()
	if Flying then
		Flying = false
		LolWasFlying = true
	end
	Animate.Fly()
	Boost.Parent = nil
	Juice.Parent = Character.HumanoidRootPart
	Juice.Position = Character.HumanoidRootPart.Position
	Swush.CFrame = CFrame.new(Character.HumanoidRootPart.Position,mouse.Hit.p)
end)

setKey(runningKeys, function()
	if Flying == false then
		Running = true
		Animate.Run()
	end
end)

setKey('p',
function()
if Blah == true then
Blah = false
if Wingz == false then
GWings()
Wingz = true
elseif Wingz == true then
RWings()
Wingz = false
end
Blah = true
return
end
end)

function DeathCheck()
if CC == 2 and SodaFun == true then
Blah = false
wait()
pcall(function() face.Parent = Character.Head end)
for i = 1,20 do wait()
for i,v in pairs(Character:GetChildren()) do if v.className == "Part" then v.Transparency = v.Transparency + 0.05 end end
for i,v in pairs(Wings:GetChildren()) do if v.className == "Part" then v.Transparency = v.Transparency + 0.05 end end
for i,v in pairs(Character:GetChildren()) do if v.className == "Hat" then pcall(function() v.Handle.Transparency = v.Handle.Transparency + 0.05 end) end end
end
end
end
--[[
function Selected(mouse) 
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.KeyDown:connect(onKeyDown)
	mouse.Button1Down:connect(function()Clicked(mouse)end) 
	mouse.Button1Up:connect(function()UnClicked(mouse)end) 
--	CName()
end 

function Deselected(mouse)
end

Hopper.Selected:connect(Selected)
Hopper.Deselected:connect(Deselected) ]]

Character.Humanoid.Died:connect(DeathCheck)
