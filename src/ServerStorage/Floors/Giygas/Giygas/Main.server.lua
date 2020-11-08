--Scripted by tinarg

a = 0
b = 0
c = 0

while wait() do
	a += 0.05
	b += 0.1
	c += 0.085
	script.Parent.Mesh.Scale = Vector3.new(10+math.sin(a),10+math.sin(b),10+math.sin(c))
end