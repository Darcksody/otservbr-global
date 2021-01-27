local deathChannel = CreatureEvent("DeathChannel")
function deathChannel.onDeath(player, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified)
	local creature = Creature(player)
    local damageMap = creature:getDamageMap()
    for creatureId, damage in pairs(damageMap) do
        local thing = Creature(creatureId)
    end
    i = 0
    str = getCreatureName(player).." ["..getPlayerLevel(player).."]"
    for _, pid in pairs(damageMap) do
        i = i + 1
        if (i == 1) then
            if(#damageMap <= 1) then
                str = str.." was killed by "
            elseif(#damageMap > 1 and #damageMap <= 4) then
                str = str.." was slain by "
            elseif(#damageMap > 4 and #damageMap <= 7) then
                str = str.." was crushed by "
            elseif(#damageMap > 7 and #damageMap <= 10) then
                str = str.." was eliminated by "
            elseif(#damageMap > 10) then
                str = str.." was annihilated by "
            end
        elseif (i == #damageMap) then
            str = str.." and "
        else
            str = str..", "
        end

        if not(isPlayer(pid) or isMonster(pid)) then
            str = str.."a field item"
        elseif isSummon(pid) then
            str = str.."a "..getCreatureName(pid):lower().." summoned by "..(isPlayer(getCreatureMaster(pid)) and "" or "a ")..""..getCreatureName(getCreatureMaster(pid))
        elseif isPlayer(pid) then
            str = str..""..getCreatureName(pid)
        elseif isMonster(pid) then
            str = str.."a "..getCreatureName(pid):lower()
        end
    end
    str = str.."."
    if(#damageMap <= 1) and not (isMonster(pid)) then
    sendChannelMessage(20, TALKTYPE_CHANNEL_R1, str)
    end
    if(#damageMap > 1 and #damageMap <= 4) and not (isMonster(pid)) then
    sendChannelMessage(20, TALKTYPE_CHANNEL_R1, str)
    end
    if(#damageMap > 4 and #damageMap <= 7) and not (isMonster(pid)) then
    sendChannelMessage(20, TALKTYPE_CHANNEL_R1, str)
    end
    if(#damageMap > 7 and #damageMap <= 10) and not (isMonster(pid)) then
    sendChannelMessage(20, TALKTYPE_CHANNEL_R1, str)
    end
    if(#damageMap > 10) and not (isMonster(pid)) then
    sendChannelMessage(20, TALKTYPE_CHANNEL_R1, str)
    end
    if (isMonster(pid)) then
    str = str.."a "..getCreatureName(pid):lower()
    sendChannelMessage(20, TALKTYPE_CHANNEL_R1, str)
    end
    return true

end
deathChannel:register()