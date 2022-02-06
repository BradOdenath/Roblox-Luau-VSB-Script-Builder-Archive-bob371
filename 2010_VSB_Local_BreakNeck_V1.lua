who = "bob371"

if script.Parent.className ~= "HopperBin" then
Tool = Instance.new("HopperBin")
Tool.Name = "Neck"
Tool.Parent = owner.Backpack or game.Players[who].Backpack
script.Parent = Tool
end

vip = owner or game.Players[who]
char = vip.Character

suit = nil

blah = true

function Clicked(Mouse)
if blah == true then

if Mouse.Target.Parent:findFirstChild("Torso") ~= nil then
--if Mouse.Target.Name == "Torso" then

ddd = Mouse.Target.Parent.Torso

asdfw = Instance.new("Weld")
asdfw.Parent = char.Break
asdfw.Name = "asdfw"

blah = false

char.Humanoid.PlatformStand = true

asdfw.Part0 = ddd
asdfw.Part1 = char.Torso
asdfw.C0 = CFrame.new(0,0,1) * CFrame.Angles(0,0,0)

pcall(function()
char.Break.RightWeld.C0 = CFrame.new(-0.9,0.5,1.3) * CFrame.fromEulerAnglesXYZ(-1.5,-0.2,0.2)
char.Break.LeftWeld.C0 = CFrame.new(0.9,0.5,1.4) * CFrame.fromEulerAnglesXYZ(-1.3,0.1,-0.3)
end)

end
else
return
end
end 

function UnClicked(Mouse)
if blah == false then
pcall(function()
char.Break.RightWeld.C0 = CFrame.new(-0.9,0.5,1.3) * CFrame.fromEulerAnglesXYZ(-1.1,-0.2,0)
char.Break.LeftWeld.C0 = CFrame.new(0.9,0.5,1.4) * CFrame.fromEulerAnglesXYZ(-1.5,0.1,0.1)
end)
asdfw:Remove()
ddd:BreakJoints()
char.Humanoid.PlatformStand = false
wait(2)
pcall(function()
char.Break.RightWeld.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
char.Break.LeftWeld.C0 = CFrame.new(1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end)
blah = true
end
end

function onKeyDown(key)
end

function Selected(Mouse) 
if char:findFirstChild("Break") == nil then
suit = Instance.new("Model")
suit.Parent = char
suit.Name = "Break"
rshoulder = char.Torso["Right Shoulder"]
rshoulder.Parent = nil
rweld = Instance.new("Weld")
rweld.Name = "RightWeld"
rweld.Parent = suit
rweld.Part0 = char["Right Arm"]
rweld.Part1 = char.Torso
rweld.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
lshoulder = char.Torso["Left Shoulder"]
lshoulder.Parent = nil
lweld = Instance.new("Weld")
lweld.Name = "LeftWeld"
lweld.Parent = suit
lweld.Part0 = char["Left Arm"]
lweld.Part1 = char.Torso
lweld.C0 = CFrame.new(1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
Mouse.Icon = "rbxasset://textures\\GunCursor.png"
Mouse.KeyDown:connect(onKeyDown)
Mouse.Button1Down:connect(function()Clicked(Mouse)end) 
Mouse.Button1Up:connect(function()UnClicked(Mouse)end)
end 
end

function Deselected(Mouse)
pcall(function() suit:Remove() end)
rshoulder.Parent = char.Torso
lshoulder.Parent = char.Torso
animate = char.Animate
new = animate:Clone()
animate:Remove()
new.Parent = char
end

script.Parent.Selected:connect(Selected)
script.Parent.Deselected:connect(Deselected) 