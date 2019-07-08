Gui = Instance.new("ScreenGui")
Gui.Name = "Messanger"

PA = game.Players.bob371.PlayerGui
PB = game.Players.Amura.PlayerGui

Gui.Parent = PA

script.Parent = Gui

TextMsg = ""

P = 1

BackgroundColorPad = Instance.new("Color3Value")
BackgroundColorPad.Value = Color3.new(1,0,0)

BorderColorPad = Instance.new("Color3Value")
BorderColorPad.Value = Color3.new(0,0,0)

Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0,385,0,100)
Frame.Position = UDim2.new(0,64,0,450)
Frame.Parent = Gui
Frame.BackgroundColor3 = BackgroundColorPad.Value
Frame.BorderColor3 = BorderColorPad.Value

Exit = Instance.new("TextButton")
Exit.Size = UDim2.new(0,7.5,0,7.5)
Exit.Position = UDim2.new(0,69,0,455)
Exit.Parent = Gui
Exit.Text = ""
Exit.BackgroundColor3 = BackgroundColorPad.Value
Exit.BorderColor3 = BorderColorPad.Value

Exit2 = Instance.new("TextButton")
Exit2.Size = UDim2.new(0,7.5,0,7.5)
Exit2.Position = UDim2.new(0,69+10,0,455)
Exit2.Parent = Gui
Exit2.Text = ""
Exit2.Visible = false
Exit2.BackgroundColor3 = BackgroundColorPad.Value
Exit2.BorderColor3 = BorderColorPad.Value

MessageBox1 = Instance.new("TextBox")
MessageBox1.Size = UDim2.new(0,300,0,30) -- 355
MessageBox1.Position = UDim2.new(0,64+15,0,505)
MessageBox1.Parent = Gui
MessageBox1.BorderColor3 = BorderColorPad.Value
MessageBox1.TextColor3 = BorderColorPad.Value
MessageBox1.Text = "Click Here To Start Chatting With "..PB.Parent.Name

MessageBox2 = Instance.new("TextLabel")
MessageBox2.Size = UDim2.new(0,355,0,30)
MessageBox2.Position = UDim2.new(0,64+15,0,465)
MessageBox2.Parent = Gui
MessageBox2.Text = PA.Parent.Name..": Start Chatting"
MessageBox2.BorderColor3 = BorderColorPad.Value
MessageBox2.TextColor3 = BorderColorPad.Value

MessageBox3 = Instance.new("TextButton")
MessageBox3.Size = UDim2.new(0,55,0,30) -- 355
MessageBox3.Position = UDim2.new(0,64+315,0,505)
MessageBox3.Parent = Gui
MessageBox3.Text = "Send"
MessageBox3.BorderColor3 = BorderColorPad.Value
MessageBox3.TextColor3 = BorderColorPad.Value

Frame2 = Instance.new("TextButton")
Frame2.Size = UDim2.new(0,385,0,100)
Frame2.Position = UDim2.new(0,64,0,450)
Frame2.Parent = Gui
Frame2.Text = "You Have 1 New Message"
Frame2.BackgroundTransparency = 0
Frame2.BackgroundColor3 = BackgroundColorPad.Value
Frame2.BorderColor3 = BorderColorPad.Value
Frame2.TextColor3 = BorderColorPad.Value

function OpenMessage() for i = 1,125 do wait() Frame2.Size = Frame2.Size - UDim2.new(0,0,0,1) end end

function CloseMessage() for i = 1,125 do Frame2.Size = Frame2.Size + UDim2.new(0,0,0,1) end end

Blah1 = true
Blah2 = false
Blah3 = false

function onButton1Down()
if Blah1 == true then
Blah1 = false
OpenMessage()
Blah2 = true
end
end

Frame2.MouseButton1Down:connect(onButton1Down)

function onButton1Down()
if Blah1 == false and Blah2 == true then
Blah2 = false
Blah3 = true
Blah1 = true
CloseMessage()
if P == 1 then Gui.Parent = PB P = 2 TextMsg = MessageBox1.Text MessageBox2.Text = PA.Parent.Name..": "..MessageBox1.Text MessageBox1.Text = "Enter Text Here" return else Gui.Parent = PA P = 1 TextMsg = MessageBox1.Text MessageBox2.Text = PB.Parent.Name..": "..MessageBox1.Text MessageBox1.Text = "Enter Text Here" return end
end
end

MessageBox3.MouseButton1Down:connect(onButton1Down)

function onButton1Down()
Gui:Remove()
end

Exit.MouseButton1Down:connect(onButton1Down)

function onButton2Down()
if Blah1 == false and Blah2 == true and Blah3 == true then
Blah2 = false
Blah1 = true
CloseMessage()
if P == 1 then Gui.Parent = PB P = 2 MessageBox1.Text = TextMsg MessageBox2.Text = "Please Resend, There Was A Problem With The Message" Blah3 = false return else Gui.Parent = PA P = 1 MessageBox1.Text = TextMsg MessageBox2.Text = "Please Resend, There Was A Problem With The Message" Blah3 = false return end
end
end

Exit.MouseButton2Down:connect(onButton2Down)

-- ass
