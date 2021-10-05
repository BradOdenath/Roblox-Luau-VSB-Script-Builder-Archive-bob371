who = "bob371"

Speed = 50

--[[if script.Parent.className ~= "HopperBin" then
Tool = Instance.new("HopperBin")
Tool.Name = "Mining ["..Speed.."]"
Tool.Parent = game.Players[who].Backpack
Tool.TextureId = "http://www.roblox.com/asset/?id=35431045"
script.Parent = Tool
end]]

Tool = script.Parent

vip = owner or game.Players.LocalPlayer or game.Players[who]
char = vip.Character
--[[
	Framework: Roblox
	Language: Lua
	Project: Script/ HopperBin Events
	Coders: supergod800, bob371
]]--

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

local function onKeyUp(key)
	--mouse.Icon = "http://www.roblox.com/asset/?id=33567812"
end

local function keyDown(plr,key)	
	key = tostring(key)
	print(key)
	if isKeyDown(key) then 
		downs[key]=false
		onKeyUp(key)
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
vip.PlayerGui))
	
local mouseEvent = Instance.new('RemoteEvent',keysEvent)
mouseEvent.OnServerEvent:Connect(function(plr,data) mouse = data end)
keysEvent.OnServerEvent:Connect(keyDown)


SPL = Instance.new("SelectionPointLasso")
SPL.Parent = game.Workspace.CurrentCamera
SPL.Humanoid = char.Humanoid
SPL.Color = BrickColor.new("Really red")
SPL.Visible = false

Block = Instance.new("Part")

function CheckBlock()
Block.Parent = game.Lighting
for i,v in pairs(game.Workspace:GetChildren()) do
if v.className == "Part" then
if v.Name == "Block" then
if v.CFrame == Block.CFrame then
v:Remove()
end
end
end
end
Block.Parent = game.Workspace
end

Clickingz = true

setKey({'l','MouseButton1Down'},
function()
--mouse.Icon = "http://www.roblox.com/asset/?id=33567823"
if mouse.Target ~= nil then
if mouse.Target.Name == "Block" then
print(mouse.TargetSurface)
if mouse.TargetSurface == Enum.NormalId.Top then
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame + Vector3.new(8,0,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame - Vector3.new(8,0,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame + Vector3.new(0,0,8)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame - Vector3.new(0,0,8)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame - Vector3.new(0,8,0)
CheckBlock()
mouse.Target:Remove()
end

if mouse.TargetSurface == Enum.NormalId.Left then
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame + Vector3.new(0,8,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame + Vector3.new(8,0,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame + Vector3.new(0,0,8)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame - Vector3.new(0,0,8)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame - Vector3.new(0,8,0)
CheckBlock()
mouse.Target:Remove()
end

if mouse.TargetSurface == Enum.NormalId.Right then
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame + Vector3.new(0,8,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame - Vector3.new(8,0,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame + Vector3.new(0,0,8)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame - Vector3.new(0,0,8)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame - Vector3.new(0,8,0)
CheckBlock()
mouse.Target:Remove()
end

if mouse.TargetSurface == Enum.NormalId.Front then
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame + Vector3.new(8,0,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame - Vector3.new(8,0,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame + Vector3.new(0,0,8)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame + Vector3.new(0,8,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame - Vector3.new(0,8,0)
CheckBlock()
mouse.Target:Remove()
end

if mouse.TargetSurface == Enum.NormalId.Back then
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame + Vector3.new(8,0,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame - Vector3.new(8,0,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame - Vector3.new(0,0,8)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame + Vector3.new(0,8,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame - Vector3.new(0,8,0)
CheckBlock()
mouse.Target:Remove()
end

if mouse.TargetSurface == Enum.NormalId.Bottom then
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame + Vector3.new(8,0,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame - Vector3.new(8,0,0)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame + Vector3.new(0,0,8)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame - Vector3.new(0,0,8)
CheckBlock()
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.CFrame = mouse.Target.CFrame + Vector3.new(0,8,0)
CheckBlock()
mouse.Target:Remove()
end

end
end
end)


--function onKeyDown(key, mouse)
setKey('p',
function()
if key == "p" then
for i,v in pairs(game.Workspace:GetChildren()) do
if v.className == "Part" then
if v.Name == "Block" then
v:Remove()
end
end
end
end
end)

setKey('f',
function()
if char.Torso:findFirstChild("BodyVelocity") == nil and char.Torso:findFirstChild("BodyGyro") == nil then
d = Instance.new("BodyVelocity")
d.velocity = Vector3.new(0,Speed,0)
d.maxForce = Vector3.new(0,math.huge,0)
d.Parent = char.Torso
g = Instance.new("BodyGyro")
g.maxTorque = Vector3.new(math.huge,0,math.huge)
g.Parent = char.Torso
else
for i,v in pairs(char.Torso:GetChildren()) do
if v.className == "BodyVelocity" or v.className == "BodyGyro" then
v:Remove()
end
end
end
end)

--[[if key == "z" then
Speed = Speed - 5
if char.Torso:findFirstChild("BodyVelocity") ~= nil then char.Torso.BodyVelocity.velocity = Vector3.new(0,Speed,0) end
Tool.Name = "Mining ["..Speed.."]"
end
if key == "x" then
Speed = Speed + 5
if char.Torso:findFirstChild("BodyVelocity") ~= nil then char.Torso.BodyVelocity.velocity = Vector3.new(0,Speed,0) end
Tool.Name = "Mining ["..Speed.."]"
end]]

setKey('q', function()
if mouse.Target == nil then return end
if game.Workspace:findFirstChild("Block") ~= nil then return end
Block = Instance.new("Part")
Block.Locked = true
Block.Name = "Block"
Block.Anchored = true
Block.BrickColor = BrickColor.new("Dark stone grey")
Block.formFactor = "Symmetric"
Block.Size = Vector3.new(8,8,8)
Block.TopSurface = 0
Block.BottomSurface = 0
Block.Material = "Slate"
Block.CanCollide = true
Block.Parent = game.Workspace
Block.Position = mouse.Hit.p
end)

setKey('e',
function()
if mouse.Target == nil then return end
if mouse.Target.Name == "Block" then
MT = mouse.Target
MT.Transparency = 1
wait(2)
MT.Transparency = 0
end
end)

setKey('t', 
function()
char.Torso.CFrame = CFrame.new(mouse.Hit.p.x,mouse.Hit.p.y+3,mouse.Hit.p.z)
end)

setKey('r', 
function()
if mouse.Target == nil then return end
if mouse.Target.Name == "Block" then
mouse.Target:Remove()
SPL.Visible = false
end
end)

setKey('u',
function()
if game.Players:GetPlayerFromCharacter(mouse.Target.Parent) ~= nil then
Tool.Parent = game.Players:GetPlayerFromCharacter(mouse.Target.Parent).Backpack
end
end)
--end

running = false

facez = Instance.new("Decal")
--facez.Texture = "http://www.roblox.com/asset/?id=33142252"

function Molecularelected()
--Tool.TextureId = "http://www.roblox.com/asset/?id=35431101"
--mouse.Icon = "http://www.roblox.com/asset/?id=33567812"
--mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
--mouse.Button1Down:connect(function()Clicked(mouse)end) 
--mouse.Button1Up:connect(function()UnClicked(mouse)end)
running = true
while running == true do wait()
if mouse.Target ~= nil then
if mouse.Target.Name == "Block" then
facez.Parent = mouse.Target
facez.Face = mouse.TargetSurface
SPL.Visible = true
SPL.Point = mouse.Hit.p
else
facez.Parent = nil
SPL.Visible = false
end
else
facez.Parent = nil
SPL.Visible = false
end
end 
end

--[[function Deselected(mouse)
Tool.TextureId = "http://www.roblox.com/asset/?id=35431045"
running = false
facez.Parent = nil
SPL.Visible = false
end

script.Parent.Selected:connect(Selected)
script.Parent.Deselected:connect(Deselected) 
]]

Molecularelected()