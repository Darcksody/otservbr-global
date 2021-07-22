local config = {
	[TANJIS_BOSS_ACTION] = {teleportToPos = Position(33641, 31234, 11), centerRoom = Position(33643, 31243, 11), kickPosition = Position(33646, 31262, 11)},
	[JAUL_BOSS_ACTION] = {teleportToPos = Position(33546, 31264, 11), centerRoom = Position(33542, 31270, 11), kickPosition = Position(33559, 31284, 11)},
	[OBUJOS_BOSS_ACTION] = {teleportToPos = Position(33421, 31255, 11), centerRoom = Position(33430, 31264, 11), kickPosition = Position(33438, 31246, 11)},
	[EXIT_BOSS_ACTION] = {}
}

local deeplingsTeleportsBosses = MoveEvent()

function deeplingsTeleportsBosses.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	for index, value in pairs(config) do
		if item.actionid == index then
			if item.actionid == EXIT_BOSS_ACTION then
				stopEvent(eventDepplingsBosses[player:getId()])
				return false
			end

			-- Delay Depplings Bosses
			if not playerDepplingsBosses[player:getId()] then
				playerDepplingsBosses[player:getId()] = 0
			end

			if playerDepplingsBosses[player:getId()] > 0 then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have already faced this boss.")
				player:teleportTo(fromPosition, true)
				player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
				return false
			end

			doSendMagicEffect(player:getPosition(), CONST_ME_TELEPORT)
			player:teleportTo(value.teleportToPos)
			doSendMagicEffect(value.teleportToPos, CONST_ME_TELEPORT)

			eventDepplingsBosses[player:getId()] = addEvent(function()
				local spectators = Game.getSpectators(value.centerRoom, false, false, 13, 13, 13, 13)
					for i = 1, #spectators, 1 do
						if spectators[i]:isPlayer() and (spectators[i]:getName() == player:getName()) then
							player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
							player:teleportTo(value.kickPosition)
							player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
							player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Time is over.')
						end
					end
			end, 20 * 60 * 1000)
		end
	end
end

deeplingsTeleportsBosses:type("stepin")

for index, value in pairs(config) do
	deeplingsTeleportsBosses:aid(index)
end

deeplingsTeleportsBosses:register()
 
