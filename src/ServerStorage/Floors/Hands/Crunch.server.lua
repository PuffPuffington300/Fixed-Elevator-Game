math.randomseed(tick())

script.Crunch:Play()

while true do
	wait(math.random(5,7)/10)
	script.Crunch.Pitch = math.random(6,10)/10
	script.Crunch:Play()
end