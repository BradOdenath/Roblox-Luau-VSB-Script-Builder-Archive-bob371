line = 2

--[[function ABC(A,B,C)
for i,v in pairs(A:GetChildren()) do
if C == 1 then
pcall(function() v.BackgroundTransparency = B end)
elseif C == 2 then
pcall(function() v.BackgroundTransparency = v.BackgroundTransparency + B end)
end
end
end]]

vip = game.Players.bob371
--pcall(function() vip.Character = nil end)

gui = Instance.new("ScreenGui")
gui.Parent = vip.PlayerGui

script.Parent = gui

function Type(txt,color1,color2,color3)
message = Instance.new("TextLabel")
message.Position = UDim2.new(0.5,0,0.1+line/25,0)
message.Name = "BobazorMessage"..line
message.TextColor3 = Color3.new(color1,color2,color3)
message.Parent = gui
stretch = 1
line = line + 1
txt = txt.."|"
length = string.len(txt)
for i = 1,length do
wait()
message.Text = string.sub(txt,1,stretch)
stretch = stretch + 1
end
for i = 1,3 do
wait(0.5)
message.Text = string.sub(txt,1,length-1)
wait(0.5)
message.Text = string.sub(txt,1,length)
end
message.Text = string.sub(txt,1,length-1)
--[[for i = 1,length+1 do
wait()
message.Text = string.sub(txt,1,stretch)
stretch = stretch - 1
end
message.Text = ""
message.Parent = nil]]
end

function StayType(txt,color1,color2,color3)
message = Instance.new("TextLabel")
message.Position = UDim2.new(0.5,0,0.01+line/25,0)
message.Name = "ABobazorMessage"..line
message.TextColor3 = Color3.new(color1,color2,color3)
message.Parent = gui
stretch = 1
txt = txt.."|"
length = string.len(txt)
for i = 1,length-1 do
wait()
message.Text = string.sub(txt,1,stretch)
stretch = stretch + 1
end
--[[for i = 1,5 do
wait(0.5)
message.Text = string.sub(txt,1,length-1)
wait(0.5)
message.Text = string.sub(txt,1,length)
end
message.Text = string.sub(txt,1,length-1)]]
--[[for i = 1,length+1 do
wait()
message.Text = string.sub(txt,1,stretch)
stretch = stretch - 1
end
message.Text = ""
message.Parent = nil]]
end

function Clear(num)
for i,v in pairs(gui:GetChildren()) do
if string.sub(v.Name,1,14) == "BobazorMessage" then
for i = 1,10 do wait() v.TextTransparency = v.TextTransparency + 0.1 end
line = line - 1
print("Text Box "..line.." Has Been Deleted")
v:Remove()
end
end
end

base = Instance.new("TextLabel")
base.BackgroundColor3 = Color3.new(0.1,0.2,0.2)
base.Text = ""
base.Parent = gui
base.Position = UDim2.new(0.5,0,0.5,0)
base.BorderColor3 = Color3.new(0,0,0)
base.BackgroundTransparency = 0.4

function See()
for i = 1,50 do
base.BackgroundTransparency = base.BackgroundTransparency + 0.01 * i
wait()
end
end

for i = 1,40 do
wait()
base.Size = base.Size + UDim2.new(0.025,0,0,0)
base.Position = base.Position - UDim2.new(0.025/2,0,0,0)
end
wait(0.5)
for i = 1,43 do
wait()
base.Size = base.Size + UDim2.new(0,0,0.025,0)
base.Position = base.Position - UDim2.new(0,0,0.025/2,0)
end

pswd = string.char(math.random(33,126))..""..string.char(math.random(33,126))..""..string.char(math.random(33,126))..""..string.char(math.random(33,126))..""..string.char(math.random(33,126))..""..string.char(math.random(33,126))..""..string.char(math.random(33,126))..""..string.char(math.random(33,126))

Type("Username: "..vip.Name,1,1,1)
Type("Password: "..pswd,1,1,1)
Type("Access Granted",1,1,1)
Clear()
Type("Welcome To bob371's User Gui V1.2",1,1,1)
Type("Credit To Chc4 For Idea",1,1,1)
Type("This Is Used To Control The Players In The Game",1,1,1)
Type("Enjoy :D",1,1,1)
Clear()
StayType("bob371's User Gui V1.2",1,2,2)

m = Instance.new("Message")
m.Parent = vip


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
buttona.BackgroundTransparency = 1
buttona.Size = UDim2.new(0,100,0,50)
buttona.Position = UDim2.new(0,100*number,0,space+(stage*50))
buttona.Parent = frame
----
stage = stage + 1
buttonb = Instance.new("TextButton")
buttonb.Name = "Kill"
buttonb.Text = "Kill"
buttonb.BackgroundTransparency = 1
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
buttonc.BackgroundTransparency = 1
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
buttond.BackgroundTransparency = 1
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
buttone.BackgroundTransparency = 1
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
buttone.BackgroundTransparency = 1
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
buttone.BackgroundTransparency = 1
buttone.Size = UDim2.new(0,100,0,50)
buttone.Position = UDim2.new(0,100*number,0,space+(stage*50))
buttone.Parent = frame
local value = Instance.new("StringValue")
value.Value = v.Name
value.Parent = buttone
m.Text = value.Value
function onButton1Down()
pcall(function() game.Players[value.Value].Character.Humanoid.Sit = true end)
end
buttone.MouseButton1Down:connect(onButton1Down)
----
stage = stage + 1
buttone = Instance.new("TextButton")
buttone.Name = "Tele"
buttone.Text = "Tele"
buttone.BackgroundTransparency = 1
buttone.Size = UDim2.new(0,100,0,50)
buttone.Position = UDim2.new(0,100*number,0,space+(stage*50))
buttone.Parent = frame
local value = Instance.new("StringValue")
value.Value = v.Name
value.Parent = buttone
m.Text = value.Value
function onButton1Down()
pcall(function() game.Players[value.Value].Character.Torso.CFrame = vip.Character.Torso.CFrame end)
end
buttone.MouseButton1Down:connect(onButton1Down)
----
stage = stage + 1
buttone = Instance.new("TextButton")
buttone.Name = "Goto"
buttone.Text = "Goto"
buttone.BackgroundTransparency = 1
buttone.Size = UDim2.new(0,100,0,50)
buttone.Position = UDim2.new(0,100*number,0,space+(stage*50))
buttone.Parent = frame
local value = Instance.new("StringValue")
value.Value = v.Name
value.Parent = buttone
m.Text = value.Value
function onButton1Down()
pcall(function() vip.Character.Torso.CFrame = game.Players[value.Value].Character.Torso.CFrame end)
end
buttone.MouseButton1Down:connect(onButton1Down)
----
stage = 0
----
end
pcall(function() m:Remove() end)
end

Refresh()

game.Players.ChildAdded:connect(Refresh)

game.Players.ChildRemoved:connect(Refresh)

Refresh()

function Chatted(msg)
if msg == "refresh/"then
for i,v in pairs(buttons:GetChildren()) do
v:Remove()
end
Refresh()
end
end
vip.Chatted:connect(Chatted)

See()
