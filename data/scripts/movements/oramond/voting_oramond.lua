local places = {
	{ name = 'Minotaurs', position = Position(31254, 32604, 9) }, --Minos
	{ name = 'Catacombs', position = Position(33459, 31715, 9) }, --Catacombs
	{ name = 'Golems', position = Position(31061, 32605, 9) } --Golem
}

local votingOramond = MoveEvent()
function votingOramond.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

    local window = ModalWindow {
        title = "Shortcuts",
        message = 'Oramond Locations list'
    }

	for i = 1, #places, 1 do
		local place = places[i]
		local choice = window:addChoice(place.name)
		choice.position = place.position
	end
	
	window:addButton("Go", function(button, choice)
        if player and choice then
            player:teleportTo(choice.position)
			fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
			player:say("Slrrp!", TALKTYPE_MONSTER_SAY)
        end
    end)

    window:addButton("Cancel")
    window:setDefaultEscapeButton("Cancel")
    window:sendToPlayer(player)
	return true
end

votingOramond:type("stepin")
votingOramond:aid(42628)
votingOramond:register()
