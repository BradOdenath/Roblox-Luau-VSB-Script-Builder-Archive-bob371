--[[_bob371's_Soda_(_Don't_Worry_About_It_)_]]--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Player = game.Players.LocalPlayer
Character = Player.Character
script.Parent = Character

--[[ * Fire Can * ]]--

pcall(function() Character.Soda:Remove() end)

Soda = Instance.new("Model")
Soda.Name = "Soda"
Soda.Parent = Character

--[[ * Arm Weld * ]]--

ArmWeld = Instance.new("Weld") 
ArmWeld.Parent = Character["Torso"]
ArmWeld.Part0 = ArmWeld.Parent
ArmWeld.Part1 = Character["Right Arm"]
ArmWeld.C0 = CFrame.new(1.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)

--[[ * Can * ]]--

Can = Instance.new("Part")
Can.formFactor = "Custom"
Can.Locked = true
Can.CanCollide = false
Can.BrickColor = BrickColor.new("Really red")
Can.Anchored = false
Can.Size = Vector3.new(0.75,1,0.75)
Can.TopSurface = 0
Can.BottomSurface = 0
Can.Reflectance = 0.1
Can.Parent = Soda
Mesh = Instance.new("CylinderMesh",Can)
--Mesh.Bevel = 0.03
CanWeld = Instance.new("Weld")
CanWeld.Parent = Can
CanWeld.Part0 = Character["Right Arm"]
CanWeld.Part1 = Can
CanWeld.C0 = CFrame.new(0,-1,-0.125) * CFrame.Angles(-math.pi/2,0,0)

--[[ * Lid * ]]--

Lid = Instance.new("Part")
Lid.formFactor = "Custom"
Lid.Locked = true
Lid.CanCollide = false
Lid.BrickColor = BrickColor.new("Medium stone grey")
Lid.Anchored = false
Lid.Size = Vector3.new(0.7,1.1,0.7)
Lid.TopSurface = 0
Lid.BottomSurface = 0
Lid.Reflectance = 0.2
Lid.Parent = Soda
Mesh = Instance.new("CylinderMesh",Lid)
--Mesh.Bevel = 0.03
Weldz = Instance.new("Weld")
Weldz.Parent = Lid
Weldz.Part0 = Can
Weldz.Part1 = Lid
Weldz.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)

--[[ * Tip * ]]--

Tip = Instance.new("Part")
Tip.formFactor = "Custom"
Tip.Locked = true
Tip.CanCollide = false
Tip.BrickColor = BrickColor.new("Medium stone grey")
Tip.Anchored = false
Tip.Size = Vector3.new(0.05,1.05,0.05)
Tip.TopSurface = 0
Tip.BottomSurface = 0
Tip.Reflectance = 0.2
Tip.Parent = Soda
Mesh = Instance.new("CylinderMesh",Tip)
--.Bevel = 0.075
Weldz = Instance.new("Weld")
Weldz.Parent = Tip
Weldz.Part0 = Can
Weldz.Part1 = Tip
Weldz.C0 = CFrame.new(0,0.1,0) * CFrame.Angles(0,0,0)

--[[ * Tab * ]]--

Tab = Instance.new("Part")
Tab.formFactor = "Custom"
Tab.Locked = true
Tab.CanCollide = false
Tab.BrickColor = BrickColor.new("Medium stone grey")
Tab.Anchored = false
Tab.Size = Vector3.new(0.05,0.05,0.25)
Tab.TopSurface = 0
Tab.BottomSurface = 0
Tab.Reflectance = 0.2
Tab.Parent = Soda
Mesh = Instance.new("BlockMesh",Tab)
Mesh.Scale = Vector3.new(0.5,0.5,1)
--Mesh.Bevel = 0.025
Weldz = Instance.new("Weld")
Weldz.Parent = Tab
Weldz.Part0 = Can
Weldz.Part1 = Tab
Weldz.C0 = CFrame.new(0,0.55,0.1) * CFrame.Angles(-0.2,0,0)

--[[ * Fire * ]]--

Fire = Instance.new("Part")
Fire.formFactor = "Custom"
Fire.Locked = true
Fire.CanCollide = false
Fire.BrickColor = BrickColor.new("Medium stone grey")
Fire.Anchored = false
Fire.Size = Vector3.new(0.1,3.5,0.1)
Fire.TopSurface = 0
Fire.BottomSurface = 0
Fire.Transparency = 1
Fire.Parent = Soda
Mesh = Instance.new("BlockMesh",Fire)
--Mesh.Bevel = 0.025
Weldz = Instance.new("Weld")
Weldz.Parent = Fire
Weldz.Part0 = Character.Head
Weldz.Part1 = Fire
Weldz.C0 = CFrame.new(0,-0.2,-1) * CFrame.Angles(-3.14/2,0,0)
Burn = Instance.new("Fire")
Burn.Parent = Fire
Burn.Heat = 1000
Burn.Size = 0.1
Burn.Enabled = false
function PTouch(hit)
if hit.Parent.Name == Player.Name then return end
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
function Burner(hit)
if Burn.Enabled == true then
if hit.Parent:findFirstChild("Humanoid") ~= nil then
for i,v in pairs(hit.Parent:GetChildren()) do
if v.className == "Part" then
pcall(function()
Instance.new("Fire",v)
v.BrickColor = BrickColor.new("Really black")
v:BreakJoints()
--[[wait()
v.Touched:connect(PTouch)]]
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
Hopper.Name = ("Soda "..(CNam[CC]))
end
end

CColor(CNum[CC])

--[[ * Animations * ]]--

function DrinkUp()
ArmWeld.C0 = CFrame.new(1.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0.1,0.11,0)
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(-0.03,-0.01,-0.03)
end
end

function DrinkDown()
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0.03,0.01,0.03)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-0.1,-0.11,0)
end
ArmWeld.C0 = CFrame.new(1.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)
end

function SipUp()
ArmWeld.C0 = CFrame.new(1.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,-0.1)
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(-0.04,-0.05,0)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0.1,0)
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0.04,0.01,-0.02)
end
end

function SipDown()
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(-0.04,-0.01,0.02)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,-0.1,0)
end
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.new(0.04,0.05,0)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0,0.1)
end
ArmWeld.C0 = CFrame.new(1.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)
end

function Drink() if SodaFun == true then return end DrinkUp() wait(1) DrinkDown() end

function Sip() if SodaFun == true then return end SipUp() wait(1) SipDown() end

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
--Meshr.Bevel = 0.02

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

if script.Parent.Name == Player.Name then
Hopper = Instance.new("HopperBin")
Hopper.Name = "Soda"
Hopper.Parent = Player.Backpack
end

Blah = true

function Clicked(Mouse)
if Blah == true then
Blah = false
Drink()
SodaFunOn()
Blah = true
return
end
end

function onKeyDown(key)
if Blah == true then
Blah = false

if key == "z" then
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
end

if key == "r" then
SodaFunOff()
end

if SodaFun == false then
if key == "q" then
if CC == 1 then
CC = table.maxn(CNum)
else
CC = CC - 1
end
CColor(CNum[CC])
elseif key == "e" then
if CC == table.maxn(CNum) then
CC = 1
else
CC = CC + 1
end
CColor(CNum[CC])
end
end

if key == "f" then
Sip()
SodaFunOn()
end

Blah = true
return
end
end

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

function Selected(Mouse) 
	Mouse.Icon = "rbxasset://textures\\GunCursor.png"
	Mouse.KeyDown:connect(onKeyDown)
	Mouse.Button1Down:connect(function()Clicked(Mouse)end) 
	CName()
end 

function Deselected(Mouse)
end

Character.Humanoid.Died:connect(DeathCheck)
Hopper.Selected:connect(Selected)
Hopper.Deselected:connect(Deselected) 
Fire.Touched:connect(Burner)