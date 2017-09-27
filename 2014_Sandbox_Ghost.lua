Player = game:getService(“Players”).bob371
Character = Player.Character

Model = Instance.new("Model",Character)
Model.Name = ""

Human = Instance.new("Humanoid",Model)
Human.MaxHealth = 0

pcall(function() Character.Shirt:Remove() end)
pcall(function() Character.Pants:Remove() end)


while true do wait(0.1)
for i,v in pairs(Character:GetChildren()) do
if v:IsA("Shirt") then v:Clone().Parent = Model end
if v:IsA("Pants") then v:Clone().Parent = Model end
if v:IsA("Part") then
a = v:Clone()
a.Anchored = true
a.Locked = true
a.CanCollide = false
a.Parent = Model
a.Name = "Part"
a.CFrame = v.CFrame
end
if v:IsA("Hat") then
pcall(function()
a = v.Handle:Clone()
a.Anchored = true
a.Locked = true
a.CanCollide = false
a.Parent = Model
a.CFrame = v.Handle.CFrame
end)
end
end

for i,v in pairs(Model:GetChildren()) do
if v:IsA("Part") then
if v.Transparency < 1 then
v.Transparency = v.Transparency + 0.1
else
v:Remove()
end
end
end

end