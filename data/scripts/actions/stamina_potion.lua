local staminaPotion = Action()

function staminaPotion.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local position = player:getPosition()

    player:setStamina(player:getStamina() + 60)
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You received 60 minutes of stamina.')
    player:say('GULP!.', TALKTYPE_MONSTER_SAY)
	position:sendMagicEffect(CONST_ME_MAGIC_BLUE)
	position:sendMagicEffect(CONST_ME_EXPLOSIONAREA)
    item:remove()
	return true
end

staminaPotion:id(29033)
staminaPotion:register()
