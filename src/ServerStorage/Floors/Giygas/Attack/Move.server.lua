--Scripted by tinarg

script.Parent.Explode.Disabled = false

script.Parent.Static:Play()

while wait() do
	script.Parent.CFrame += Vector3.new(0,0,1)
end