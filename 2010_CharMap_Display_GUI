vip = game.Players.bob371
gui = Instance.new("ScreenGui")
gui.Name = "Character Map"
gui.Parent = vip.PlayerGui

script.Parent = gui

number = 0

stage = 0

space = 100

charn = 0

chars = 256

hold = Instance.new("Frame")
hold.Name = "Stuff"
hold.Position = UDim2.new(0,-50,0,0)
hold.Parent = gui

for i = 1,chars do
----
number = number + 1
if number == 13 then number = 1 stage = stage + 1 end
buttona = Instance.new("TextLabel")
buttona.Text = string.char(charn).." = string.char("..charn..")"
buttona.BackgroundTransparency = 0.75
buttona.Size = UDim2.new(0,100,0,25)
buttona.Position = UDim2.new(0,100*number,0,space+(stage*25))
buttona.Parent = hold
wait()
charn = charn + 1
----
end
