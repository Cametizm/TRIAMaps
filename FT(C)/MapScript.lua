require(game:GetService("ServerScriptService").Runtime):Init()

--^^Must be at the top of every script

local MapLib = game.GetMapLib:Invoke()()
local map = MapLib.map

MapLib:GetButtonEvent(3):Connect(function(player)
	MapLib:Alert("Quick! Get to the Truck in the back and escape to the Hill!", "white", 2)
end)

task.wait(35)
MapLib:MovePart(map.Special.Fluid._Liquid1, Vector3.new(0, 37.5, 0), 20)

-- This code is not advanced in the slightest, mainly because I didn't make any and I mean any code and used the plugin instead.