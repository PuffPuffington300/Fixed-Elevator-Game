--Scripted by tinarg

script.Parent.Touched:Connect(function(Hit)
	if Hit.Parent:FindFirstChildOfClass("Humanoid") then
		Hit.Parent:SetPrimaryPartCFrame(CFrame.new(-3.5+math.random(-4,4), 1932.6, -6+math.random(-4,4)))
	end
end)