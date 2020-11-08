--Scripted by tinarg

game.Workspace.ElevatorOpenTime.Value = 10

game.ServerStorage.Sky_Black:Clone().Parent = game.Lighting
game.Lighting.Sky_Black.Name = "Sky"
game.Lighting.Brightness = 0
game.Lighting.OutdoorAmbient = Color3.new(70/255,40/255,30/255)

script.Whisper:Play()

while wait() do
	script.Whisper.Volume += 0.0005
end