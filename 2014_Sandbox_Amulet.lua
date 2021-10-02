--[[_bob371's_Soda_(_Don't_Worry_About_It_)_]]--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Player = owner or game.Players.bob371 or game.Players.LocalPlayer
Character = Player.Character
script.Parent = Character

local Keys,downs,lastpressed={},{},{}

local function isKeyDown(key) return downs[tostring(key)] or false end


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

local function keyDown(plr,key)	
	if Blah == true then
		Blah = false
		key = tostring(key)
		print(key)
		if isKeyDown(key) then 
			downs[key]=false
		else
			downs[key],lastpressed[key]=true,tick()
			if Keys[key] then Keys[key]()end
		end
		Blah = true
	end
end

local mouse = {}
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


--[[ * Fire Can * ]]--

pcall(function() Character.Soda:Remove() end)

Soda = Instance.new("Model")
Soda.Name = "Soda"
Soda.Parent = Character

--[[ * Can * ]]--

Can = Instance.new("Part")
Can.formFactor = "Custom"
Can.Locked = true
Can.CanCollide = false
Can.BrickColor = BrickColor.new("Really red")
Can.Anchored = false
Can.Size = Vector3.new(0.25,0.3,0.25)
Can.TopSurface = 0
Can.BottomSurface = 0
Can.Reflectance = 0.1
Can.Parent = Soda
Mesh = Instance.new("CylinderMesh",Can)
CanWeld = Instance.new("Weld")
CanWeld.Parent = Can
CanWeld.Part0 = Character["Torso"]
CanWeld.Part1 = Can
CanWeld.C0 = CFrame.new(0,0.6,-0.45) * CFrame.Angles(-math.pi/2,0,0)

--[[ * Lid * ]]--

Lid = Instance.new("Part")
Lid.formFactor = "Custom"
Lid.Locked = true
Lid.CanCollide = false
Lid.BrickColor = BrickColor.new("Medium stone grey")
Lid.Anchored = false
Lid.Size = Vector3.new(0.3,0.2,0.3)
Lid.TopSurface = 0
Lid.BottomSurface = 0
Lid.Reflectance = 0.2
Lid.Parent = Soda
Mesh = Instance.new("CylinderMesh",Lid)
Weldz = Instance.new("Weld")
Weldz.Parent = Lid
Weldz.Part0 = Can
Weldz.Part1 = Lid
Weldz.C0 = CFrame.new(0,-0.01,0) * CFrame.Angles(0,0,0)

--[[ * ASLeft * ]]--

ASLeft = Instance.new("Part")
ASLeft.formFactor = "Custom"
ASLeft.Locked = true
ASLeft.CanCollide = false
ASLeft.BrickColor = BrickColor.new("Medium stone grey")
ASLeft.Anchored = false
ASLeft.Size = Vector3.new(0.9,1.1,0.1)
ASLeft.TopSurface = 0
ASLeft.BottomSurface = 0
ASLeft.Reflectance = 0.2
ASLeft.Parent = Soda
Mesh = Instance.new("BlockMesh",ASLeft)
Weldz = Instance.new("Weld")
Weldz.Parent = ASLeft
Weldz.Part0 = Can
Weldz.Part1 = ASLeft
Weldz.C0 = CFrame.new(-0.39,-0.45,0.18) * CFrame.Angles(0,math.pi/2/2/2,0)

--[[ * ASRight * ]]--

ASRight = Instance.new("Part")
ASRight.formFactor = "Custom"
ASRight.Locked = true
ASRight.CanCollide = false
ASRight.BrickColor = BrickColor.new("Medium stone grey")
ASRight.Anchored = false
ASRight.Size = Vector3.new(0.9,1.1,0.1)
ASRight.TopSurface = 0
ASRight.BottomSurface = 0
ASRight.Reflectance = 0.2
ASRight.Parent = Soda
Mesh = Instance.new("BlockMesh",ASRight)
Weldz = Instance.new("Weld")
Weldz.Parent = ASRight
Weldz.Part0 = Can
Weldz.Part1 = ASRight
Weldz.C0 = CFrame.new(0.39,-0.45,0.18) * CFrame.Angles(0,-math.pi/2/2/2,0)

Fire = Instance.new("Part")
Fire.formFactor = "Custom"
Fire.Locked = true
Fire.CanCollide = false
Fire.BrickColor = BrickColor.new("Medium stone grey")
Fire.Anchored = false
Fire.Size = Vector3.new(0.1,2,0.1)
Fire.TopSurface = 0
Fire.BottomSurface = 0
Fire.Transparency = 1
Fire.Parent = Soda
Mesh = Instance.new("BlockMesh",Fire)
Weldz = Instance.new("Weld")
Weldz.Parent = Fire
Weldz.Part0 = Can
Weldz.Part1 = Fire
Weldz.C0 = CFrame.new(0,1,0) * CFrame.Angles(0,0,0)
Burn = Instance.new("Fire")
Burn.Parent = Fire
Burn.Heat = 1000
Burn.Size = 0.1
Burn.Enabled = false
function Burner(hit)
if Burn.Enabled == true then
if hit.Parent:findFirstChild("Humanoid") ~= nil then
for i,v in pairs(hit.Parent:GetChildren()) do
if v.className == "Part" then
pcall(function()
Instance.new("Fire",v)
v.BrickColor = BrickColor.new("Really black")
v:BreakJoints()
end)
end
end
end
end
end

--[[ * CColor Function * ]]--

function CColor(color)
for i = 1,9 do wait()
Can.Reflectance = Can.Reflectance + 0.1
end
pcall(function() Can.BrickColor = BrickColor.new(color) end)
CName()
for i = 1,9 do wait()
Can.Reflectance = Can.Reflectance - 0.1
end
end

CNum = {"Really red","Navy blue","Really black","White",104}

CC = 1

--[[ * Soda Names * ]]--

Hopper = nil
Hover = nil

CNam = {"Fire","Mask","Boom","Heal","Hover"}

function CName()
if Hopper ~= nil then
Hopper.Name = ("Amulet "..(CNam[CC]))
end
end

CColor(CNum[CC])

--[[ * Hover Function * ]]--

SodaFun = false

function Hoverz()
Hover = Instance.new("Part")
Hover.formFactor = "Custom"
Hover.Reflectance = 0.2
Hover.Anchored = true
Hover.Locked = true
Hover.Size = Vector3.new(6,0.2,6)
Hover.BrickColor = BrickColor.new(104)
Hover.CanCollide = true
Hover.Parent = Soda
Meshr = Instance.new("CylinderMesh",Hover)
Meshr.Scale = Vector3.new(0,0,0)

coroutine.resume(coroutine.create(function()
Character.Humanoid.Jump = true
for i = 1,20 do wait()
Meshr.Scale = Meshr.Scale + Vector3.new(0.05,0.05,0.05)
Hover.CFrame = Character.Torso.CFrame + Vector3.new(0,-3,0)
end
SodaFun = true
while SodaFun == true do wait()
Hover.CFrame = Character.Torso.CFrame + Vector3.new(0,-3.025,0)
end
end))

end

--[[ * Fun Stuff :> * ]]--

face = Character.Head:findFirstChild("face")

function SodaFunOn()
if SodaFun == false then
if CC == 1 then

Burn.Enabled = true

elseif CC == 2 then
pcall(function() face.Parent = nil end)
for i = 1,20 do wait()
for i,v in pairs(Character:GetChildren()) do if v.className == "Part" then v.Transparency = v.Transparency + 0.05 end end
for i,v in pairs(Soda:GetChildren()) do if v.className == "Part" then v.Transparency = v.Transparency + 0.05 end end
for i,v in pairs(Character:GetChildren()) do if v.className == "Hat" then pcall(function() v.Handle.Transparency = v.Handle.Transparency + 0.05 end) end end
end

elseif CC == 3 then
for i = 1,10 do wait()
pcall(function() Character.Head.Mesh.Scale = Character.Head.Mesh.Scale + Vector3.new(0.5,0.5,0.5) end)
end
pcall(function()
local Ex = Instance.new("Explosion")
Ex.Position = Character.Head.Position
Ex.BlastRadius = 20
Ex.Parent = Character
end)
for i = 1,10 do wait()
pcall(function() Character.Head.Mesh.Scale = Character.Head.Mesh.Scale + Vector3.new(0.5,0.5,0.5) end)
end
for i = 1,10 do wait()
pcall(function() Character.Head.Mesh.Scale = Character.Head.Mesh.Scale - Vector3.new(1,1,1) end)
end

elseif CC == 4 then
pcall(function() Character.Humanoid.Health = Character.Humanoid.MaxHealth end)
Instance.new("ForceField",Character)

elseif CC == 5 then
Hoverz()

end


SodaFun = true
end
end


function SodaFunOff()
if SodaFun == true then
if CC == 1 then

Burn.Enabled = false

elseif CC == 2 then

pcall(function() face.Parent = Character.Head end)
for i = 1,20 do wait()
for i,v in pairs(Character:GetChildren()) do if v.className == "Part" then v.Transparency = v.Transparency - 0.05 end end
for i,v in pairs(Soda:GetChildren()) do if v.className == "Part" then v.Transparency = v.Transparency - 0.05 end end
for i,v in pairs(Character:GetChildren()) do if v.className == "Hat" then pcall(function() v.Handle.Transparency = v.Handle.Transparency - 0.05 end) end end
end

elseif CC == 3 then
-- Nil

elseif CC == 4 then
for i,v in pairs(Character:GetChildren()) do
if v.className == "ForceField" then
v:Remove()
end
end 

elseif CC == 5 then
for i = 1,20 do wait()
Hover.Transparency = Hover.Transparency + 0.05
Hover.Reflectance = Hover.Reflectance -0.02
Meshr.Scale = Meshr.Scale - Vector3.new(0.05,0.05,0.05)
end
wait(0.5)
pcall(function() Hover:Remove() end)

end
SodaFun = false
end
end

--[[ * Tool * ]]--

--[[if script.Parent.Name == Player.Name then
Hopper = Instance.new("HopperBin")
Hopper.Name = "Amulet"
Hopper.Parent = Player.Backpack
end]]

Blah = true

setKey({'f','MouseButton1Down'},
function()
for i = 1,9 do wait()
Can.Reflectance = Can.Reflectance + 0.1
end
if SodaFun == false then
SodaFunOn()
elseif SodaFun == true then
SodaFunOff()
end
for i = 1,9 do wait()
Can.Reflectance = Can.Reflectance - 0.1
end
end)

setKey('z',
function()
if Hover ~= nil then
if Hover.Size == Vector3.new(6,0.2,6) then
for i = 1,24 do wait()
Hover.Size = Hover.Size + Vector3.new(0.25,0,0.25)
Hover.CFrame = Character.Torso.CFrame + Vector3.new(0,-3,0)
end
elseif Hover.Size == Vector3.new(12,0.2,12) then
for i = 1,24 do wait()
Hover.Size = Hover.Size - Vector3.new(0.25,0,0.25)
Hover.CFrame = Character.Torso.CFrame + Vector3.new(0,-3,0)
end
end
end
end)

setKey('q',function()
if SodaFun == false then
if CC == 1 then
CC = table.maxn(CNum)
else
CC = CC - 1
end
CColor(CNum[CC])
end
end)

setKey('e',function()
if CC == table.maxn(CNum) then
CC = 1
else
CC = CC + 1
end
CColor(CNum[CC])
end)

function DeathCheck()
if CC == 2 and SodaFun == true then
Blah = false
wait()
pcall(function() face.Parent = Character.Head end)
for i = 1,20 do wait()
for i,v in pairs(Character:GetChildren()) do if v.className == "Part" then v.Transparency = v.Transparency - 0.05 end end
for i,v in pairs(Soda:GetChildren()) do if v.className == "Part" then v.Transparency = v.Transparency - 0.05 end end
for i,v in pairs(Character:GetChildren()) do if v.className == "Hat" then pcall(function() v.Handle.Transparency = v.Handle.Transparency - 0.05 end) end end
end
end
end

--[[
function Selected(Mouse) 
	Mouse.Icon = "rbxasset://textures\\GunCursor.png"
	Mouse.KeyDown:connect(onKeyDown)
	Mouse.Button1Down:connect(function()Clicked(Mouse)end) 
	CName()
end 

function Deselected(Mouse)
end

Hopper.Selected:connect(Selected)
Hopper.Deselected:connect(Deselected) 
]]

Character.Humanoid.Died:connect(DeathCheck)
Fire.Touched:connect(Burner)