local deathChannel = CreatureEvent("DeathChannel")

function table.size(t)
    local size = 0
    for k, v in pairs(t) do
        size = size + 1
    end
    return size
end

function deathChannel.onDeath(player, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified)
    local damageMap = player:getDamageMap()
    local damageSize = table.size(damageMap)
    local str = string.format("%s [%u]", player:getName(), player:getLevel())
    if (damageSize <= 1) then
        str = str.." was killed by "
    elseif (damageSize > 1 and damageSize <= 4) then
        str = str.." was slain by "
    elseif (damageSize > 4 and damageSize <= 7) then
        str = str.." was crushed by "
    elseif (damageSize > 7 and damageSize <= 10) then
        str = str.." was eliminated by "
    elseif (damageSize > 10) then
        str = str.." was annihilated by "
    end
    local saveNames = {}
    local i = 0
    for pid, _ in pairs(damageMap) do
        i = i + 1
        local creatureName = getCreatureName(pid)
        if isPlayer(pid) or (isMonster(pid) and not saveNames[creatureName]) then
            if (i == damageSize) then
                str = string.format("%s and ", str)
            elseif (i ~= 1) then
                str = string.format("%s, ", str)
            end
            saveNames[creatureName] = true
            str = string.format("%s %s", str, creatureName:lower())
        end
    end

    for _, pid in ipairs(Game.getPlayers()) do
    	pid:sendTextMessage(MESSAGE_GUILD, str..".", 20)
	end

    return true
end

deathChannel:register()