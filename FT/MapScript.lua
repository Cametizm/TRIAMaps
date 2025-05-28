require(game:GetService("ServerScriptService").Runtime):Init()

--^^Must be at the top of every script

local MapLib = game.GetMapLib:Invoke()()
local map = MapLib.map

local TweenService = game:GetService("TweenService")

local unscriptedplanks = map.Scripted.Planks.unscr_planks

local plank1 = map.Scripted.Planks.plank
local plank1decal1 = plank1.Decal
local plank1decal2 = plank1.Decal2
local plank1decal3 = plank1.Decal3
local plank1decal4 = plank1.Decal4
local plank1decal5 = plank1.Decal5
local plank1decal6 = plank1.Decal6

local plank2 = map.Scripted.Planks.plank2
local plank2decal1 = plank2.Decal
local plank2decal2 = plank2.Decal2
local plank2decal3 = plank2.Decal3
local plank2decal4 = plank2.Decal4
local plank2decal5 = plank2.Decal5
local plank2decal6 = plank2.Decal6

local plank3 = map.Scripted.Planks.plank3
local plank3decal1 = plank3.Decal
local plank3decal2 = plank3.Decal2
local plank3decal3 = plank3.Decal3
local plank3decal4 = plank3.Decal4
local plank3decal5 = plank3.Decal5
local plank3decal6 = plank3.Decal6

local plank4 = map.Scripted.Planks.plank4
local plank4decal1 = plank4.Decal
local plank4decal2 = plank4.Decal2
local plank4decal3 = plank4.Decal3
local plank4decal4 = plank4.Decal4
local plank4decal5 = plank4.Decal5
local plank4decal6 = plank4.Decal6

local ladder3_1 = map.Scripted.laber.Part

local ladder3_2 = map.Scripted.laber2.Part
local ladder3_2_1 = map.Scripted.laber2.Part2
local ladder3_2_2 = map.Scripted.laber2.Part4

local function Tween(Instance: Instance,TweenInfo: TweenInfo, Properties: {})
	task.spawn(function() TweenService:Create(Instance, TweenInfo, Properties):Play() end)
end

MapLib:GetButtonEvent(1):Connect(function(player)

	task.wait(0.75)
	local TI = TweenInfo.new(1.5, Enum.EasingStyle.Quint)
	
	map.Scripted.B1Mark:Destroy()
	
	for _,v in ipairs(map.Scripted.BarnDoors:GetChildren()) do
		Tween(v.Slide, TI, {CFrame = v.Slide.CFrame * CFrame.new(-10.5, 0, 0)})
	end
end)

-- > we need to make sure those stay in place, their unscripted after all.
	-- > collect my rewrites
MapLib:Move(unscriptedplanks, Vector3.new(0, 0.1, 0), 2)

MapLib:GetButtonEvent(3):Connect(function(player: Player?)	
	task.wait(1.5)
	ladder3_1.Transparency = 0
	ladder3_1.CanCollide = true
	
	ladder3_2.Transparency = 0
	ladder3_2.CanCollide = true
	ladder3_2_1.Transparency = 0
	ladder3_2_1.CanCollide = true
	ladder3_2_2.Transparency = 0
	ladder3_2_2.CanCollide = true
	
	task.wait(1)
	plank3.Transparency = 0
	plank3.CanCollide = true
	plank3decal1.Transparency = 0
	plank3decal2.Transparency = 0
	plank3decal3.Transparency = 0
	plank3decal4.Transparency = 0
	plank3decal5.Transparency = 0
	plank3decal6.Transparency = 0
	
	plank4.Transparency = 0
	plank4.CanCollide = true
	plank4decal1.Transparency = 0
	plank4decal2.Transparency = 0
	plank4decal3.Transparency = 0
	plank4decal4.Transparency = 0
	plank4decal5.Transparency = 0
	plank4decal6.Transparency = 0
end)

MapLib:GetButtonEvent(4):Connect(function(player: Player?)
	plank1.Transparency = 0
	plank1.CanCollide = true
	plank1decal1.Transparency = 0
	plank1decal2.Transparency = 0
	plank1decal3.Transparency = 0
	plank1decal4.Transparency = 0
	plank1decal5.Transparency = 0
	plank1decal6.Transparency = 0
	
	plank2.Transparency = 0
	plank2.CanCollide = true
	plank2decal1.Transparency = 0
	plank2decal2.Transparency = 0
	plank2decal3.Transparency = 0
	plank2decal4.Transparency = 0
	plank2decal5.Transparency = 0
	plank2decal6.Transparency = 0
end)

task.wait(80)
MapLib:Move(map.Special.Fluid._Liquid1, Vector3.new(0, 68, 0), 25)

--task.wait(60)
--MapLib:MovePart(map.Scripted.door, Vector3.new(0, 25.5, 0), 10)

--MapLib:GetButtonEvent(2):Connect(function(player)
	-- This line will set the liquid type to a default type
	--MapLib:SetLiquidType(map.Special.Fluid._Liquid3, "lava")
--end)

-- This line will move Liquid 2 up 20 studs over the span of 5 seconds
--MapLib:MovePart(map.Special.Fluid._Liquid2, Vector3.new(0, 20, 0), 5)

-- This line will move Liquid 3 up 20 studs locally (based on rotation) over the span of 5 seconds
--MapLib:MovePartLocal(map.Special.Fluid._Liquid1, Vector3.new(0, 20, 0), 5)