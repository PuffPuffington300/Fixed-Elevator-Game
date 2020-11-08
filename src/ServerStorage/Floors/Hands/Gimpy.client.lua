math.randomseed(tick())

game.Players.LocalPlayer.Character.Human.WalkSpeed = 6


WillRemove = math.random(0,2)

if WillRemove == 0 and game.Players.LocalPlayer.Character:FindFirstChild("Right Arm") then
	game.Players.LocalPlayer.Character:FindFirstChild("Right Arm"):Destroy()
end

wait()

script:Destroy()