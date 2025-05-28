require(game:GetService("ServerScriptService").Runtime):Init()

--^^Must be at the top of every script

local MapLib = game.GetMapLib:Invoke()()
local map = MapLib.map

local Scripted = map.Scripted
local Interactables = map.Special.Interactable

MapLib:GetButtonEvent(1):Connect(function(player: Player?)
	task.wait(1.5)
	Scripted.OrbBarrier:Destroy()
end)

MapLib:GetButtonEvent(2):Connect(function(player: Player?)
	task.wait(3.5)
	MapLib:Move(Scripted.Platform, Vector3.new(0, 71, 0), 2.5)
	
	task.wait(2.5)
	Scripted.Platform.Transparency = 0.3
	Scripted.Platform.CanCollide = false
	Scripted.Catching.CanCollide = true
	
	task.wait(1)
	MapLib:Move(Scripted.Cover, Vector3.new(0, 0, 1178), 1)
	
	task.wait(4)
	MapLib:Survive(player)
end)

