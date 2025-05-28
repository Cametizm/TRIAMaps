local EnableTrain = workspace.TrainEmable
local FinalTrain = workspace.train
local hitPart = workspace.StopPart
local getou = workspace.Getou

script.Parent.Touched:Connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid") then
		hit.Parent:BreakJoints()
	end
end)

hitPart.Touched:Connect(function(hit)
	EnableTrain.Move.Script.Enabled = false
	task.wait(1)
	EnableTrain.TrainEnginecar.CanCollide = false	
	print("alll rightttt")
end)

getou.Touched:Connect(function(hit)
	task.wait(1.2)
	FinalTrain.Move.Script.Enabled = false
	print("finishd")
end)