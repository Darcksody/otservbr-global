math.randomseed(os.time())
dofile('data/lib/lib.lua')
 
GAMESTORE_MOUNT_DISCOUNT = 200
GAMESTORE_OUTFIT_DISCOUNT = 200

GAMESTORE_OUTFIT_DISCOUNT = 200
TIBIA_COIN_DROP_CHANCE = 10

MONSTER_RUN_HEALTH_RATE = 1.5
MONSTER_SUMMON_MULT = 500

-- CoinsHour
GET_DAY_STORAGE_HOURCOIN = 48485000
MAX_STORAGE_HOURCOIN = 48485001
MAX_COUNT_HOURCOIN = 5

-- AccessStorage
ACCESS_AREAS_QUEST_BLOQUEADO = 48485002
ACCESS_AREAS_QUEST = 48485003

-- TibiaCoinsLevelUp
TIBIA_COIN_LVL_20 = 48485004
TIBIA_COIN_LVL_30 = 48485005
TIBIA_COIN_LVL_40 = 48485006
TIBIA_COIN_LVL_50 = 48485007
TIBIA_COIN_LVL_60 = 48485008
TIBIA_COIN_LVL_70 = 48485009
TIBIA_COIN_LVL_80 = 48485010
TIBIA_COIN_LVL_90 = 48485011
TIBIA_COIN_LVL_100 = 48485012
TIBIA_COIN_LVL_150 = 48485013
TIBIA_COIN_LVL_200 = 48485014
TIBIA_COIN_LVL_250 = 48485015
TIBIA_COIN_LVL_300 = 48485016
TIBIA_COIN_LVL_400 = 48485017
TIBIA_COIN_LVL_500 = 48485018
TIBIA_COIN_LVL_reo3 = 48485019
TIBIA_COIN_LVL_rdo4 = 48485020

SANTA_CLAUS_PRESENT = 48485021

EMOTE_SPELLS_STORAGE = 48485022

STORAGE_LVL_50_CC = 48485023

TRAINING_MONK_STORAGE = 48485024

STORAGEVALUE_BATHTUB = 48485025

PARTY_MEMBERS_TASK_SYSTEM = 48485026

EXP_BOST_BY_HOUSE = 48485027

-- IMPORTANT FOR TASK SYSTEM CONTINUOS STORAGES
MAXIMUM_TASK_AT_ONCE = 3
STARTED_TASK_STORAGE = 49500000
START_TASK_STORAGE = 49510000
START_MONSTER_TASK_STORAGE = 49520000
COUNT_PARTY_MEMBERS = true

DOBLE_EXP_CLIENT = false
DOBLE_LOOT_CLIENT = false

-- AUTOLLOT START --
AUTOLOOT_EXHAUSTED = 48485028
AUTOLOOT_STATUS = 48485029
AUTOLOOT_INCREASE = 48485030
AUTOLOOT_MAXITEMS = 10

TOGGLE_LOG_LOGIN = 48485031

function comma_value(n)
	local left,num,right = string.match(n,'^([^%d]*%d)(%d*)(.-)$')
	return left..(num:reverse():gsub('(%d%d%d)','%1,'):reverse())..right
end


function trim(string)
   return string:match("^%s*(.-)%s*$")
end


local dataTypes = {
    number = result.getNumber,
    string = result.getString,
    stream = result.getStream
}
 
function queryToTable(id, values)
    local ret = {}
    if not id then
        return ret
    end
    repeat
        local t = {}
        for i = 1, #values do
            local column, dataType = values[i]:match('(%a+):(%a+)')
            t[column] = dataTypes[dataType](id, column)
        end
        table.insert(ret, t)
    until not result.next(id)
    return ret
end
-- AUTO LOOT END --

TANJIS_BOSS_ACTION = 58241
JAUL_BOSS_ACTION = 58242
OBUJOS_BOSS_ACTION = 58243
EXIT_BOSS_ACTION = 58244

NOT_MOVEABLE_ACTION = 100
PARTY_PROTECTION = 1 -- Set to 0 to disable.
ADVANCED_SECURE_MODE = 1 -- Set to 0 to disable.

STORAGEVALUE_PROMOTION = 30018

SERVER_NAME = configManager.getString(configKeys.SERVER_NAME)

-- Bestiary charm
GLOBAL_CHARM_GUT = 0
GLOBAL_CHARM_SCAVENGE = 0

--WEATHER
weatherConfig = {
    groundEffect = CONST_ME_LOSEENERGY,
	fallEffect = CONST_ANI_SMALLICE,
    thunderEffect = configManager.getBoolean(configKeys.WEATHER_THUNDER),
    minDMG = 1,
    maxDMG = 5
}

-- Event Schedule
SCHEDULE_LOOT_RATE = 100
SCHEDULE_EXP_RATE = 100
SCHEDULE_SKILL_RATE = 100

-- MARRY
PROPOSED_STATUS = 1
MARRIED_STATUS = 2
PROPACCEPT_STATUS = 3
LOOK_MARRIAGE_DESCR = TRUE
ITEM_WEDDING_RING = 2121
ITEM_ENGRAVED_WEDDING_RING = 10502

-- Scarlett Etzel
SCARLETT_MAY_TRANSFORM = 0
SCARLETT_MAY_DIE = 0

ropeSpots = {384, 418, 8278, 8592, 13189, 14436, 15635, 19518, 26019, 24621, 24622, 24623, 24624}
specialRopeSpots = { 14435 }

-- Impact Analyser
-- Every 2 seconds
updateInterval = 2
-- Healing
-- Global table to insert data
healingImpact = {}
-- Damage
-- Global table to insert data
damageImpact = {}

-- New prey => preyTimeLeft
nextPreyTime = {}

startupGlobalStorages = {
	GlobalStorage.TheAncientTombs.AshmunrahSwitchesGlobalStorage,
	GlobalStorage.TheAncientTombs.DiprathSwitchesGlobalStorage,
	GlobalStorage.TheAncientTombs.ThalasSwitchesGlobalStorage,
	GlobalStorage.HeroRathleton.FirstMachines,
	GlobalStorage.HeroRathleton.SecondMachines,
	GlobalStorage.HeroRathleton.ThirdMachines,
	GlobalStorage.HeroRathleton.DeepRunning,
	GlobalStorage.HeroRathleton.HorrorRunning,
	GlobalStorage.HeroRathleton.LavaRunning,
	GlobalStorage.HeroRathleton.MaxxenRunning,
	GlobalStorage.HeroRathleton.LavaCounter,
	GlobalStorage.HeroRathleton.FourthMachines,
	GlobalStorage.FerumbrasAscendant.Crystals.Crystal1,
	GlobalStorage.FerumbrasAscendant.Crystals.Crystal2,
	GlobalStorage.FerumbrasAscendant.Crystals.Crystal3,
	GlobalStorage.FerumbrasAscendant.Crystals.Crystal4,
	GlobalStorage.FerumbrasAscendant.Crystals.Crystal5,
	GlobalStorage.FerumbrasAscendant.Crystals.Crystal6,
	GlobalStorage.FerumbrasAscendant.Crystals.Crystal7,
	GlobalStorage.FerumbrasAscendant.Crystals.Crystal8,
	GlobalStorage.FerumbrasAscendant.Crystals.AllCrystals,
	GlobalStorage.FerumbrasAscendant.FerumbrasEssence,
	GlobalStorage.Feroxa.Active,
	GlobalStorage.FerumbrasAscendant.Habitats.AllHabitats,
	GlobalStorage.FerumbrasAscendant.Elements.Active,
	GlobalStorage.FerumbrasAscendant.Elements.First,
	GlobalStorage.FerumbrasAscendant.Elements.Second,
	GlobalStorage.FerumbrasAscendant.Elements.Third,
	GlobalStorage.FerumbrasAscendant.Elements.Done
}

do -- Event Schedule rates
	local lootRate = Game.getEventSLoot()
	if lootRate ~= 100 then
		SCHEDULE_LOOT_RATE = lootRate
	end

	local expRate = Game.getEventSExp()
	if expRate ~= 100 then
		SCHEDULE_EXP_RATE = expRate
	end

	local skillRate = Game.getEventSSkill()
	if skillRate ~= 100 then
		SCHEDULE_SKILL_RATE = skillRate
	end
end

table.contains = function(array, value)
	for _, targetColumn in pairs(array) do
		if targetColumn == value then
			return true
		end
	end
	return false
end

string.split = function(str, sep)
	local res = {}
	for v in str:gmatch("([^" .. sep .. "]+)") do
		res[#res + 1] = v
	end
	return res
end

string.splitTrimmed = function(str, sep)
	local res = {}
	for v in str:gmatch("([^" .. sep .. "]+)") do
		res[#res + 1] = v:trim()
	end
	return res
end

string.trim = function(str)
	return str:match'^()%s*$' and '' or str:match'^%s*(.*%S)'
end

-- Stamina
if nextUseStaminaTime == nil then
	nextUseStaminaTime = {}
end

if nextUseStaminaPrey == nil then
	nextUseStaminaPrey = {}
end

if nextUseXpStamina == nil then
	nextUseXpStamina = {}
end

if lastItemImbuing == nil then
	lastItemImbuing = {}
end

if nextDelayPreyReroll == nil then
	nextDelayPreyReroll = {}
end

-- Delay potion
if not playerDelayPotion then
	playerDelayPotion = {}
end

-- Delay Depplings Bosses
if not playerDepplingsBosses then
	playerDepplingsBosses = {}
end

-- Event Depplings Bosses
if not eventDepplingsBosses then
	eventDepplingsBosses = {}
end


