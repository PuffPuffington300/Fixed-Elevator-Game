--Scripted by tinarg
math.randomseed(tick())
Floor = 1

while true do
	wait(math.random(170,220)/100)
	if game.Workspace:FindFirstChild("ReachedFloor") == nil then
		if Floor < 99999999 then
			Floor += 1
		else
			Floor = 1
		end
		script.Parent.Text = Floor
		script.Parent.Parent.Parent.Bing:Play()
	end
end