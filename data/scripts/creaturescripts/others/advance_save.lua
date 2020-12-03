local config = {
	heal = true,
	save = true,
	effect = false
}

local advanceSave = CreatureEvent("AdvanceSave")
function advanceSave.onAdvance(player, skill, oldLevel, newLevel)
	if skill ~= SKILL_LEVEL or newLevel <= oldLevel then
		return true
	end

	if config.effect then
		player:getPosition():sendMagicEffect(math.random(CONST_ME_FIREWORK_YELLOW, CONST_ME_FIREWORK_BLUE))
		player:say('LEVEL UP!', TALKTYPE_MONSTER_SAY)
	end

	if config.heal then
		player:addHealth(player:getMaxHealth())
		player:addItem(2152, 2)
        player:getPosition():sendMagicEffect(CONST_ME_CRAPS)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You received 2 platinum coin for getting " .. newLevel .. " level.")
	end

	if config.save then
		player:save()
	end
	return true
end
advanceSave:register()
