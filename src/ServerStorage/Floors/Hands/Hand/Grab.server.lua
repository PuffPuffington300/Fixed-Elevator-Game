--Scripted by tinarg

script.Parent.BodyGyro.cframe = script.Parent.CFrame

script.Parent.Pos.position = script.Parent.Position

StartPos = script.Parent.Position

wait(4)

local Players = game.Players:GetPlayers()

Target = Players[math.random(1,#Players)].Character

Target.Humanoid.Name = "Human"

script.Parent.Pos.position = Target.Torso.Position

wait()

TargetStartPos = Target.Torso.Position

script.Parent.Parent.Scare:Play()

script.Parent.Transparency = 0

while (game.Players:FindFirstChild(Target.Name):DistanceFromCharacter(script.Parent.Position) > 6) do
	wait()
	script.Parent.Pos.position = Target.Torso.Position
end

script.Parent.Parent.Physics:Clone().Parent = Target
Weld = Instance.new("Weld")
Weld.Part1 = Target.HumanoidRootPart
Weld.Part0 = script.Parent
Weld.Parent = script.Parent
script.Parent.Pos.position = StartPos

wait(3)

script.Parent.CFrame = CFrame.new(StartPos) * CFrame.Angles(0,math.rad(180),0)

script.Parent.Parent.Hand2.Transparency = 0
script.Parent.Parent.Hand3.Transparency = 0
script.Parent.Parent.Hand2.Pos.position = script.Parent.Position
script.Parent.Parent.Hand3.Pos.position = script.Parent.Position

AttackTime = 180

wait(3)

script.Parent.Parent.Scream:Play()

while (AttackTime > 0) do
	wait()
	script.Parent.Parent.Crunch.Disabled = false
	AttackTime -= 1
	script.Parent.CFrame = script.Parent.CFrame*CFrame.Angles(math.rad(math.random(-4,4)),math.rad(math.random(-4,4)),math.rad(math.random(-4,4)))
	script.Parent.Parent.Hand2.CFrame = script.Parent.Parent.Hand2.CFrame*CFrame.Angles(math.rad(math.random(-4,4)),math.rad(math.random(-4,4)),math.rad(math.random(-4,4)))
	script.Parent.Parent.Hand3.CFrame = script.Parent.Parent.Hand3.CFrame*CFrame.Angles(math.rad(math.random(-4,4)),math.rad(math.random(-4,4)),math.rad(math.random(-4,4)))
	if AttackTime == 70 then
		script.Parent.Parent.Gimpy:Clone().Parent = Target
	end
end

script.Parent.Parent.Crunch.Disabled = true

script.Parent.Parent.Hand2.Despawn.Disabled = false
script.Parent.Parent.Hand3.Despawn.Disabled = false

script.Parent.CFrame = CFrame.new(script.Parent.Position) * CFrame.Angles(0,math.rad(180),0)

while (script.Parent.Parent.Scream.Volume > 0) do
	wait()
	script.Parent.Parent.Scream.Volume = script.Parent.Parent.Scream.Volume-0.005
end

script.Parent.Parent.Scream:Stop()

script.Parent.Pos.position = Vector3.new(-3.5, 1932.45, -3.3)

while ((script.Parent.Position - Vector3.new(-3.5, 1932.45, -3.3)).magnitude > 2) do
	wait()
end

Weld:Destroy()

script.Parent.Parent.UnPhysics:Clone().Parent = Target

script.Parent.Pos.position = StartPos

wait(1)

script.Parent.Despawn.Disabled = false