vip = game.Players.bob371

gui = Instance.new("ScreenGui")
gui.Parent = vip.PlayerGui

script.Parent = gui

X = 0
Y = 0
T = 1

function Create()
for i = 1,10 do
wait()
for i = 1,10 do
local button = Instance.new("TextButton")
button.Position = UDim2.new(X,0,Y,0)
button.Size = UDim2.new(0.1,0,0.1,0)
button.TextColor3 = Color3.new(0,0,0)
button.Text = "Trololololol"
button.BackgroundTransparency = 0
button.BackgroundColor3 = Color3.new(0,0,0)
button.BorderSizePixel = 0
button.AutoButtonColor = false
button.Parent = gui
function Epic()
button.BackgroundTransparency = button.BackgroundTransparency + 0.1
end
button.MouseEnter:connect(Epic)
Y = Y + 0.1
end
X = X + 0.1
Y = 0
end
end

Create()
