local taskSystemOnKill = CreatureEvent("TaskSystemOnKill")
function taskSystemOnKill.onKill(player, creature, lastHit)

    if not player:isPlayer() or not creature:isMonster() or creature:hasBeenSummoned() or creature:isPlayer() then
		return true
	end

    tryAddTaskPoints(player, creature, false)

    if TASK_SYSTEM.CONFIG.countPartyMembers then
        local party = player:getParty()
        if party then
            local partyMembers = party:getMembers()
            for i = 1, #partyMembers, 1 do
                local partyPlayer = partyMembers[i]
                if partyPlayer:getName() ~= player:getName() then
                    tryAddTaskPoints(partyPlayer, creature, true)
                end
            end
        end
    end

	-- if not player:isPlayer() or not creature:isMonster() or creature:hasBeenSummoned() or creature:isPlayer() then
	-- 	return true
	-- end

	-- for cid, damage in pairs(creature:getDamageMap()) do
	-- 	local participant = Player(cid)
	-- 	if participant and participant:isPlayer() then
	-- 		participant:addBestiaryKill(creature:getName())
	-- 	end
	-- end


	return true
end
taskSystemOnKill:register()