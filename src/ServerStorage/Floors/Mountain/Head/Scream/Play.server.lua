--Scripted by tinarg

workspace:WaitForChild("ElevatorOpenTime").Value = 8

wait(0.2)

script.Parent:Play()

wait(6)

script.Parent.Parent.Parent:FindFirstChild("Right Arm").Anchored = false

wait()

script:Destroy()