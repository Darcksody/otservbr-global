local area = createCombatArea({
    {0, 1, 1, 1, 0},
    {1, 1, 1, 1, 1},
    {1, 1, 3, 1, 1},
   {1, 1, 1, 1, 1},
   {0, 1, 1, 1, 0},
})

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ENERGYHIT)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_DIAMONDARROW)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
combat:setFormula(COMBAT_FORMULA_SKILL, 0, 0, 1, 0)
combat:setArea(area)

local diamondArrowOld = Weapon(WEAPON_AMMO)

function diamondArrowOld.onUseWeapon(player, variant)
   return combat:execute(player, variant)
end

diamondArrowOld:id(29057)
diamondArrowOld:level(150)
diamondArrowOld:attack(37)
diamondArrowOld:action("removecount")
diamondArrowOld:ammoType("arrow")
diamondArrowOld:shootType(CONST_ANI_DIAMONDARROW)
diamondArrowOld:maxHitChance(100)
diamondArrowOld:wieldUnproperly(true)
diamondArrowOld:register()
