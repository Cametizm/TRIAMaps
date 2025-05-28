require(game:GetService("ServerScriptService").Runtime):Init()

--^^Must be at the top of every script

local MapLib = game.GetMapLib:Invoke()()
local map = MapLib.map

local Players = game.Players
local TweenService = game:GetService("TweenService")

local cow1 = map.Scripted.Cow_1.Torso
local debounce1 = true

local mdl1 = map.Scripted.Medal.d1
local vines = map.Scripted.Medal.SquareVines

local victory = map.Scripted.Medal.victory

cow1.Touched:Connect(function(hit)
	if Players:GetPlayerFromCharacter(hit.Parent) then
	if debounce1 == true then	
		debounce1 = false
		
		victory:Play()
		mdl1.Transparency = 1
		mdl1.CanCollide = false
		vines.Transparency = 0.3
		vines.CanCollide = false
	else	
		return false;
	end		
  end
end)

local function Tween(Instance: Instance,TweenInfo: TweenInfo, Properties: {})
	task.spawn(function() TweenService:Create(Instance, TweenInfo, Properties):Play() end)
end







