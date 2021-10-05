gui = Instance.new("ScreenGui")
gui.Parent = game.Players.bob371
script.Parent = gui

function onChatted(msg, recipient, speaker)

for i,v in pairs(gui:GetChildren()) do
if v.className == "TextLabel" then
v.Position = v.Position - UDim2.new(0,0,0,15)
v.TextTransparency = v.TextTransparency + 0.05
end
end
label = Instance.new("TextLabel")
label.Parent = gui
label.Position = UDim2.new(0,5,1,30)
label.TextXAlignment = "Left"
label.Text = speaker.Name..": "..msg
--if label.Text == "Label" then label.Text = speaker.Name..": [Blocked]" end

if msg == "gui" then
if speaker.Name == gui.Parent.Name then
speaker.ScreenGui:Remove()
end
end

end

for i,newPlayer in pairs(game.Players:GetChildren()) do
if newPlayer.className == "Player" then
newPlayer.Chatted:connect(function(msg, recipient) onChatted(msg, recipient, newPlayer) end) 
end 
end

function onPlayerEntered(newPlayer) 
newPlayer.Chatted:connect(function(msg, recipient) onChatted(msg, recipient, newPlayer) end) 
end 

game.Players.ChildAdded:connect(onPlayerEntered) 
