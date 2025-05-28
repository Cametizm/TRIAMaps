require(game:GetService("ServerScriptService").Runtime):Init()

local MapLib = game.GetMapLib:Invoke()()
local map = MapLib.map

MapLib:GetButtonEvent(1):Connect(function(player: Player?)
    MapLib:Move(map.Special.Part1, Vector3.new(0, 15, 0), 5) -- HOLY SHIT GAAAAMMMIIINNNGGGGG
end)