--Scripted by tinarg

if game.Players.LocalPlayer.Character:FindFirstChild("Human") then
	game.Players.LocalPlayer.Character.Human:ChangeState(Enum.HumanoidStateType.GettingUp)
else
	game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
end

wait()

script:Destroy()