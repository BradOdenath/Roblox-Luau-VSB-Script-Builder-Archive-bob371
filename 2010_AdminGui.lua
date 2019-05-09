--[[ bob371's Admin Gui | Created By bob371 | Fixed By chc4 ]]--------------------------------------------------------------------------------vip = game.Players.bob371
vip=game.Players.zethal
gui = Instance.new("ScreenGui")
gui.Name = "asdf"
gui.Parent = vip.PlayerGui
script.Parent = gui

function Refresh()
m = Instance.new("Message")
m.Parent = vip.Character
number = 0
stage = 0
space = 100
pcall(function() frame:Remove() end)
frame = Instance.new("Frame")
frame.Parent = gui
for i,v in pairs(game.Players:GetPlayers()) do
----
number = number + 1
stage = stage + 1
buttona = Instance.new("TextLabel")
buttona.Text = v.Name
buttona.BackgroundTransparency = 0.5
buttona.Size = UDim2.new(0,100,0,50)
buttona.Position = UDim2.new(0,100*number,0,space+(stage*50))
buttona.Parent = frame
----
stage = stage + 1
buttonb = Instance.new("TextButton")
buttonb.Name = "Kill"
buttonb.Text = "Kill"
buttonb.BackgroundTransparency = 0.5
buttonb.Size = UDim2.new(0,100,0,50)
buttonb.Position = UDim2.new(0,100*number,0,space+(stage*50))
buttonb.Parent = frame
local value = Instance.new("StringValue")
value.Value = v.Name
value.Parent = buttonb
m.Text = value.Value
function onButton1Down()
game.Players[value.Value].Character:BreakJoints()
end
buttonb.MouseButton1Down:connect(onButton1Down)
----
stage = stage + 1
buttonc = Instance.new("TextButton")
buttonc.Name = "Ban"
buttonc.Text = "Ban"
buttonc.BackgroundTransparency = 0.5
buttonc.Size = UDim2.new(0,100,0,50)
buttonc.Position = UDim2.new(0,100*number,0,space+(stage*50))
buttonc.Parent = frame
local value = Instance.new("StringValue")
value.Value = v.Name
value.Parent = buttonc
m.Text = value.Value
function onButton1Down()
if vip.Name == "bob371" or vip.Name == "Bannana97" then
game.Players[value.Value]:Remove()
end
end
buttonc.MouseButton1Down:connect(onButton1Down)
----
stage = stage + 1
buttond = Instance.new("TextButton")
buttond.Name = "Break"
buttond.Text = "Break"
buttond.BackgroundTransparency = 0.5
buttond.Size = UDim2.new(0,100,0,50)
buttond.Position = UDim2.new(0,100*number,0,space+(stage*50))
buttond.Parent = frame
local value = Instance.new("StringValue")
value.Value = v.Name
value.Parent = buttond
m.Text = value.Value
function onButton1Down()
if vip.Name == "bob371" or vip.Name == "Bannana97" then
game.Players[value.Value].Character = nil
end
end
buttond.MouseButton1Down:connect(onButton1Down)
----
stage = stage + 1
buttone = Instance.new("TextButton")
buttone.Name = "Stun"
buttone.Text = "Stun"
buttone.BackgroundTransparency = 0.5
buttone.Size = UDim2.new(0,100,0,50)
buttone.Position = UDim2.new(0,100*number,0,space+(stage*50))
buttone.Parent = frame
local value = Instance.new("StringValue")
value.Value = v.Name
value.Parent = buttone
m.Text = value.Value
function onButton1Down()
game.Players[value.Value].Character.Humanoid.PlatformStand = true
end
buttone.MouseButton1Down:connect(onButton1Down)
----
stage = stage + 1
buttone = Instance.new("TextButton")
buttone.Name = "Jump"
buttone.Text = "Jump"
buttone.BackgroundTransparency = 0.5
buttone.Size = UDim2.new(0,100,0,50)
buttone.Position = UDim2.new(0,100*number,0,space+(stage*50))
buttone.Parent = frame
local value = Instance.new("StringValue")
value.Value = v.Name
value.Parent = buttone
m.Text = value.Value
function onButton1Down()
game.Players[value.Value].Character.Humanoid.Jump = true
end
buttone.MouseButton1Down:connect(onButton1Down)
----
stage = stage + 1
buttone = Instance.new("TextButton")
buttone.Name = "Sit"
buttone.Text = "Sit"
buttone.BackgroundTransparency = 0.5
buttone.Size = UDim2.new(0,100,0,50)
buttone.Position = UDim2.new(0,100*number,0,space+(stage*50))
buttone.Parent = frame
local value = Instance.new("StringValue")
value.Value = v.Name
value.Parent = buttone
m.Text = value.Value
function onButton1Down()
game.Players[value.Value].Character.Humanoid.Sit = true
end
buttone.MouseButton1Down:connect(onButton1Down)
----
stage = 0
----
end
pcall(function() m:Remove() end)
end

Refresh()

game.Players.PlayerAdded:connect(Refresh)

game.Players.PlayerRemoved:connect(Refresh)
