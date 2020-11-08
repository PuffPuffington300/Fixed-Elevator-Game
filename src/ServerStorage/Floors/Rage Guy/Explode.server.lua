--Scripted by Tinarg

wait(18)

local e = Instance.new("Explosion")
e.Position = script.Parent:WaitForChild("HumanoidRootPart").Position
e.DestroyJointRadiusPercent = 0
e.Parent = workspace

script.Parent:Destroy()