local commands = TalkAction("!commands")

function commands.onSay(player, words, param)

	local msg = [[
1 *> !autoloot show, clear, add itemName, remove itemName.
2 *> !bless
3 *> !serverinfo
4 *> !leavehouse
5 *> !sellhouse
6 *> !time
7 *> !emotespells
]]
player:popupFYI(msg)
	return false
end

commands:register()