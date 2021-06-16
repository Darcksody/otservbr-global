local staminaPotion = Action()

function staminaPotion.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local position = player:getPosition()
    local StaminaLevel = player:getStamina()
    local StaminaMax = 42 * 60
    local StaminaValue = 60

    if StaminaLevel >= StaminaMax then
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, "Your stamina is already full.")
    else
        player:setStamina(StaminaLevel + StaminaValue)
	    position:sendMagicEffect(CONST_ME_MAGIC_BLUE)
        position:sendMagicEffect(CONST_ME_EXPLOSIONAREA)
        player:say('GULP!.', TALKTYPE_MONSTER_SAY)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "60 minutes of stamina has been refilled.")
        item:remove()
    end
	return true
end

staminaPotion:id(29033)
staminaPotion:register()