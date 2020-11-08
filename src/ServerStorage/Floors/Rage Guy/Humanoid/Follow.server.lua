--Scripted by tinarg
math.randomseed(tick())
wait(1)

--local animation = Instance.new("Animation")
--animation.AnimationId = "http://www.roblox.com/asset/?id=258477116"
--local animTrack = script.Parent.Parent.Humanoid:LoadAnimation(animation)

script.Parent.Parent.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)

AnimationPlaying = false

while wait() do
	if game.Players.NumPlayers > 0 then

		PlayerDist = math.huge
		ClosestPlayer = ""

		for _, player in pairs(game.Players:GetPlayers()) do
			if player:DistanceFromCharacter(script.Parent.Parent.Torso.Position) < PlayerDist and player.Character:FindFirstChild("Torso") then
				PlayerDist = player:DistanceFromCharacter(script.Parent.Parent.Torso.Position)
				ClosestPlayer = player.Name
			end
		end

		script.Parent.WalkToPoint = game.Players:FindFirstChild(ClosestPlayer).Character.Torso.Position

		if game.Players:FindFirstChild(ClosestPlayer).Character.Torso.Position.Y-9 > script.Parent.Parent.Torso.Position.Y then
			script.Parent.WalkSpeed = 0
		elseif game.Players:FindFirstChild(ClosestPlayer):DistanceFromCharacter(script.Parent.Parent.Torso.Position) > 4.2 then
			script.Parent.WalkSpeed = 30
		end
	end

	if game.Players:FindFirstChild(ClosestPlayer):DistanceFromCharacter(script.Parent.Parent.Torso.Position) < 4.2 then

		game.Workspace:FindFirstChild(ClosestPlayer).Humanoid.Sit = true
		game.Workspace:FindFirstChild(ClosestPlayer).Humanoid.Health = game.Workspace:FindFirstChild(ClosestPlayer).Humanoid.Health-2
		game.Workspace:FindFirstChild(ClosestPlayer).Torso.Velocity = script.Parent.Parent.Torso.CFrame.lookVector*45
		game.Workspace:FindFirstChild(ClosestPlayer).Head.face.Texture = "http://www.roblox.com/asset/?id=204439517"

		wait()

		script.Parent.Parent.Torso.Slap.Pitch = math.random(80,120)/100
		script.Parent.Parent.Torso.Slap:Play()

		if AnimationPlaying == false then
			AnimationPlaying = true
			--animTrack:Play()
			script.Parent.Parent.Torso.Rage:Play()
		end

	end
end
--end