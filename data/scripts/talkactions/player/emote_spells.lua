local emoteSpells = TalkAction("!emotespells")
function emoteSpells.onSay(player, words, param)

	local switch = player:getStorageValue(48485022) == -1 and 1 or -1

	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'emote spells: (' .. (switch == 1 and 'on' or 'off') .. ')')
	player:setStorageValue(48485022, switch)
	return false
end

emoteSpells:register()
