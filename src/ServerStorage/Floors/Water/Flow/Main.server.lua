--Scripted by tinarg

while (script.Parent.Size.X < 6) do
	wait()
	OldFrame = script.Parent.CFrame
	script.Parent.Size = Vector3.new(script.Parent.Size.X+0.2,4,10.4)
	script.Parent.CFrame = OldFrame - Vector3.new(0.1,0,0)
end

script.Parent.Size = Vector3.new(6.03,4,10.4)
script.Parent.CFrame = CFrame.new(Vector3.new(-3.49, 1930.709, -12.4)) * CFrame.Angles(math.rad(script.Parent.Rotation.X),math.rad(script.Parent.Rotation.Y),math.rad(script.Parent.Rotation.Z))