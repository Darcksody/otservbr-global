local ladder = MoveEvent()

function ladder.onStepIn(creature, item, toPosition, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	player:setStorageValue(Storage.LiquidBlackQuest.Visitor, 5)
	player:getPosition():sendMagicEffect(CONST_ME_WATERSPLASH)
	
	return true
end

ladder:aid(57745)
ladder:register()
