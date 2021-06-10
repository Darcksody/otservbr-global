local mType = Game.createMonsterType("Pinata Dragon")
local monster = {}

monster.name = "Pinata Dragon"
monster.description = "a Pinata Dragon"
monster.experience = 50000
monster.outfit = {
	lookTypeEx = 27730
}

monster.health = 100000
monster.maxHealth = 100000
monster.race = "undead"
monster.corpse = 0
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
	pushable = true,
	rewardBoss = false,
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
	-- {name = "birthday backpack", chance = 1000},
	-- {name = "anniversary backpack", chance = 900},
	-- {name = "crystal coin", chance = 800, maxCount = 100},
	-- {id = 27617, chance = 700},
	-- {id = 7737, chance = 600},
	-- {id = 9076, chance = 500},
	-- {id = 7739, chance = 400},
	-- {name = "silver token", chance = 300},
	-- {name = "gold token", chance = 200},
	-- {name = "plushie of devovorga", chance = 100},
	-- {name = "plushie of gaz'Haragoth", chance = 90},
	-- {name = "plushie of Tentugly", chance = 80},
	-- {name = "Ferumbras' Candy Hat", chance = 70},
	-- {name = "stamina potion", chance = 60},
	-- {name = "vibrant egg", chance = 50},
	-- {name = "crackling egg", chance = 40},
	-- {name = "Store coin", chance = 30, maxCount = 100},
	-- {name = "Store coin", chance = 20, maxCount = 100},
	-- {name = "Store coin", chance = 10, maxCount = 50}
}

monster.attacks = {
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

mType:register(monster)
