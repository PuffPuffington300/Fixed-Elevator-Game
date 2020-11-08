math.randomseed(tick())

wait(1.7)

Explosion = Instance.new("Explosion")
Explosion.Position = script.Parent.Position
Explosion.DestroyJointRadiusPercent = 0
Explosion.Parent = workspace

script.Parent.Static:Stop()

C = game.Players:GetChildren()

for i = 1, #C do
	script.Parent.Physics:Clone().Parent = C[i].Character
	C[i].Character.Humanoid.Health = 1
	--C[i].Character.Head.face.Texture = "rbxassetid://90516020"
	C[i].Character.Torso.Velocity = Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
end

wait()

script.Parent.Parent.Text:Destroy()

script.Parent:Destroy()