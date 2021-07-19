
local startuphack = GlobalEvent("startuphack")
function startuphack.onStartup()
	local wallTile = Tile(Position(33206, 32536, 6))
	if not wallTile or wallTile:getItemCountById(877) > 0 then
		wallTile:getItemById(877):transform(8202)
	end
end
startuphack:register()
