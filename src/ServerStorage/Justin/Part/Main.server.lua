--Scripted by tinarg

workspace.ElevatorOpenTime.Value = 15

game.ServerStorage.Sky_White:Clone().Parent = game:GetService("Lighting")
game.Lighting.Sky_White.Name = "Sky"

script.Creep:Play()
script.Laugh:Play()

while wait() do
	script.Parent.CFrame += Vector3.new(0,0,0.1)
	script.Laugh.Volume += 0.001
end