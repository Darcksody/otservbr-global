local tibiaCoin = Action()

function tibiaCoin.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local position = player:getPosition()
    db.query("UPDATE accounts SET coins = coins + 1 WHERE id = '" ..player:getAccountId().. "';")
    player:sendTextMessage(MESSAGE_FAILURE, 'You received 1 Tibia Coin.')
    player:say("Tibia Coin!", TALKTYPE_MONSTER_SAY)
	position:sendMagicEffect(CONST_ME_MAGIC_BLUE)
    item:remove(1)
	return true
end

tibiaCoin:id(24774)
tibiaCoin:register()
