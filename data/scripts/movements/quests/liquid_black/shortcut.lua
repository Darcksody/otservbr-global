local enterPosition = {x = 33478, y = 31314, z = 7}

local shortcut = MoveEvent()

function shortcut.onStepIn(creature, item, toPosition, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	player:setStorageValue(Storage.LiquidBlackQuest.Visitor, 5)
	player:teleportTo(enterPosition)
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)

	return true
end

shortcut:aid(57746)
shortcut:register()
