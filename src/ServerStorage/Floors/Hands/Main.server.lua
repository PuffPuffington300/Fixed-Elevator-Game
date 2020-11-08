--Scripted by tinarg

script.Parent.Ambience:Play()

game.Workspace.ElevatorOpenTime.Value = 27

game.Workspace.Elevator.Blocker.CanCollide = false

game.ServerStorage.Sky_Black:Clone().Parent = game.Lighting
game.Lighting.Sky_Black.Name = "Sky"