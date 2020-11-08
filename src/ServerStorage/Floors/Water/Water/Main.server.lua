--Scripted by tinarg

C = game.Players:GetChildren()

for i = 1, #C do
	Pos = Instance.new("BodyPosition")
	Pos.maxForce = Vector3.new(0,math.huge,0)
	Pos.position = script.Parent.Position
	Pos.Parent = C[i].Character.Torso
end

script.Parent.Water:Play()

while (script.Parent.Position.Y < 1936) do
	wait()
	C = game.Players:GetChildren()

	for i = 1, #C do
		if C[i].Character.Torso:FindFirstChild("BodyPosition") then
			C[i].Character.Torso.BodyPosition.position = script.Parent.Position
		end
	end
	script.Parent.CFrame = script.Parent.CFrame+Vector3.new(0,0.1,0)
end

script.Parent.Parent:WaitForChild("Flow"):Destroy()

script.Parent.Water:Stop()

wait(8)

script.Parent.Flush:Play()

while (script.Parent.Position.Y > 1928) do
	wait()
	if script.Parent.Position.Y > 1931 then
		C = game.Players:GetChildren()

		for i = 1, #C do
			if C[i].Character.Torso:FindFirstChild("BodyPosition") then
				C[i].Character.Torso.BodyPosition.position = script.Parent.Position
			end
		end
	end

	script.Parent.CFrame = script.Parent.CFrame-Vector3.new(0,0.1,0)
end

C = game.Players:GetChildren()

for i = 1, #C do
	if C[i].Character.Torso:FindFirstChild("BodyPosition") then
		C[i].Character.Torso.BodyPosition:Destroy()
	end
end