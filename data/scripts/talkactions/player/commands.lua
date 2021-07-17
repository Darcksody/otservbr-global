local commands = TalkAction("!commands")

function commands.onSay(player, words, param)

	local msg = [[
1 *> !loot
2 *> !bless
3 *> !serverinfo
4 *> !leavehouse
5 *> !sellhouse
6 *> !time
7 *> !emotespells
8 *> !log (Enable/Disable on login popup information).
9 *> !online
]]

player:popupFYI(msg)

	return false
end

commands:register()