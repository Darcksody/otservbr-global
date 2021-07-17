local serverInfo = TalkAction("!serverinfo")

function serverInfo.onSay(player, words, param)

	if player:getStorageValue(AUTOLOOT_EXHAUSTED) > os.time() then
        player:sendCancelMessage('You are exhausted.')
        return false
    end

    player:setStorageValue(AUTOLOOT_EXHAUSTED, os.time() + 3)

	local preyBonus = 0;
	local preyMonster = '';

	for slot = CONST_PREY_SLOT_FIRST, CONST_PREY_SLOT_THIRD do
		if (player:getPreyCurrentMonster(slot) and player:getPreyBonusType(slot) == CONST_BONUS_XP_BONUS) then
			preyBonus = (player:getPreyBonusValue(slot))
			preyMonster = preyMonster .."[".. player:getPreyCurrentMonster(slot) .. " "..preyBonus.."%] "
		end
	end

	local Boost = player:getExpBoostStamina()
	local stillHasBoost = Boost > 0
	local storeXpBoostAmount = stillHasBoost and player:getStoreXpBoost() or 0

	local lootRate = 2;

	if (configManager.getNumber(configKeys.RATE_LOOT) > 2) then
		lootRate = 4;
	end

	local experience = getRateFromTable(experienceStages, player:getLevel(), configManager.getNumber(configKeys.RATE_EXP))
	local str = ""

	local creature = Game.getBoostedCreature()
	if creature then
		str = str.."\nBoosted Creature: "..creature
	end

	str = str .. "\nDouble XP/Skill Event: "..(experience > 2 and 'Enable' or 'Disable')
	str = str .. "\nDouble Loot Event: "..(lootRate > 2 and 'Enable' or 'Disable')

	str = str.."\n\nExperience rate: "..experience
	if preyBonus > 0 and preyMonster then
		str = str.."\nPrey XP Bonus: "..preyMonster
	end

	if (storeXpBoostAmount > 0) then
		str = str.."\nXP Boost: "..storeXpBoostAmount.."%".." for "..(player:getExpBoostStamina() / 60) .. " minutes."
	end

	-- Stamina Bonus
	if configManager.getBoolean(configKeys.STAMINA_SYSTEM) then
		local staminaMinutes = player:getStamina()
		local staminaBonus = '';
		if staminaMinutes > 2340 and player:isPremium() then
			staminaBonus = "x1.5"
		elseif staminaMinutes <= 840 then
			staminaBonus = "x0.5"
		else
			staminaBonus = "x1"
		end
		str = str.."\nStamina XP Bonust: "..staminaBonus
	end

	local guild = player:getGuild()
    if guild ~= nil then
		local membersOnline = #guild:getMembersOnline()
		local guildBonus = 0;
        if membersOnline >= 15  then
			guildBonus = 3
		elseif membersOnline >= 10  then
			guildBonus = 2
		elseif membersOnline >= 5  then
			guildBonus = 1
        end
		str = str.."\nGuild XP Bonus: "..guildBonus.."%"
    end
	
	local houseBonus = 0
	if player:getStorageValue(EXP_BOST_BY_HOUSE) == 1 then
		houseBonus = 1
		str = str.."\nHouse XP Bonus: "..houseBonus.."%"
	end

	str = str.. "\n\nSword Skill rate: " .. getRateFromTable(skillsStages, player:getEffectiveSkillLevel(SKILL_SWORD), configRateSkill)
	str = str.. "\nClub Skill rate: " .. getRateFromTable(skillsStages, player:getEffectiveSkillLevel(SKILL_CLUB), configRateSkill)
	str = str.. "\nAxe Skill rate: " .. getRateFromTable(skillsStages, player:getEffectiveSkillLevel(SKILL_AXE), configRateSkill)
	str = str.. "\nDistance Skill rate: " .. getRateFromTable(skillsStages, player:getEffectiveSkillLevel(SKILL_DISTANCE), configRateSkill)
	str = str.. "\nShield Skill rate: " .. getRateFromTable(skillsStages, player:getEffectiveSkillLevel(SKILL_SHIELD), configRateSkill)
	str = str.. "\nFist Skill rate: " .. getRateFromTable(skillsStages, player:getEffectiveSkillLevel(SKILL_FIST), configRateSkill)
	str = str.. "\nMagic rate: " .. getRateFromTable(magicLevelStages, player:getMagicLevel(), configManager.getNumber(configKeys.RATE_MAGIC))
	str = str.. "\nLoot rate: " .. lootRate

	player:popupFYI("Server Information:\n" .. str)

	return false
end

serverInfo:separator(" ")
serverInfo:register()