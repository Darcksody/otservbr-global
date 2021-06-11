local mType = Game.createMonsterType("Pinata Dragon")
local monster = {}

monster.name = "Pinata Dragon"
monster.description = "a Pinata Dragon"
monster.experience = 1000000
monster.outfit = {
	lookTypeEx = 27730
}

monster.health = 100000
monster.maxHealth = 100000
monster.race = "undead"
monster.corpse = 27731
monster.speed = 0
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 0
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 15,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "You can't have my treasures!", yell = false},
	{text = "Hit me one more time!", yell = false},
	{text = "Na Nana Naaa Naaa!", yell = false},
	{text = "You'll never get my stuff!", yell = false},
	{text = "Do you really want to hurt me?", yell = false},
	{text = "Bring it on!", yell = false}
}

monster.loot = {
	{name = "white pearl", chance = 5010, maxCount = 5},
	{name = "black pearl", chance = 5030, maxCount = 5},
	{name = "gold ingot", chance = 5000, maxCount = 3},
	{name = "Store coin", chance = 50000, maxCount = 25},
	{name = "Store coin", chance = 90000, maxCount = 25},
	{name = "Store coin", chance = 10000, maxCount = 25},
	{name = "gold coin", chance = 10000, maxCount = 100},
	{name = "gold coin", chance = 10000, maxCount = 100},
	{name = "gold coin", chance = 10000, maxCount = 100},
	{name = "platinum coin", chance = 10000, maxCount = 100},
	{name = "platinum coin", chance = 10000, maxCount = 100},
	{name = "small emerald", chance = 8000, maxCount = 10},
	{name = "small amethyst", chance = 8000, maxCount = 10},
	{name = "small ruby", chance = 8000, maxCount = 10},
	{name = "small topaz", chance = 8000, maxCount = 10},
	{name = "talon", chance = 8000, maxCount = 10},
	{name = "platinum amulet", chance = 5680},
	{name = "life crystal", chance = 10000},
	{name = "violet gem", chance = 10000},
	{name = "green gem", chance = 10000},
	{name = "red gem", chance = 10000},
	{name = "crystal coin", chance = 5000, maxCount = 10},
	{name = "crystal coin", chance = 5000, maxCount = 10},
	{name = "birthday backpack", chance = 3600},
	{name = "anniversary backpack", chance = 3400},
	{name = "stamina potion", chance = 5000},
	{name = "stamina potion", chance = 5000},

	{id = 27617, chance = 5000},
	{id = 7737, chance = 3000},
	{id = 9076, chance = 3000},
	{id = 7739, chance = 3000},
	{id = 27617, chance = 5000},
	{id = 7737, chance = 3000},
	{id = 9076, chance = 3000},
	{id = 7739, chance = 3000},
	{id = 27617, chance = 5000},
	{id = 7737, chance = 3000},
	{id = 9076, chance = 3000},
	{id = 7739, chance = 3000},
	{id = 27617, chance = 5000},
	{id = 7737, chance = 3000},
	{id = 9076, chance = 3000},
	{id = 7739, chance = 3000},

	{name = "silver token", chance = 2200, maxCount = 5},
	{name = "gold token", chance = 2000, maxCount = 5},
	{name = "silver token", chance = 2200, maxCount = 5},
	{name = "gold token", chance = 2000, maxCount = 5},
	{name = "plushie of devovorga", chance = 1000},
	{name = "plushie of gaz'Haragoth", chance = 1000},
	{name = "plushie of Tentugly", chance = 1000},
	{name = "Ferumbras' Candy Hat", chance = 2000},
	{name = "Store coin", chance = 6000, maxCount = 50},
	{name = "Store coin", chance = 5000, maxCount = 50},
	{name = "Store coin", chance = 4000, maxCount = 50},
	{name = "Store coin", chance = 3000, maxCount = 50},
	{name = "crackling egg", chance = 400},
	{name = "vibrant egg", chance = 200}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -50, maxDamage = -150}
}

monster.defenses = {
	defense = 1,
	armor = 1,
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 25000, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -50},
	{type = COMBAT_ENERGYDAMAGE, percent = -50},
	{type = COMBAT_EARTHDAMAGE, percent = -50},
	{type = COMBAT_FIREDAMAGE, percent = -50},
	{type = COMBAT_LIFEDRAIN, percent = -50},
	{type = COMBAT_MANADRAIN, percent = -50},
	{type = COMBAT_DROWNDAMAGE, percent = -50},
	{type = COMBAT_ICEDAMAGE, percent = -50},
	{type = COMBAT_HOLYDAMAGE , percent = -50},
	{type = COMBAT_DEATHDAMAGE , percent = -50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end


mType:register(monster)
