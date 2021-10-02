--[[_bob371's_Old_Person_Cane_]]--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Player = owner or game.Players.bob371 or game.Players.LocalPlayer
Character = Player.Character
script.Parent = Character

Blah = true --[[ ]]
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
	key = tostring(key)
	print(key)
	if isKeyDown(key) then 
		downs[key]=false
	else
		downs[key],lastpressed[key]=true,tick()
		if Keys[key] then Keys[key]()end
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
owner.PlayerGui))
	
local mouseEvent = Instance.new('RemoteEvent',keysEvent)
mouseEvent.OnServerEvent:Connect(function(plr,data) mouse = data end)
keysEvent.OnServerEvent:Connect(keyDown)


pcall(function()
Character.Humanoid.WalkSpeed = 2
Character.Humanoid.MaxHealth = 50
end)

--[[ * Gun Knife * ]]--

pcall(function() Character.Cane:Remove() end)

Cane = Instance.new("Model")
Cane.Name = "Cane"
Cane.Parent = Character

--[[ * Arm Weld * ]]--

ArmWeld = Instance.new("Weld") 
ArmWeld.Parent = Character["Torso"]
ArmWeld.Part0 = ArmWeld.Parent
ArmWeld.Part1 = Character["Right Arm"]
ArmWeld.C0 = CFrame.new(1.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)

--[[ * Pole * ]]--

Pole = Instance.new("Part")
Pole.formFactor = "Custom"
Pole.Locked = true
Pole.CanCollide = false
Pole.Anchored = false
Pole.Size = Vector3.new(0.3,3.5,0.3)
Pole.TopSurface = 0
Pole.BottomSurface = 0
Pole.Parent = Cane
Mesh = Instance.new("CylinderMesh",Pole)
Weldz = Instance.new("Weld")
Weldz.Parent = Pole
Weldz.Part0 = Character["Right Arm"]
Weldz.Part1 = Pole
Weldz.C0 = CFrame.new(0,-1,1.675) * CFrame.Angles(-math.pi/2,0,0)

--[[ * Handle * ]]--

Handle = Instance.new("Part")
Handle.formFactor = "Custom"
Handle.Locked = true
Handle.CanCollide = false
Handle.Anchored = false
Handle.Size = Vector3.new(0.3,0.9,0.3)
Handle.TopSurface = 0
Handle.BottomSurface = 0
Handle.Parent = Cane
Mesh = Instance.new("CylinderMesh",Handle)
Weld = Instance.new("Weld")
Weld.Parent = Handle
Weld.Part0 = Pole
Weld.Part1 = Handle
Weld.C0 = CFrame.new(0,3.5/2,0) * CFrame.Angles(0,0,math.pi/2)

--[[ * HDents * ]]--

HDents = Instance.new("Part")
HDents.BrickColor = BrickColor.new("Really black")
HDents.formFactor = "Custom"
HDents.Locked = true
HDents.CanCollide = false
HDents.Anchored = false
HDents.Size = Vector3.new(0.2,1,0.2)
HDents.TopSurface = 0
HDents.BottomSurface = 0
HDents.Parent = Cane
Mesh = Instance.new("CylinderMesh",HDents)
Weld = Instance.new("Weld")
Weld.Parent = HDents
Weld.Part0 = Pole
Weld.Part1 = HDents
Weld.C0 = CFrame.new(0,3.5/2,0) * CFrame.Angles(0,0,math.pi/2)

--[[ * Bumber * ]]--

Bumber = Instance.new("Part")
Bumber.BrickColor = BrickColor.new("Really black")
Bumber.formFactor = "Custom"
Bumber.Locked = true
Bumber.CanCollide = false
Bumber.Anchored = false
Bumber.Size = Vector3.new(0.4,0.2,0.4)
Bumber.TopSurface = 0
Bumber.BottomSurface = 0
Bumber.Parent = Cane
Mesh = Instance.new("CylinderMesh",Bumber)
Weld = Instance.new("Weld")
Weld.Parent = Bumber
Weld.Part0 = Pole
Weld.Part1 = Bumber
Weld.C0 = CFrame.new(0,-3.5/2+0.1,0) * CFrame.Angles(0,0,0)

--[[ * Ring_A * ]]--

Ring_A = Instance.new("Part")
Ring_A.BrickColor = BrickColor.new("Really black")
Ring_A.formFactor = "Custom"
Ring_A.Locked = true
Ring_A.CanCollide = false
Ring_A.Anchored = false
Ring_A.Size = Vector3.new(0.4,0.2,0.4)
Ring_A.TopSurface = 0
Ring_A.BottomSurface = 0
Ring_A.Parent = Cane
Mesh = Instance.new("CylinderMesh",Ring_A)
Mesh.Scale = Vector3.new(1,0.5,1)
Weld = Instance.new("Weld")
Weld.Parent = Ring_A
Weld.Part0 = Pole
Weld.Part1 = Ring_A
Weld.C0 = CFrame.new(0,-3.5/2+0.3,0) * CFrame.Angles(0,0,0)

--[[ * Ring_B * ]]--

Ring_B = Instance.new("Part")
Ring_B.BrickColor = BrickColor.new("Really black")
Ring_B.formFactor = "Custom"
Ring_B.Locked = true
Ring_B.CanCollide = false
Ring_B.Anchored = false
Ring_B.Size = Vector3.new(0.4,0.2,0.4)
Ring_B.TopSurface = 0
Ring_B.BottomSurface = 0
Ring_B.Parent = Cane
Mesh = Instance.new("CylinderMesh",Ring_B)
Mesh.Scale = Vector3.new(1,0.5,1)
Weld = Instance.new("Weld")
Weld.Parent = Ring_B
Weld.Part0 = Pole
Weld.Part1 = Ring_B
Weld.C0 = CFrame.new(0,-3.5/2+0.45,0) * CFrame.Angles(0,0,0)

--[[ * Sticky * ]]--

Sticky = Instance.new("Part")
Sticky.BrickColor = BrickColor.new("Really black")
Sticky.formFactor = "Custom"
Sticky.Locked = true
Sticky.CanCollide = false
Sticky.Anchored = false
Sticky.Size = Vector3.new(0.4,0.5,0.4)
Sticky.TopSurface = 0
Sticky.BottomSurface = 0
Sticky.Parent = Cane
Mesh = Instance.new("CylinderMesh",Sticky)
Mesh.Scale = Vector3.new(0.3,2,0.3)
Weld = Instance.new("Weld")
Weld.Parent = Sticky
Weld.Part0 = Pole
Weld.Part1 = Sticky
Weld.C0 = CFrame.new(0,-3.5/2+0.45,0) * CFrame.Angles(0,0,0)

--[[ * Knife * ]]--

Knife = Instance.new("Part")
Knife.BrickColor = BrickColor.new("Really black")
Knife.formFactor = "Custom"
Knife.Reflectance = 1
Knife.Locked = true
Knife.CanCollide = false
Knife.Anchored = false
Knife.Size = Vector3.new(0.4,0.5,0.4)
Knife.TopSurface = 0
Knife.BottomSurface = 0
Knife.Parent = Cane
Meshz = Instance.new("SpecialMesh",Knife)
Meshz.Scale = Vector3.new(0.2,0,0.2) -- (0.2,6,0.2)
Meshz.MeshType = "Sphere"
Weld = Instance.new("Weld")
Weld.Parent = Knife
Weld.Part0 = Pole
Weld.Part1 = Knife
Weld.C0 = CFrame.new(0,-3.5/2,0) * CFrame.Angles(0,0,0)

KnifePos = true

--[[ * Touchie * ]]--

function Touched(hit)
if KnifePos == true then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
hit.Parent.Humanoid.Health = 0
end
end

function Touched2(hit)
if KnifePos == false then return end
if Blah == true then return end
if hit.Parent:findFirstChild("Humanoid") ~= nil then
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 10
end
end

--[[ * Tool * ]]--


--if script.Parent.Name == Player.Name then
--Hopper = Instance.new("HopperBin")
--Hopper.Name = "Cane"
--Hopper.Parent = Player.Backpack
--end

Blah = true

setKey({'f','MouseButton1Down'},
function()
if Blah == true then
Blah = false

if KnifePos == false then 
for i = 1,13 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0.05,-0.07)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0.2,-0.1,0.09)
end
for i = 1,20 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-0.2,0.1,-0.09)
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,-0.05,0.07)
end
for i = 1,7 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0.05,-0.07)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0.2,-0.1,0.09)
end
ArmWeld.C0 = CFrame.new(1.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)
end

if KnifePos == true then 
for i = 1,13 do wait()

Weldz.C0 = Weldz.C0 - Vector3.new(0,0,0.2)

ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0.05,-0.07)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0.2,-0.1,0.09)
end
for i = 1,20 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-0.2,0.1,-0.09)
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,-0.05,0.07)
end
for i = 1,7 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0.05,-0.07)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0.2,-0.1,0.09)

Weldz.C0 = Weldz.C0 + Vector3.new(0,0,0.37142857142857142857142857142857)

end
ArmWeld.C0 = CFrame.new(1.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)
Weldz.C0 = CFrame.new(0,-1,1.675) * CFrame.Angles(-math.pi/2,0,0)
end

Blah = true
return
end
end)


setKey('q',
function()
if Blah == true then
Blah = false
if KnifePos == true then
KnifePos = false
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,-0.05,-0.05) * CFrame.Angles(0.05,0,0.05)
end
for i = 1,12 do wait()
Meshz.Scale = Meshz.Scale + Vector3.new(0,0.5,0)
end
wait(0.2)
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0.05,0.05) * CFrame.Angles(-0.05,0,-0.05)
end
ArmWeld.C0 = CFrame.new(1.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)
Blah = true
return
elseif KnifePos == false then
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,-0.05,-0.05) * CFrame.Angles(0.05,0,0.05)
end
for i = 1,12 do wait()
Meshz.Scale = Meshz.Scale - Vector3.new(0,0.5,0)
end
wait(0.3)
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0.05,0.05) * CFrame.Angles(-0.05,0,-0.05)
end
ArmWeld.C0 = CFrame.new(1.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)
KnifePos = true
Blah = true
return
end
end
end)

--Reload
setKey('r',
function()
if Blah == true then
Blah = false
for i = 1,14 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0.1,0,0)
end
wait()
--Reloader:Play()
for i = 1,4 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,0.1,0)
if KnifePos == true then
Meshz.Scale = Meshz.Scale + Vector3.new(0,1.5,0)
end
end
KnifePos = false
for i = 1,4 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0,-0.1,0)
end
for i = 1,14 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-0.1,0,0)
end
Blah = true
end
end)

--[[
function Selected(mouse) 
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.KeyDown:connect(onKeyDown)
	mouse.Button1Down:connect(function()Clicked(mouse)end) 
	mouse.Button1Up:connect(function()UnClicked(mouse)end)
end 

function Deselected(mouse)
end

Hopper.Selected:connect(Selected)
Hopper.Deselected:connect(Deselected) 
]]
Knife.Touched:connect(Touched)
Pole.Touched:connect(Touched2)