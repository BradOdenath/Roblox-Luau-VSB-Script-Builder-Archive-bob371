who = "bob371"

local Placements = {}

for i,v in pairs(game.Players:GetChildren()) do
	pcall(function() table.insert(Placements,v.Character.HumanoidRootPart.CFrame) end)
end


for i = 1,game.Players.MaxPlayers do wait()


model = Instance.new("Model")
model.Name = "BC"
model.Parent = game.Workspace

script.Parent = model

Places = {25,-25,50,-50,75,-75}

local seat = Instance.new("VehicleSeat")
seat.Size = Vector3.new(8,0.5,12)
seat.Anchored = false
seat.Name = 'S'
seat.Locked = true
seat.HeadsUpDisplay = false
seat.CanCollide = true
seat.TopSurface = 0
seat.BottomSurface = 0
seat.Parent = model
seat.CFrame = CFrame.new(Places[math.random(1,#Places)],40,Places[math.random(1,#Places)])
--pcall(function() seat.CFrame = Placements[i] end)
local gyro = Instance.new("BodyGyro")
gyro.Name = 'BG'
gyro.Parent = seat
gyro.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
local posi = Instance.new("BodyPosition")
posi.Name = 'BP'
posi.maxForce = Vector3.new(0,math.huge,0)
posi.Parent = seat
posi.position = Vector3.new(0,1,0)

--game.Workspace[who].Torso.CFrame = seat.CFrame + Vector3.new(0,2,0)

part = Instance.new("Part")
part.Size = Vector3.new(1,1,8)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(3,0.6,1.5) * CFrame.fromEulerAnglesXYZ(0,0,0)

part = Instance.new("Part")
part.Size = Vector3.new(1,1,8)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(-3,0.6,1.5) * CFrame.fromEulerAnglesXYZ(0,0,0)

part = Instance.new("Part")
part.Size = Vector3.new(7,1,1)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(0,0.6,5) * CFrame.fromEulerAnglesXYZ(0,0,0)

part = Instance.new("Part")
part.Size = Vector3.new(8.2,0.4,12.2)
part.Anchored = false
part.Reflectance = 1
part.Locked = true
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
function T(h)
	print(h.Name)
	--if h.Parent.Name == who then return end
	if h.Parent:FindFirstChild("S") ~= nil or h.Name == 'S' then
		pcall(function()
			h.S.BP.Position = Vector3.new(0,60,0)
			
			h.S.BG.MaxTorque = Vector3.new(0,0,0)
			
			wait(.3)
			
			h.S.BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			
			wait(0.3)
			
			
			h.S.BG.CFrame = CFrame.Angles(0,0,0)
			
			h.S.BP.Position = Vector3.new(0,1,0)
		end)
		pcall(function()
			h.Parent.S.BP.Position = Vector3.new(0,60,0)
			
			h.Parent.S.BG.MaxTorque = Vector3.new(0,0,0)
			
			wait(1)
			
			h.Parent.S.BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			
			h.Parent.S.BP.Position = Vector3.new(0,2,0)
		end)
	elseif h.Parent:findFirstChild("Torso") ~= nil then
		h.Parent.Torso.Velocity = part.CFrame.lookVector * 250
	elseif h.Parent:findFirstChild("Humanoid") ~= nil then
		pcall(function() h.Parent.Humanoid.PlatformStand = true end)
		pcall(function() h.Parent.Humanoid.PlatformStand = false end)
	end
end
part.Touched:connect(T)

part = Instance.new("WedgePart")
part.Size = Vector3.new(7,1,3)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(0,0.6,-4) * CFrame.fromEulerAnglesXYZ(0,0,0)

part = Instance.new("Part")
part.Size = Vector3.new(1,1,1)
part.Anchored = false
part.Locked = true
part.CanCollide = true
part.TopSurface = 0
part.BottomSurface = 0
part.Parent = model
weld = Instance.new("Weld")
weld.Parent = part
weld.Part0 = seat
weld.Part1 = part
weld.C0 = CFrame.new(0,0,5.8) * CFrame.fromEulerAnglesXYZ(3.14/2,0,0)
mesh = Instance.new("SpecialMesh")
mesh.Parent = part
mesh.Scale = Vector3.new(0.75,0.75,0.75)
Instance.new("Sparkles").Parent = part

function Epic(color)
for i,v in pairs(model:GetChildren()) do
if v.className == "Part" or v.className == "WedgePart" or v.className == "VehicleSeat" then
v.BrickColor = BrickColor.new(color)
end
end
end

Epic("Really black")

coroutine.resume(coroutine.create(function()
while true do wait()
if seat.Throttle == 1 then
seat.Velocity = seat.CFrame.lookVector * 50
end
if seat.Throttle == 0 then
end
if seat.Throttle == -1 then
seat.Velocity = seat.CFrame.lookVector * -50
end
if seat.Steer == 1 then
gyro.cframe = seat.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.314,0)
seat.CFrame = seat.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0)
end
if seat.Steer == 0 then
end
if seat.Steer == -1 then
gyro.cframe = seat.CFrame * CFrame.fromEulerAnglesXYZ(0,0.314,0)
seat.CFrame = seat.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end
end))

end