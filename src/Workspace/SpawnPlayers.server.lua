--Scripted by Tinarg
--Rescripted by Xxpuufflexx

math.randomseed(tick())

game.Players.PlayerAdded:Connect(function(Player)
	Player.CharacterAdded:Connect(function(Character)
		workspace:WaitForChild(Player.Name)
		wait()
		Character:SetPrimaryPartCFrame(CFrame.new(-3.5+math.random(-4,4), 1932.6, -6+math.random(-4,4)))
	end)
end)