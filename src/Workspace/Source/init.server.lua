--Scripted by tinarg
math.randomseed(tick())
ChosenFloor = "Justin"

while true do
	script.Parent.Music.Pitch = 0
	Music = {"rbxassetid://130802245","rbxassetid://5410080475","rbxassetid://161183787","rbxassetid://1846080689","rbxassetid://150505221","rbxassetid://1836743584"}		
	script.Parent.Music.SoundId = Music[math.random(1,#Music)]
	script.Parent.Music:Play()
	wait(1)
	while (script.Parent.Music.Pitch < 1) do
		wait()
		script.Parent.Music.Pitch = script.Parent.Music.Pitch+0.025
	end
	script.Parent.Music.Pitch = 1
	game.Workspace.ReachedFloor:Destroy()
	wait(game.Workspace.ElevatorCloseTime.Value+(math.random(-20,20)/10))
	Val = Instance.new("NumberValue",game.Workspace)
	Val.Name = "ReachedFloor"
	while (script.Parent.Music.Pitch > 0) do
		wait()
		script.Parent.Music.Pitch = script.Parent.Music.Pitch-0.01
	end
	script.Parent.Music:Stop()
	game.Workspace.Elevator.Blocker.Ding:Play()

	wait(1)

	Floors = game.ServerStorage.Floors:GetChildren()

	game.ServerStorage:FindFirstChild(ChosenFloor).Parent = game.ServerStorage.Floors

	ChosenFloor = Floors[math.random(1,#Floors)].Name

	ChosenFloorObj = game.ServerStorage.Floors:FindFirstChild(ChosenFloor):Clone()
	ChosenFloorObj.Parent = workspace
	ChosenFloorObj:MakeJoints()

	game.ServerStorage.Floors:FindFirstChild(ChosenFloor).Parent = game.ServerStorage

	game.Workspace.Elevator.Blocker.Move:Play()
	while (game.Workspace.Elevator.Door.Part2.CFrame.X > -4.675) do
		wait()
		game.Workspace.Elevator.Door.Part2.CFrame = workspace.Elevator.Door.Part2.CFrame-Vector3.new(0.2,0,0)
	end
	game.Workspace.Elevator.Door.Part2.CFrame = CFrame.new(-8.275,1932.6, -13.35)*CFrame.Angles(math.rad(game.Workspace.Elevator.Door.Part2.Rotation.X),math.rad(game.Workspace.Elevator.Door.Part2.Rotation.Y),math.rad(game.Workspace.Elevator.Door.Part2.Rotation.Z))
	while (game.Workspace.Elevator.Door.Part1.CFrame.X > -8.275) do
		wait()
		game.Workspace.Elevator.Door.Part1.CFrame = workspace.Elevator.Door.Part1.CFrame-Vector3.new(0.2,0,0)
	end
	game.Workspace.Elevator.Door.Part1.CFrame = CFrame.new(-8.275,1932.6, -13.35)*CFrame.Angles(math.rad(game.Workspace.Elevator.Door.Part1.Rotation.X),math.rad(game.Workspace.Elevator.Door.Part1.Rotation.Y),math.rad(game.Workspace.Elevator.Door.Part1.Rotation.Z))
	wait(game.Workspace.ElevatorOpenTime.Value)

	--Pullback
	if game.Workspace.Elevator.Blocker.CanCollide == false then
		game.Workspace.Elevator.Door.Part1.CanCollide = false
		game.Workspace.Elevator.Door.Part2.CanCollide = false

		local C = game.Players:GetChildren()

		for i = 1, #C do
			if C[i].Character.Torso.Position.Z < -12.4 then
				Pos = Instance.new("BodyPosition")
				Pos.D = 2000
				Pos.MaxForce = Vector3.new(math.random(10,100),math.huge,math.huge)
				Pos.Position = Vector3.new(-3.5,1932,-6)
				Pos.Parent = C[i].Character.Torso
				game.ServerStorage.Despawn:Clone().Parent = Pos
			end
		end
	end

	game.Workspace.Elevator.Blocker.Move:Play()
	while (game.Workspace.Elevator.Door.Part1.CFrame.X < -4.875) do
		wait()
		game.Workspace.Elevator.Door.Part1.CFrame = game.Workspace.Elevator.Door.Part1.CFrame+Vector3.new(0.2,0,0)
	end
	game.Workspace.Elevator.Door.Part1.CFrame = CFrame.new(-4.875,1932.6, -13.35)*CFrame.Angles(math.rad(game.Workspace.Elevator.Door.Part1.Rotation.X),math.rad(game.Workspace.Elevator.Door.Part1.Rotation.Y),math.rad(game.Workspace.Elevator.Door.Part1.Rotation.Z))
	game.Workspace.Elevator.Door.Part2.CFrame = CFrame.new(-4.875,1932.6, -13.35)*CFrame.Angles(math.rad(game.Workspace.Elevator.Door.Part2.Rotation.X),math.rad(game.Workspace.Elevator.Door.Part2.Rotation.Y),math.rad(game.Workspace.Elevator.Door.Part2.Rotation.Z))
	while (game.Workspace.Elevator.Door.Part2.CFrame.X < -1.875) do
		wait()
		game.Workspace.Elevator.Door.Part2.CFrame = game.Workspace.Elevator.Door.Part2.CFrame+Vector3.new(0.2,0,0)
	end
	game.Workspace.Elevator.Door.Part2.CFrame = CFrame.new(-1.875,1932.6, -13.35)*CFrame.Angles(math.rad(game.Workspace.Elevator.Door.Part2.Rotation.X),math.rad(game.Workspace.Elevator.Door.Part2.Rotation.Y),math.rad(game.Workspace.Elevator.Door.Part2.Rotation.Z))

	--Reset
	local C = game.Players:GetChildren()

	for i = 1, #C do
		if C[i].Character:FindFirstChild("Human") then
			C[i].Character.Human.Name = "Humanoid"
		end
		script.UnPhysics:Clone().Parent = C[i].Character
	end
	game.Workspace.Elevator.Blocker.CanCollide = true
	game.Workspace.Elevator.Door.Part1.CanCollide = true
	game.Workspace.Elevator.Door.Part2.CanCollide = true
	game.Lighting.Brightness = 1
	game.Lighting.TimeOfDay = 14
	game.Lighting.OutdoorAmbient = Color3.new(127/255,127/255,127/255)
	ChosenFloorObj:Destroy()
	if game.Lighting:FindFirstChild("Sky") then
		game.Lighting.Sky:Destroy()
	end
	game.Workspace.ElevatorOpenTime.Value = 20
end