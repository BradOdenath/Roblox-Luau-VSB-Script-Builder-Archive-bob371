--Preview https://www.youtube.com/watch?v=vzMXvJLHRcg

local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://142376088"
sound.Looped = true
sound.Parent = workspace
sound:Play()

for i,v in pairs(game.Players:GetPlayers()) do
	local RainParticles = Instance.new("ParticleEmitter")
	RainParticles.Parent = game.Workspace
	RainParticles.Acceleration = Vector3.new(0, -50, 0)
	RainParticles.Lifetime = NumberRange.new(2, 4)
	RainParticles.Rate = 1000
	RainParticles.Speed = NumberRange.new(30, 50)
	RainParticles.Texture = "rbxassetid://186290703" -- Rain Texture
	RainParticles.Size = NumberSequence.new(1, 0)
	RainParticles.EmissionDirection = "Bottom" --Chat GPT write "Down"
	RainParticles.Rotation = NumberRange.new(-30, 30)
	RainParticles.Color = ColorSequence.new(Color3.new(1,1,1))
	RainParticles.VelocitySpread = 30
	RainParticles.Enabled = true
	local attachment = Instance.new("Attachment")
	attachment.Position = Vector3.new(0, 150, 0)
	attachment.Parent = v.Character.Head
	RainParticles.Parent = attachment
end
