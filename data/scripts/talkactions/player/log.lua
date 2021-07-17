
local logBox = TalkAction("!log")

function logBox.onSay(player, words, param)

    local switch = player:getStorageValue(TOGGLE_LOG_LOGIN) == -1 and 1 or -1

    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Information Box: (' .. (switch == 1 and 'off' or 'on') .. ')')
	player:setStorageValue(TOGGLE_LOG_LOGIN, switch)

    return false
end

logBox:register()
