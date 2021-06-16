local bathtubEnter = MoveEvent()
local playerBathTub = 29323

local staminaBonus = {
	period = 60000, -- time on miliseconds 60000
	bonus = 2, -- gain stamina
	events = {}
}

local function addStamina(name)
	local player = Player(name)
	if not player then
		staminaBonus.events[name] = nil
	else
		local storage = player:getStorageValue(STORAGEVALUE_BATHTUB)
		if storage ~= 1 then
			staminaBonus.events[name] = nil
		else

			local StaminaLevel = player:getStamina()
			local StaminaMax = 42 * 60

			if StaminaLevel >= StaminaMax then
			else
				player:setStamina(StaminaLevel + staminaBonus.bonus)
				player:sendTextMessage(MESSAGE_STATUS_DEFAULT, "Two minutes of stamina has been refilled.")
			end

			staminaBonus.events[name] = addEvent(addStamina, staminaBonus.period, name)
		end
	end
end

function bathtubEnter.onStepIn(creature, item, position, fromPosition)
	if not creature:isPlayer() then
		return false
	end

	local vocation = creature:getVocation()
	if not vocation then
		return nil
	end

	creature:setStorageValue(STORAGEVALUE_BATHTUB, 1)

	local conditionOutfit = Condition(CONDITION_OUTFIT)
	conditionOutfit:setOutfit({lookTypeEx = playerBathTub})
	conditionOutfit:setTicks(-1)
 
	local conditionRegeneration = Condition(CONDITION_REGENERATION, CONDITIONID_DEFAULT)
	conditionRegeneration:setParameter(CONDITION_PARAM_SUBID, 55555)
	conditionRegeneration:setTicks(-1)
	-- conditionRegeneration:setParameter(CONDITION_PARAM_HEALTHGAIN, vocation:getHealthGainAmount())
	-- conditionRegeneration:setParameter(CONDITION_PARAM_HEALTHTICKS, vocation:getHealthGainTicks() * 1000)
	conditionRegeneration:setParameter(CONDITION_PARAM_MANAGAIN, vocation:getManaGainAmount())
	conditionRegeneration:setParameter(CONDITION_PARAM_MANATICKS, vocation:getManaGainTicks() * 1000)

	position:sendMagicEffect(CONST_ME_WATERSPLASH)
	item:transform(BATHTUB_FILLED_NOTMOVABLE)
	creature:addCondition(conditionOutfit)
	creature:addCondition(conditionRegeneration)

	local name = creature:getName()
	if not staminaBonus.events[name] then
		staminaBonus.events[name] = addEvent(addStamina, staminaBonus.period, name)
	end

	return true
end

bathtubEnter:id(BATHTUB_FILLED)
bathtubEnter:register()

local bathtubExit = MoveEvent()
function bathtubExit.onStepOut(creature, item, position, fromPosition)
	if not creature:isPlayer() then
		return false
	end

	item:transform(BATHTUB_FILLED)
	creature:removeCondition(CONDITION_OUTFIT)
	creature:removeCondition(CONDITION_REGENERATION, CONDITIONID_DEFAULT, 55555)
	creature:setStorageValue(STORAGEVALUE_BATHTUB, 0)
	return true
end

bathtubExit:id(BATHTUB_FILLED_NOTMOVABLE)
bathtubExit:register()
