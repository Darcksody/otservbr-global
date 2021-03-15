local spell = Spell(SPELL_INSTANT)

function spell.onCastSpell(creature, variant)
	local vocation = creature:getVocation()
	if vocation then
		return creature:conjureItem(0, 2260, 1, CONST_ME_MAGIC_BLUE)
	else
		creature:sendCancelMessage(RETURNVALUE_YOURVOCATIONCANNOTUSETHISSPELL)
		creature:getPosition():sendMagicEffect(CONST_ME_POFF)
		return false
	end
end

spell:name("Blank Rune Call")
spell:id(182)
spell:words("adori rune")
spell:level(1)
spell:mana(20)
spell:soul(20)
spell:group("support")
spell:isAggressive(false)
spell:cooldown(5 *1000)
spell:groupCooldown(2 *1000)
spell:needLearn(false)
spell:isSelfTarget(true)
spell:isPremium(false)
spell:register()
