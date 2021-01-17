local spell = Spell(SPELL_INSTANT)

function spell.onCastSpell(creature, variant)
	local vocation = creature:getVocation()
	if vocation then
		return creature:conjureItem(0, 2120, 1, CONST_ME_MAGIC_BLUE)
	else
		creature:sendCancelMessage(RETURNVALUE_YOURVOCATIONCANNOTUSETHISSPELL)
		creature:getPosition():sendMagicEffect(CONST_ME_POFF)
		return false
	end
end

spell:name("Rope Call")
spell:id(184)
spell:words("adori rope")
spell:level(1)
spell:mana(20)
spell:soul(30)
spell:group("support")
spell:isAggressive(false)
spell:cooldown(5 *1000)
spell:groupCooldown(2 *1000)
spell:needLearn(false)
spell:isSelfTarget(true)
spell:isPremium(false)
spell:register()
