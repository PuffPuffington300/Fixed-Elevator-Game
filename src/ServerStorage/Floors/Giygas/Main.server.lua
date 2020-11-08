--Scripted by tinarg

game.Lighting.Brightness = 0

game.Workspace.ElevatorOpenTime.Value = 21

game.ServerStorage.Sky_Black:Clone().Parent = game.Lighting
game.Lighting.Sky_Black.Name = "Sky"

script.Music:Play()

wait(5)

script.Parent.Text.SurfaceGui.Enabled = true

wait(0.5)

script.Parent.Attack.Transparency = 0.4
script.Parent.Attack.Move.Disabled = false