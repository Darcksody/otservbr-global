--[[
Items have been updated so that if the offer type is not one of the types: OFFER_TYPE_OUTFIT, OFFER_TYPE_OUTFIT_ADDON,
OFFER_TYPE_MOUNT, OFFER_TYPE_NAMECHANGE, OFFER_TYPE_SEXCHANGE, OFFER_TYPE_PROMOTION, OFFER_TYPE_EXPBOOST,
OFFER_TYPE_PREYSLOT, OFFER_TYPE_PREYBONUS, OFFER_TYPE_TEMPLE, OFFER_TYPE_BLESSINGS, OFFER_TYPE_PREMIUM,
OFFER_TYPE_ALLBLESSINGS
]] -- Parser
dofile('data/modules/scripts/gamestore/init.lua')
-- Config

HomeBanners = {
    images = {"home/banner_cunninghyaena.png", "home/banner_jousters.png"},
    delay = 10
}

GameStore.Categories = {
    { -- Premium Time
        icons = {"Category_PremiumTime.png"},
        name = "Premium Time",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"Premium_Time_30.png"},
                name = "30 Days of Premium Time",
                price = 50,
                id = 3030,
                validUntil = 30,
                description = "<i>Enhance your gaming experience by gaining additional abilities and advantages:</i>\n\n- access to Premium areas\n- use Tibia's transport system (ships, carpet)\n- more spells\n- rent houses\n- found guilds\n- offline training\n- larger depots\n- and many more\n\n{usablebyallicon} valid for all characters on this account\n{activated}",
                type = GameStore.OfferTypes.OFFER_TYPE_PREMIUM
            }, {
                icons = {"Premium_Time_90.png"},
                name = "90 Days of Premium Time",
                price = 150,
                id = 3090,
                validUntil = 90,
                description = "<i>Enhance your gaming experience by gaining additional abilities and advantages:</i>\n\n- access to Premium areas\n- use Tibia's transport system (ships, carpet)\n- more spells\n- rent houses\n- found guilds\n- offline training\n- larger depots\n- and many more\n\n{usablebyallicon} valid for all characters on this account\n{activated}",
                type = GameStore.OfferTypes.OFFER_TYPE_PREMIUM
            }, {
                icons = {"Premium_Time_180.png"},
                name = "180 Days of Premium Time",
                price = 300,
                id = 3180,
                validUntil = 180,
                description = "<i>Enhance your gaming experience by gaining additional abilities and advantages:</i>\n\n- access to Premium areas\n- use Tibia's transport system (ships, carpet)\n- more spells\n- rent houses\n- found guilds\n- offline training\n- larger depots\n- and many more\n\n{usablebyallicon} valid for all characters on this account\n{activated}",
                type = GameStore.OfferTypes.OFFER_TYPE_PREMIUM
            }, {
                icons = {"Premium_Time_360.png"},
                name = "360 Days of Premium Time",
                price = 600,
                id = 3360,
                validUntil = 360,
                description = "<i>Enhance your gaming experience by gaining additional abilities and advantages:</i>\n\n- access to Premium areas\n- use Tibia's transport system (ships, carpet)\n- more spells\n- rent houses\n- found guilds\n- offline training\n- larger depots\n- and many more\n\n{usablebyallicon} valid for all characters on this account\n{activated}",
                type = GameStore.OfferTypes.OFFER_TYPE_PREMIUM
            }
        }
    }, { -- Consumables
        icons = {"Category_Consumables.png"},
        name = "Consumables",
        rookgaard = true,
        subclasses = {
            "Blessings", "Casks", "Exercise Weapons", "Kegs", "Potions", "Runes"
        }
    }, { -- Blessings
        icons = {"Category_Blessings.png"},
        name = "Blessings",
        parent = "Consumables",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"All_PvE_Blessings.png"},
                name = "All Regular Blessings",
                price = 150,
                id = 11,
                count = 1,
                description = "<i>Reduces your character's chance to lose any items as well as the amount of your character's experience and skill loss upon death:</i>\n\n- 1 blessing = 8.00% less Skill / XP loss, 30% equipment protection\n- 2 blessing = 16.00% less Skill / XP loss, 55% equipment protection\n- 3 blessing = 24.00% less Skill / XP loss, 75% equipment protection\n- 4 blessing = 32.00% less Skill / XP loss, 90% equipment protection\n- 5 blessing = 40.00% less Skill / XP loss, 100% equipment protection\n- 6 blessing = 48.00% less Skill / XP loss, 100% equipment protection\n- 7 blessing = 56.00% less Skill / XP loss, 100% equipment protection\n\n{character} \n-maximum amount that can be owned by character: 5 \n{info} added directly to the Record of Blessings \n{info} characters with a red or black skull will always lose all equipment upon death",
                type = GameStore.OfferTypes.OFFER_TYPE_ALLBLESSINGS
            }, {
                icons = {"Twist_of_Fate.png"},
                name = "Twist of Fate",
                price = 20,
                blessid = 1,
                count = 1,
                id = 3,
                description = "<i>Protects your character's regular blessings or an Amulet of Loss if you are unfortunate enough to die in a PvP fight.</i>\n\n{character}\n-maximum amount that can be owned by character: 5\n{info} added directly to the Record of Blessings\n{info} does not work for characters with a red or black skull",
                type = GameStore.OfferTypes.OFFER_TYPE_BLESSINGS
            }, {
                icons = {"Wisdom_of_Solitude.png"},
                name = "The Wisdom of Solitude",
                price = 20,
                blessid = 2,
                count = 1,
                id = 4,
                description = "<i>Reduces your character's chance to lose any items as well as the amount of your character's experience and skill loss upon death:</i>\n\n- 1 blessing = 8.00% less Skill / XP loss, 30% equipment protection\n- 2 blessing = 16.00% less Skill / XP loss, 55% equipment protection\n- 3 blessing = 24.00% less Skill / XP loss, 75% equipment protection\n- 4 blessing = 32.00% less Skill / XP loss, 90% equipment protection\n- 5 blessing = 40.00% less Skill / XP loss, 100% equipment protection\n- 6 blessing = 48.00% less Skill / XP loss, 100% equipment protection\n- 7 blessing = 56.00% less Skill / XP loss, 100% equipment protection\n\n{character} \n-maximum amount that can be owned by character: 5 \n{info} added directly to the Record of Blessings \n{info} characters with a red or black skull will always lose all equipment upon death",
                type = GameStore.OfferTypes.OFFER_TYPE_BLESSINGS
            }, {
                icons = {"Spark_of_the_Phoenix.png"},
                name = "The Spark of the Phoenix",
                price = 20,
                blessid = 3,
                count = 1,
                id = 5,
                description = "<i>Reduces your character's chance to lose any items as well as the amount of your character's experience and skill loss upon death:</i>\n\n- 1 blessing = 8.00% less Skill / XP loss, 30% equipment protection\n- 2 blessing = 16.00% less Skill / XP loss, 55% equipment protection\n- 3 blessing = 24.00% less Skill / XP loss, 75% equipment protection\n- 4 blessing = 32.00% less Skill / XP loss, 90% equipment protection\n- 5 blessing = 40.00% less Skill / XP loss, 100% equipment protection\n- 6 blessing = 48.00% less Skill / XP loss, 100% equipment protection\n- 7 blessing = 56.00% less Skill / XP loss, 100% equipment protection\n\n{character} \n-maximum amount that can be owned by character: 5 \n{info} added directly to the Record of Blessings \n{info} characters with a red or black skull will always lose all equipment upon death",
                type = GameStore.OfferTypes.OFFER_TYPE_BLESSINGS
            }, {
                icons = {"Fire_of_the_Suns.png"},
                name = "The Fire of the Suns",
                price = 20,
                blessid = 4,
                count = 1,
                id = 6,
                description = "<i>Reduces your character's chance to lose any items as well as the amount of your character's experience and skill loss upon death:</i>\n\n- 1 blessing = 8.00% less Skill / XP loss, 30% equipment protection\n- 2 blessing = 16.00% less Skill / XP loss, 55% equipment protection\n- 3 blessing = 24.00% less Skill / XP loss, 75% equipment protection\n- 4 blessing = 32.00% less Skill / XP loss, 90% equipment protection\n- 5 blessing = 40.00% less Skill / XP loss, 100% equipment protection\n- 6 blessing = 48.00% less Skill / XP loss, 100% equipment protection\n- 7 blessing = 56.00% less Skill / XP loss, 100% equipment protection\n\n{character} \n-maximum amount that can be owned by character: 5 \n{info} added directly to the Record of Blessings \n{info} characters with a red or black skull will always lose all equipment upon death",
                type = GameStore.OfferTypes.OFFER_TYPE_BLESSINGS
            }, {
                icons = {"Spiritual_Shielding.png"},
                name = "The Spiritual Shielding",
                price = 20,
                blessid = 5,
                count = 1,
                id = 7,
                description = "<i>Reduces your character's chance to lose any items as well as the amount of your character's experience and skill loss upon death:</i>\n\n- 1 blessing = 8.00% less Skill / XP loss, 30% equipment protection\n- 2 blessing = 16.00% less Skill / XP loss, 55% equipment protection\n- 3 blessing = 24.00% less Skill / XP loss, 75% equipment protection\n- 4 blessing = 32.00% less Skill / XP loss, 90% equipment protection\n- 5 blessing = 40.00% less Skill / XP loss, 100% equipment protection\n- 6 blessing = 48.00% less Skill / XP loss, 100% equipment protection\n- 7 blessing = 56.00% less Skill / XP loss, 100% equipment protection\n\n{character} \n-maximum amount that can be owned by character: 5 \n{info} added directly to the Record of Blessings \n{info} characters with a red or black skull will always lose all equipment upon death",
                type = GameStore.OfferTypes.OFFER_TYPE_BLESSINGS
            }, {
                icons = {"Embrace_of_Tibia.png"},
                name = "The Embrace of Tibia",
                price = 20,
                blessid = 6,
                count = 1,
                id = 8,
                description = "<i>Reduces your character's chance to lose any items as well as the amount of your character's experience and skill loss upon death:</i>\n\n- 1 blessing = 8.00% less Skill / XP loss, 30% equipment protection\n- 2 blessing = 16.00% less Skill / XP loss, 55% equipment protection\n- 3 blessing = 24.00% less Skill / XP loss, 75% equipment protection\n- 4 blessing = 32.00% less Skill / XP loss, 90% equipment protection\n- 5 blessing = 40.00% less Skill / XP loss, 100% equipment protection\n- 6 blessing = 48.00% less Skill / XP loss, 100% equipment protection\n- 7 blessing = 56.00% less Skill / XP loss, 100% equipment protection\n\n{character} \n-maximum amount that can be owned by character: 5 \n{info} added directly to the Record of Blessings \n{info} characters with a red or black skull will always lose all equipment upon death",
                type = GameStore.OfferTypes.OFFER_TYPE_BLESSINGS
            }, {
                icons = {"Heart_of_the_Mountain.png"},
                name = "Heart of the Mountain",
                price = 20,
                blessid = 7,
                count = 1,
                id = 9,
                description = "<i>Reduces your character's chance to lose any items as well as the amount of your character's experience and skill loss upon death:</i>\n\n- 1 blessing = 8.00% less Skill / XP loss, 30% equipment protection\n- 2 blessing = 16.00% less Skill / XP loss, 55% equipment protection\n- 3 blessing = 24.00% less Skill / XP loss, 75% equipment protection\n- 4 blessing = 32.00% less Skill / XP loss, 90% equipment protection\n- 5 blessing = 40.00% less Skill / XP loss, 100% equipment protection\n- 6 blessing = 48.00% less Skill / XP loss, 100% equipment protection\n- 7 blessing = 56.00% less Skill / XP loss, 100% equipment protection\n\n{character} \n-maximum amount that can be owned by character: 5 \n{info} added directly to the Record of Blessings \n{info} characters with a red or black skull will always lose all equipment upon death",
                type = GameStore.OfferTypes.OFFER_TYPE_BLESSINGS
            }, {
                icons = {"Blood_of_the_Mountain.png"},
                name = "Blood of the Mountain",
                price = 20,
                blessid = 8,
                count = 1,
                id = 10,
                description = "<i>Reduces your character's chance to lose any items as well as the amount of your character's experience and skill loss upon death:</i>\n\n- 1 blessing = 8.00% less Skill / XP loss, 30% equipment protection\n- 2 blessing = 16.00% less Skill / XP loss, 55% equipment protection\n- 3 blessing = 24.00% less Skill / XP loss, 75% equipment protection\n- 4 blessing = 32.00% less Skill / XP loss, 90% equipment protection\n- 5 blessing = 40.00% less Skill / XP loss, 100% equipment protection\n- 6 blessing = 48.00% less Skill / XP loss, 100% equipment protection\n- 7 blessing = 56.00% less Skill / XP loss, 100% equipment protection\n\n{character} \n-maximum amount that can be owned by character: 5 \n{info} added directly to the Record of Blessings \n{info} characters with a red or black skull will always lose all equipment upon death",
                type = GameStore.OfferTypes.OFFER_TYPE_BLESSINGS
            }, {
                icons = {"Death_Redemption.png"},
                name = "Death Redemption",
                price = 250,
                blessid = 10,
                count = 1,
                description = "<i>Reduces the penalty of your character's most recent death.</i>\n\n{character}\n{info} can only be used for the most recent death and only within 24 hours after this death",
                type = GameStore.OfferTypes.OFFER_TYPE_BLESSINGS
            }
        }
    }, { -- Casks
        icons = {"Category_Casks.png"},
        name = "Casks",
        parent = "Consumables",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"Health_Cask.png"},
                name = "Health Cask",
                price = 5,
                itemtype = 28555,
                count = 1000,
                description = "<i>Place it in your house and fill up potions to restore your hit points!</i>\n\n{house}\n{box}\n{storeinbox}\n{usablebyallicon} can be used to fill up potions by all characters that have access to the house\n{storeinboxicon} potions created from this cask will be sent to your Store inbox and can only be stored there and in depot box\n{backtoinbox}\n{info} usable 1000 times a piece\n{transferableprice}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Strong_Health_Cask.png"},
                name = "Strong Health Cask",
                price = 10,
                itemtype = 28556,
                count = 1000,
                description = "<i>Place it in your house and fill up potions to restore your hit points!</i>\n\n{house}\n{box}\n{storeinbox}\n{usablebyallicon} can be used to fill up potions by all characters that have access to the house\n{storeinboxicon} potions created from this cask will be sent to your Store inbox and can only be stored there and in depot box\n{backtoinbox}\n{info} usable 1000 times a piece\n{transferableprice}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Great_Health_Cask.png"},
                name = "Great Health Cask",
                price = 25,
                itemtype = 28557,
                count = 1000,
                description = "<i>Place it in your house and fill up potions to restore your hit points!</i>\n\n{house}\n{box}\n{storeinbox}\n{usablebyallicon} can be used to fill up potions by all characters that have access to the house\n{storeinboxicon} potions created from this cask will be sent to your Store inbox and can only be stored there and in depot box\n{backtoinbox}\n{info} usable 1000 times a piece\n{transferableprice}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Ultimate_Health_Cask.png"},
                name = "Ultimate Health Cask",
                price = 50,
                itemtype = 28558,
                count = 1000,
                description = "<i>Place it in your house and fill up potions to restore your hit points!</i>\n\n{house}\n{box}\n{storeinbox}\n{usablebyallicon} can be used to fill up potions by all characters that have access to the house\n{storeinboxicon} potions created from this cask will be sent to your Store inbox and can only be stored there and in depot box\n{backtoinbox}\n{info} usable 1000 times a piece\n{transferableprice}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Supreme_Health_Cask.png"},
                name = "Supreme Health Cask",
                price = 80,
                itemtype = 28559,
                count = 1000,
                description = "<i>Place it in your house and fill up potions to restore your hit points!</i>\n\n{house}\n{box}\n{storeinbox}\n{usablebyallicon} can be used to fill up potions by all characters that have access to the house\n{storeinboxicon} potions created from this cask will be sent to your Store inbox and can only be stored there and in depot box\n{backtoinbox}\n{info} usable 1000 times a piece\n{transferableprice}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Mana_Cask.png"},
                name = "Mana Cask",
                price = 5,
                itemtype = 28565,
                count = 1000,
                description = "<i>Place it in your house and fill up potions to refill your mana!</i>\n\n{house}\n{box}\n{storeinbox}\n{usablebyallicon} can be used to fill up potions by all characters that have access to the house\n{storeinboxicon} potions created from this cask will be sent to your Store inbox and can only be stored there and in depot box\n{backtoinbox}\n{info} usable 1000 times a piece\n{transferableprice}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Strong_Mana_Cask.png"},
                name = "Strong Mana Cask",
                price = 10,
                itemtype = 28566,
                count = 1000,
                description = "<i>Place it in your house and fill up potions to refill your mana!</i>\n\n{house}\n{box}\n{storeinbox}\n{usablebyallicon} can be used to fill up potions by all characters that have access to the house\n{storeinboxicon} potions created from this cask will be sent to your Store inbox and can only be stored there and in depot box\n{backtoinbox}\n{info} usable 1000 times a piece\n{transferableprice}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Great_Mana_Cask.png"},
                name = "Great Mana Cask",
                price = 25,
                itemtype = 28567,
                count = 1000,
                description = "<i>Place it in your house and fill up potions to refill your mana!</i>\n\n{house}\n{box}\n{storeinbox}\n{usablebyallicon} can be used to fill up potions by all characters that have access to the house\n{storeinboxicon} potions created from this cask will be sent to your Store inbox and can only be stored there and in depot box\n{backtoinbox}\n{info} usable 1000 times a piece\n{transferableprice}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Ultimate_Mana_Cask.png"},
                name = "Ultimate Mana Cask",
                price = 50,
                itemtype = 28568,
                count = 1000,
                description = "<i>Place it in your house and fill up potions to refill your mana!</i>\n\n{house}\n{box}\n{storeinbox}\n{usablebyallicon} can be used to fill up potions by all characters that have access to the house\n{storeinboxicon} potions created from this cask will be sent to your Store inbox and can only be stored there and in depot box\n{backtoinbox}\n{info} usable 1000 times a piece\n{transferableprice}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Great_Spirit_Cask.png"},
                name = "Great Spirit Cask",
                price = 25,
                itemtype = 28575,
                count = 1000,
                description = "<i>Place it in your house and fill up potions to restore your hit points and mana!</i>\n\n{house}\n{box}\n{storeinbox}\n{usablebyallicon} can be used to fill up potions by all characters that have access to the house\n{storeinboxicon} potions created from this cask will be sent to your Store inbox and can only be stored there and in depot box\n{backtoinbox}\n{info} usable 1000 times a piece\n{transferableprice}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Ultimate_Spirit_Cask.png"},
                name = "Ultimate Spirit Cask",
                price = 50,
                itemtype = 28576,
                count = 1000,
                description = "<i>Place it in your house and fill up potions to restore your hit points and mana!</i>\n\n{house}\n{box}\n{storeinbox}\n{usablebyallicon} can be used to fill up potions by all characters that have access to the house\n{storeinboxicon} potions created from this cask will be sent to your Store inbox and can only be stored there and in depot box\n{backtoinbox}\n{info} usable 1000 times a piece\n{transferableprice}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }
        }
    }, { -- Exercise Weapons
        icons = {"Category_ExerciseWeapons.png"},
        name = "Exercise Weapons",
        parent = "Consumables",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"Exercise_Axe.png"},
                name = "Exercise Axe",
                price = 25,
                itemtype = 32385,
                charges = 500,
                description = "<i>Use it to train your axe fighting skill on an exercise dummy!</i>\n\n{character}\n{storeinbox}\n{info} use it on an exercise dummy to train your axe fighting skill\n{info} usable 500 times a piece",
                type = GameStore.OfferTypes.OFFER_TYPE_CHARGES
            }, {
                icons = {"Exercise_Bow.png"},
                name = "Exercise Bow",
                price = 25,
                itemtype = 32387,
                charges = 500,
                description = "<i>Use it to train your distance fighting skill on an exercise dummy!</i>\n\n{character}\n{storeinbox}\n{info} use it on an exercise dummy to train your distance fighting skill\n{info} usable 500 times a piece",
                type = GameStore.OfferTypes.OFFER_TYPE_CHARGES
            }, {
                icons = {"Exercise_Club.png"},
                name = "Exercise Club",
                price = 25,
                itemtype = 32386,
                charges = 500,
                description = "<i>Use it to train your club fighting skill on an exercise dummy!</i>\n\n{character}\n{storeinbox}\n{info} use it on an exercise dummy to train your club fighting skill\n{info} usable 500 times a piece",
                type = GameStore.OfferTypes.OFFER_TYPE_CHARGES
            }, {
                icons = {"Exercise_Rod.png"},
                name = "Exercise Rod",
                price = 25,
                itemtype = 32388,
                charges = 500,
                description = "<i>Use it to train your magic level on an exercise dummy!</i>\n\n{character}\n{storeinbox}\n{info} use it on an exercise dummy to train your magic level\n{info} usable 500 times a piece",
                type = GameStore.OfferTypes.OFFER_TYPE_CHARGES
            }, {
                icons = {"Exercise_Sword.png"},
                name = "Exercise Sword",
                price = 25,
                itemtype = 32384,
                charges = 500,
                description = "<i>Use it to train your sword fighting skill on an exercise dummy!</i>\n\n{character}\n{storeinbox}\n{info} use it on an exercise dummy to train your sword fighting skill\n{info} usable 500 times a piece",
                type = GameStore.OfferTypes.OFFER_TYPE_CHARGES
            }, {
                icons = {"Exercise_Wand.png"},
                name = "Exercise Wand",
                price = 25,
                itemtype = 32389,
                charges = 500,
                description = "<i>Use it to train your magic level on an exercise dummy!</i>\n\n{character}\n{storeinbox}\n{info} use it on an exercise dummy to train your magic level\n{info} usable 500 times a piece",
                type = GameStore.OfferTypes.OFFER_TYPE_CHARGES
            }, {
                icons = {"Exercise_Axe.png"},
                name = "Durable Exercise Axe",
                price = 100,
                itemtype = 40115,
                charges = 2100,
                description = "<i>Use it to train your axe fighting skill on an exercise dummy!</i>\n\n{character}\n{storeinbox}\n{info} use it on an exercise dummy to train your axe fighting skill\n{info} usable 2100 times a piece",
                type = GameStore.OfferTypes.OFFER_TYPE_CHARGES
            }, {
                icons = {"Exercise_Bow.png"},
                name = "Durable Exercise Bow",
                price = 100,
                itemtype = 40117,
                charges = 2100,
                description = "<i>Use it to train your distance fighting skill on an exercise dummy!</i>\n\n{character}\n{storeinbox}\n{info} use it on an exercise dummy to train your distance fighting skill\n{info} usable 2100 times a piece",
                type = GameStore.OfferTypes.OFFER_TYPE_CHARGES
            }, {
                icons = {"Exercise_Club.png"},
                name = "Durable Exercise Club",
                price = 100,
                itemtype = 40116,
                charges = 2100,
                description = "<i>Use it to train your club fighting skill on an exercise dummy!</i>\n\n{character}\n{storeinbox}\n{info} use it on an exercise dummy to train your club fighting skill\n{info} usable 2100 times a piece",
                type = GameStore.OfferTypes.OFFER_TYPE_CHARGES
            }, {
                icons = {"Exercise_Rod.png"},
                name = "Durable Exercise Rod",
                price = 100,
                itemtype = 40118,
                charges = 2100,
                description = "<i>Use it to train your magic level on an exercise dummy!</i>\n\n{character}\n{storeinbox}\n{info} use it on an exercise dummy to train your magic level\n{info} usable 2100 times a piece",
                type = GameStore.OfferTypes.OFFER_TYPE_CHARGES
            }, {
                icons = {"Exercise_Sword.png"},
                name = "Durable Exercise Sword",
                price = 100,
                itemtype = 40114,
                charges = 2100,
                description = "<i>Use it to train your sword fighting skill on an exercise dummy!</i>\n\n{character}\n{storeinbox}\n{info} use it on an exercise dummy to train your sword fighting skill\n{info} usable 2100 times a piece",
                type = GameStore.OfferTypes.OFFER_TYPE_CHARGES
            }, {
                icons = {"Exercise_Wand.png"},
                name = "Durable Exercise Wand",
                price = 100,
                itemtype = 40119,
                charges = 2100,
                description = "<i>Use it to train your magic level on an exercise dummy!</i>\n\n{character}\n{storeinbox}\n{info} use it on an exercise dummy to train your magic level\n{info} usable 2100 times a piece",
                type = GameStore.OfferTypes.OFFER_TYPE_CHARGES
            }, {
                icons = {"Exercise_Axe.png"},
                name = "Lasting Exercise Axe",
                price = 500,
                itemtype = 40121,
                charges = 10200,
                description = "<i>Use it to train your axe fighting skill on an exercise dummy!</i>\n\n{character}\n{storeinbox}\n{info} use it on an exercise dummy to train your axe fighting skill\n{info} usable 10200 times a piece",
                type = GameStore.OfferTypes.OFFER_TYPE_CHARGES
            }, {
                icons = {"Exercise_Bow.png"},
                name = "Lasting Exercise Bow",
                price = 500,
                itemtype = 40123,
                charges = 10200,
                description = "<i>Use it to train your distance fighting skill on an exercise dummy!</i>\n\n{character}\n{storeinbox}\n{info} use it on an exercise dummy to train your distance fighting skill\n{info} usable 10200 times a piece",
                type = GameStore.OfferTypes.OFFER_TYPE_CHARGES
            }, {
                icons = {"Exercise_Club.png"},
                name = "Lasting Exercise Club",
                price = 500,
                itemtype = 40122,
                charges = 10200,
                description = "<i>Use it to train your club fighting skill on an exercise dummy!</i>\n\n{character}\n{storeinbox}\n{info} use it on an exercise dummy to train your club fighting skill\n{info} usable 10200 times a piece",
                type = GameStore.OfferTypes.OFFER_TYPE_CHARGES
            }, {
                icons = {"Exercise_Rod.png"},
                name = "Lasting Exercise Rod",
                price = 500,
                itemtype = 40124,
                charges = 10200,
                description = "<i>Use it to train your magic level on an exercise dummy!</i>\n\n{character}\n{storeinbox}\n{info} use it on an exercise dummy to train your magic level\n{info} usable 10200 times a piece",
                type = GameStore.OfferTypes.OFFER_TYPE_CHARGES
            }, {
                icons = {"Exercise_Sword.png"},
                name = "Lasting Exercise Sword",
                price = 500,
                itemtype = 40120,
                charges = 10200,
                description = "<i>Use it to train your sword fighting skill on an exercise dummy!</i>\n\n{character}\n{storeinbox}\n{info} use it on an exercise dummy to train your sword fighting skill\n{info} usable 10200 times a piece",
                type = GameStore.OfferTypes.OFFER_TYPE_CHARGES
            }, {
                icons = {"Exercise_Wand.png"},
                name = "Lasting Exercise Wand",
                price = 500,
                itemtype = 40125,
                charges = 10200,
                description = "<i>Use it to train your magic level on an exercise dummy!</i>\n\n{character}\n{storeinbox}\n{info} use it on an exercise dummy to train your magic level\n{info} usable 10200 times a piece",
                type = GameStore.OfferTypes.OFFER_TYPE_CHARGES
            }
        }
    }, { -- Kegs
        icons = {"Category_Kegs.png"},
        name = "Kegs",
        parent = "Consumables",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"Health_Keg.png"},
                name = "Health Keg",
                price = 25,
                itemtype = 28579,
                count = 500,
                description = "<i>Fill up potions to restore your hit points no matter where you are!</i>\n\n{character}\n{storeinboxicon} potions created from this keg will be sent to your Store inbox and can only be stored there and in depot box\n{info} usable 500 times a piece\n{info} saves capacity because it's constant weight equals only 250 potions",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Strong_Health_Keg.png"},
                name = "Strong Health Keg",
                price = 50,
                itemtype = 28580,
                count = 500,
                description = "<i>Fill up potions to restore your hit points no matter where you are!</i>\n\n{character}\n{storeinboxicon} potions created from this keg will be sent to your Store inbox and can only be stored there and in depot box\n{info} usable 500 times a piece\n{info} saves capacity because it's constant weight equals only 250 potions",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Great_Health_Keg.png"},
                name = "Great Health Keg",
                price = 100,
                itemtype = 28581,
                count = 500,
                description = "<i>Fill up potions to restore your hit points no matter where you are!</i>\n\n{character}\n{storeinboxicon} potions created from this keg will be sent to your Store inbox and can only be stored there and in depot box\n{info} usable 500 times a piece\n{info} saves capacity because it's constant weight equals only 250 potions",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Ultimate_Health_Keg.png"},
                name = "Ultimate Health Keg",
                price = 200,
                itemtype = 28582,
                count = 500,
                description = "<i>Fill up potions to restore your hit points no matter where you are!</i>\n\n{character}\n{storeinboxicon} potions created from this keg will be sent to your Store inbox and can only be stored there and in depot box\n{info} usable 500 times a piece\n{info} saves capacity because it's constant weight equals only 250 potions",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Supreme_Health_Keg.png"},
                name = "Supreme Health Keg",
                price = 400,
                itemtype = 28583,
                count = 500,
                description = "<i>Fill up potions to restore your hit points no matter where you are!</i>\n\n{character}\n{storeinboxicon} potions created from this keg will be sent to your Store inbox and can only be stored there and in depot box\n{info} usable 500 times a piece\n{info} saves capacity because it's constant weight equals only 250 potions",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Mana_Keg.png"},
                name = "Mana Keg",
                price = 25,
                itemtype = 28584,
                count = 500,
                description = "<i>Fill up potions to refill your mana no matter where you are!</i>\n\n{character}\n{storeinboxicon} potions created from this keg will be sent to your Store inbox and can only be stored there and in depot box\n{info} usable 500 times a piece\n{info} saves capacity because it's constant weight equals only 250 potions",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Strong_Mana_Keg.png"},
                name = "Strong Mana Keg",
                price = 50,
                itemtype = 28585,
                count = 500,
                description = "<i>Fill up potions to refill your mana no matter where you are!</i>\n\n{character}\n{storeinboxicon} potions created from this keg will be sent to your Store inbox and can only be stored there and in depot box\n{info} usable 500 times a piece\n{info} saves capacity because it's constant weight equals only 250 potions",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Great_Mana_Keg.png"},
                name = "Great Mana Keg",
                price = 100,
                itemtype = 28586,
                count = 500,
                description = "<i>Fill up potions to refill your mana no matter where you are!</i>\n\n{character}\n{storeinboxicon} potions created from this keg will be sent to your Store inbox and can only be stored there and in depot box\n{info} usable 500 times a piece\n{info} saves capacity because it's constant weight equals only 250 potions",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Ultimate_Mana_Keg.png"},
                name = "Ultimate Mana Keg",
                price = 200,
                itemtype = 28587,
                count = 500,
                description = "<i>Fill up potions to refill your mana no matter where you are!</i>\n\n{character}\n{storeinboxicon} potions created from this keg will be sent to your Store inbox and can only be stored there and in depot box\n{info} usable 500 times a piece\n{info} saves capacity because it's constant weight equals only 250 potions",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Great_Spirit_Keg.png"},
                name = "Great Spirit Keg",
                price = 100,
                itemtype = 28589,
                count = 500,
                description = "<i>Fill up potions to restore your hit points and mana no matter where you are!</i>\n\n{character}\n{storeinboxicon} potions created from this keg will be sent to your Store inbox and can only be stored there and in depot box\n{info} usable 500 times a piece\n{info} saves capacity because it's constant weight equals only 250 potions",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Ultimate_Spirit_Keg.png"},
                name = "Ultimate Spirit Keg",
                price = 200,
                itemtype = 28590,
                count = 500,
                description = "<i>Fill up potions to restore your hit points and mana no matter where you are!</i>\n\n{character}\n{storeinboxicon} potions created from this keg will be sent to your Store inbox and can only be stored there and in depot box\n{info} usable 500 times a piece\n{info} saves capacity because it's constant weight equals only 250 potions",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }
        }
    }, { -- Potions
        icons = {"Category_Potions.png"},
        name = "Potions",
        parent = "Consumables",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"Health_Potion.png"},
                name = "Health Potion",
                price = 5,
                itemtype = 7618,
                count = 100,
                description = "<i>Restores your character's hit points.</i>\n\n{character}\n{storeinbox}\n{battlesign}",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Strong_Health_Potion.png"},
                name = "Strong Health Potion",
                price = 15,
                itemtype = 7588,
                count = 100,
                description = "<i>Restores your character's hit points.</i>\n\n{character}\n{storeinbox}\n{battlesign}",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Great_Health_Potion.png"},
                name = "Great Health Potion",
                price = 20,
                itemtype = 7591,
                count = 100,
                description = "<i>Restores your character's hit points.</i>\n\n{character}\n{storeinbox}\n{battlesign}",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Ultimate_Health_Potion.png"},
                name = "Ultimate Health Potion",
                price = 30,
                itemtype = 8473,
                count = 100,
                description = "<i>Restores your character's hit points.</i>\n\n{character}\n{storeinbox}\n{battlesign}",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Supreme_Health_Potion.png"},
                name = "Supreme Health Potion",
                price = 40,
                itemtype = 26031,
                count = 100,
                description = "<i>Restores your character's hit points.</i>\n\n{character}\n{storeinbox}\n{battlesign}",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Mana_Potion.png"},
                name = "Mana Potion",
                price = 5,
                itemtype = 7620,
                count = 100,
                description = "<i>Refills your character's mana.</i>\n\n{character}\n{storeinbox}\n{battlesign}",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Strong_Mana_Potion.png"},
                name = "Strong Mana Potion",
                price = 15,
                itemtype = 7589,
                count = 100,
                description = "<i>Refills your character's mana.</i>\n\n{character}\n{storeinbox}\n{battlesign}",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Great_Mana_Potion.png"},
                name = "Great Mana Potion",
                price = 20,
                itemtype = 7590,
                count = 100,
                description = "<i>Refills your character's mana.</i>\n\n{character}\n{storeinbox}\n{battlesign}",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Ultimate_Mana_Potion.png"},
                name = "Ultimate Mana Potion",
                price = 30,
                itemtype = 26029,
                count = 100,
                description = "<i>Refills your character's mana.</i>\n\n{character}\n{storeinbox}\n{battlesign}",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Great_Spirit_Potion.png"},
                name = "Great Spirit Potion",
                price = 20,
                itemtype = 8472,
                count = 100,
                description = "<i>Restores your character's hit points and mana.</i>\n\n{character}\n{storeinbox}\n{battlesign}",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Ultimate_Spirit_Potion.png"},
                name = "Ultimate Spirit Potion",
                price = 30,
                itemtype = 26030,
                count = 100,
                description = "<i>Restores your character's hit points and mana.</i>\n\n{character}\n{storeinbox}\n{battlesign}",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }
        }
    }, { -- Runes
        icons = {"Category_Runes.png"},
        name = "Runes",
        parent = "Consumables",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"Animate_Dead_Rune.png"},
                name = "Animate Dead Rune",
                price = 50,
                itemtype = 2316,
                count = 200,
                description = "{character}\n{storeinbox} only buyable if fitting vocation and level of purchasing character\n{battlesign}\n\n<i>After a long time of research, the magicians of Edron succeeded in storing some life energy in a rune. When this energy was unleashed onto a body it was found that an undead creature arose that could be mentally controlled by the user of the rune. This rune is useful to create allies in combat.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Avalanche_Rune.png"},
                name = "Avalanche Rune",
                price = 50,
                itemtype = 2274,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>The ice damage which arises from this rune is a useful weapon in every battle but it comes in particularly handy if you fight against a horde of creatures dominated by the element fire.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Chameleon_Rune.png"},
                name = "Chameleon Rune",
                price = 50,
                itemtype = 2291,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>The metamorphosis caused by this rune is only superficial, and while casters who are using the rune can take on the exterior form of nearly any inanimate object, they will always retain their original smell and mental abilities. So there is no real practical use for this rune, making this largely a fun rune.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Convince_Creature_Rune.png"},
                name = "Convince Creature Rune",
                price = 50,
                itemtype = 2290,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>Using this rune together with some mana, you can convince certain creatures. The needed amount of mana is determined by the power of the creature one wishes to convince, so the amount of mana to convince a rat is lower than that which is needed for an orc.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Cure_Poison_Rune_(Item).png"},
                name = "Cure Poison Rune",
                price = 50,
                itemtype = 2266,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>In the old days, many adventurers fell prey to poisonous creatures that were roaming the caves and forests. After many years of research druids finally succeeded in altering the cure poison spell so it could be bound to a rune. By using this rune it is possible to stop the effect of any known poison.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Disintegrate_Rune.png"},
                name = "Disintegrate Rune",
                price = 50,
                itemtype = 2310,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>Nothing is worse than being cornered when fleeing from an enemy you just cannot beat, especially if the obstacles in your way are items you could easily remove if only you had the time! However, there is one reliable remedy: The Disintegrate rune will instantly destroy up to 500 movable items that are in your way, making room for a quick escape.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Energy_Bomb_Rune.png"},
                name = "Energy Bomb Rune",
                price = 50,
                itemtype = 2262,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>Using the Energy Bomb rune will create a field of deadly energy that deals damage to all who carelessly step into it. Its area of effect is covering a full 9 square metres! Creatures that are caught in the middle of an Energy Bomb are frequently confused by the unexpected effect, and some may even stay in the field of deadly sparks for a while.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Energy_Field_Rune.png"},
                name = "Energy Field Rune",
                price = 50,
                itemtype = 2277,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>This spell creates a limited barrier made up of crackling energy that will cause electrical damage to all those passing through. Since there are few creatures that are immune to the harmful effects of energy this spell is not to be underestimated.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Energy_Wall_Rune.png"},
                name = "Energy Wall Rune",
                price = 50,
                itemtype = 2279,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>Casting this spell generates a solid wall made up of magical energy. Walls made this way surpass any other magically created obstacle in width, so it is always a good idea to have an Energy Wall rune or two in one's pocket when travelling through the wilderness.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Explosion_Rune.png"},
                name = "Explosion Rune",
                price = 50,
                itemtype = 2313,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>This rune must be aimed at areas rather than at specific creatures, so it is possible for explosions to be unleashed even if no targets are close at all. These explosions cause a considerable physical damage within a substantial blast radius.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Fireball_Rune.png"},
                name = "Fireball Rune",
                price = 50,
                itemtype = 2302,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>When this rune is used a massive fiery ball is released which hits the aimed foe with immense power. It is especially effective against opponents of the element earth.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Fire_Bomb_Rune.png"},
                name = "Fire Bomb Rune",
                price = 50,
                itemtype = 2305,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>This rune is a deadly weapon in the hands of the skilled user. On releasing it an area of 9 square metres is covered by searing flames that will scorch all those that are unfortunate enough to be caught in them. Worse, many monsters are confused by the unexpected blaze, and with a bit of luck a caster will even manage to trap his opponents by using the spell.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Fire_Field_Rune.png"},
                name = "Fire Field Rune",
                price = 50,
                itemtype = 2301,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>When this rune is used a field of one square metre is covered by searing fire that will last for some minutes, gradually diminishing as the blaze wears down. As with all field spells, Fire Field is quite useful to block narrow passageways or to create large, connected barriers.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Fire_Wall_Rune.png"},
                name = "Fire Wall Rune",
                price = 50,
                itemtype = 2303,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>This rune offers reliable protection against all creatures that are afraid of fire. The exceptionally long duration of the spell as well as the possibility to form massive barriers or even protective circles out of fire walls make this a versatile, practical spell.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Great_Fireball_Rune.png"},
                name = "Great Fireball Rune",
                price = 50,
                itemtype = 2304,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>A shot of this rune affects a huge area - up to 37 square metres! It stands to reason that the Great Fireball is a favourite of most Tibians, as it is well suited both to hit whole crowds of monsters and individual targets that are difficult to hit because they are fast or hard to spot.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Icicle_Rune.png"},
                name = "Icicle Rune",
                price = 50,
                itemtype = 2271,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>Particularly creatures determined by the element fire are vulnerable against this ice-cold rune. Being hit by the magic stored in this rune, an ice arrow seems to pierce the heart of the struck victim. The damage done by this rune is quite impressive which makes this a quite popular rune among Tibian mages.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Intense_Healing_Rune.png"},
                name = "Intense Healing Rune",
                price = 50,
                itemtype = 2265,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>This rune is commonly used by young adventurers who are not skilled enough to use the rune's stronger version. Also, since the rune's effectiveness is determined by the user's magic skill, it is still popular among experienced spell casters who use it to get effective healing magic at a cheap price.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Magic_Wall_Rune.png"},
                name = "Magic Wall Rune",
                price = 50,
                itemtype = 2293,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>This spell causes all particles that are contained in the surrounding air to quickly gather and contract until a solid wall is formed that covers one full square metre. The wall that is formed that way is impenetrable to any missiles or to light and no creature or character can walk through it. However, the wall will only last for a couple of seconds.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Poison_Bomb_Rune.png"},
                name = "Poison Bomb Rune",
                price = 50,
                itemtype = 2286,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>This rune causes an area of 9 square metres to be contaminated with toxic gas that will poison anybody who is caught within it. Conceivable applications include the blocking of areas or the combat against fast-moving or invisible targets. Keep in mind, however, that there are a number of creatures that are immune to poison.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Poison_Wall_Rune.png"},
                name = "Poison Wall Rune",
                price = 50,
                itemtype = 2289,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>When this rune is used a wall of concentrated toxic fumes is created which inflicts a moderate poison on all those who are foolish enough to enter it. The effect is usually impressive enough to discourage monsters from doing so, although few of the stronger ones will hesitate if there is nothing but a poison wall between them and their dinner.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Soulfire_Rune.png"},
                name = "Soulfire Rune",
                price = 50,
                itemtype = 2308,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>Soulfire is an immensely evil spell as it directly targets a creature's very life essence. When the rune is used on a victim, its soul is temporarily moved out of its body, casting it down into the blazing fires of hell itself! Note that the experience and the mental strength of the caster influence the damage that is caused.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Stone_Shower_Rune.png"},
                name = "Stone Shower Rune",
                price = 50,
                itemtype = 2288,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>Particularly creatures with an affection to energy will suffer greatly from this rune filled with powerful earth damage. As the name already says, a shower of stones drums on the opponents of the rune user in an area up to 37 squares.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Sudden_Death_Rune.png"},
                name = "Sudden Death Rune",
                price = 50,
                itemtype = 2268,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>Nearly no other spell can compare to Sudden Death when it comes to sheer damage. For this reason it is immensely popular despite the fact that only a single target is affected. However, since the damage caused by the rune is of deadly nature, it is less useful against most undead creatures.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Thunderstorm_Rune.png"},
                name = "Thunderstorm Rune",
                price = 50,
                itemtype = 2315,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>Flashes filled with dangerous energy hit the rune user's opponent when this rune is being used. It is especially effective against ice dominated creatures. Covering up an area up to 37 squares, this rune is particularly useful when you meet a whole mob of opponents.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Ultimate_Healing_Rune.png"},
                name = "Ultimate Healing Rune",
                price = 50,
                itemtype = 2273,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>The coveted Ultimate Healing rune is an all-time favourite among all vocations. No other healing enchantments that are bound into runes can compare to its salutary effect.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Wild_Growth_Rune.png"},
                name = "Wild Growth Rune",
                price = 50,
                itemtype = 2269,
                count = 200,
                description = "{character}\n{storeinbox}\n{battlesign}\n\n<i>By unleashing this spell, all seeds that are lying dormant in the surrounding quickly sprout and grow into full-sized plants, thus forming an impenetrable thicket. Unfortunately, plant life created this way is short-lived and will collapse within minutes, so the magically created obstacle will not last long.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }
        }
    }, { -- Cosmetics Mounts
        icons = {"Category_Cosmetics.png"},
        name = "Mounts",
        rookgaard = true,
        subclasses = {"Mounts I", "Mounts II", "Mounts III", "Mounts IV"}
    }, { -- Mounts I
        icons = {"Category_Mounts.png"},
        name = "Mounts I",
        parent = "Mounts",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"Arctic_Unicorn.png"},
                name = "Artic Unicorn",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 114,
                description = "{character}\n{speedboost}\n\n<i>The Arctic Unicorn lives in a deep rivalry with its cousin the Blazing Unicorn. Even though they were born in completely different areas, they somehow share the same bloodline. The eternal battle between fire and ice continues. Who will win? Tangerine vs.crystal blue! The choice is yours!</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Armoured_War_Horse.png"},
                name = "Armoured War Horse",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 23,
                description = "{character}\n{speedboost}\n\n<i>The Armoured War Horse is a dangerous black beauty! When you see its threatening, blood-red eyes coming towards you, you'll know trouble is on its way. Protected by its heavy armour plates, the warhorse is the perfect partner for dangerous hunting sessions and excessive enemy slaughtering.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Batcat.png"},
                name = "Batcat",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 77,
                description = "{character}\n{speedboost}\n\n<i>Rumour has it that many years ago elder witches had gathered to hold a magical feast high up in the mountains. They had crossbred Batcat to easily conquer rocky canyons and deep valleys. Nobody knows what happened on their way up but only the mount has been seen ever since.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Battle_Badger.png"},
                name = "Battle Badger",
                price = 690 - GAMESTORE_MOUNT_DISCOUNT,
                id = 147,
                description = "{character}\n{speedboost}\n\n<i>Badgers have been a staple of the Tibian fauna for a long time, and finally some daring souls have braved the challenge to tame some exceptional specimens - and succeeded! While the common badger you can encounter during your travels might seem like a rather unassuming creature, the Battle Badger, the Ether Badger, and the Zaoan Badger are fierce and mighty beasts, which are at your beck and call.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Black_Stag.png"},
                name = "Black Stag",
                price = 660 - GAMESTORE_MOUNT_DISCOUNT,
                id = 73,
                description = "{character}\n{speedboost}\n\n<i>Treat your character to a new travelling companion with a gentle nature and an impressive antler: The noble Black Stag will carry you through the deepest snow.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Blackpelt.png"},
                name = "Blackpelt",
                price = 690 - GAMESTORE_MOUNT_DISCOUNT,
                id = 58,
                description = "{character}\n{speedboost}\n\n<i>The Blackpelt is out searching for the best bamboo in Tibia. Its heavy armour allows it to visit even the most dangerous places. Treat it nicely with its favourite food from time to time and it will become a loyal partner.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Blazing_Unicorn.png"},
                name = "Blazing Unicorn",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 113,
                description = "{character}\n{speedboost}\n\n<i>The Blazing Unicorn lives in a deep rivalry with its cousin the Arctic Unicorn. Even though they were born in completely different areas, they somehow share the same bloodline. The eternal battle between fire and ice continues. Who will win? Crystal blue vs. tangerine! The choice is yours!</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Bloodcurl.png"},
                name = "Bloodcurl",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 92,
                description = "{character}\n{speedboost}\n\n<i>You are fascinated by insectoid creatures and can picture yourself riding one during combat or just for travelling? The Bloodcurl will carry you through the Tibian wilderness with ease.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Boreal_Owl.png"},
                name = "Boreal Owl",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 129,
                description = "{character}\n{speedboost}\n\n<i>Owls have always been a symbol of mystery, magic and wisdom in Tibian myths and fairy tales. Having one of these enigmatic creatures of the night as a trustworthy companion provides you with a silent guide whose ever-watchful eyes will cut through the shadows, help you navigate the darkness and unravel great secrets.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Bunny_Dray.png"},
                name = "Bunny Dray",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 139,
                description = "{character}\n{speedboost}\n\n<i>Your lower back worsens with every trip you spend on the back of your mount and you are looking for a more comfortable alternative to travel through the lands? Say no more! The Bunny Dray comes with two top-performing hares that never get tired thanks to the brand new and highly innovative propulsion technology. Just keep some back-up carrots in your pocket and you will be fine!</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Caped_Snowman.png"},
                name = "Caped Snowman",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 137,
                description = "{character}\n{speedboost}\n\n<i>When the nights are getting longer and freezing wind brings driving snow into the land, snowmen rise and shine on every corner. Lately, a peaceful, arcane creature has found shelter in one of them and used its magical power to call the Caped Snowman into being. Wrap yourself up well and warmly and jump on the back of your new frosty companion.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Cave_Tarantula.png"},
                name = "Cave Tarantula",
                price = 690 - GAMESTORE_MOUNT_DISCOUNT,
                id = 117,
                description = "{character}\n{speedboost}\n\n<i>It is said that the Cave Tarantula was born long before Banor walked the earth of Tibia. While its parents died in the war against the cruel hordes sent by Brog and Zathroth, their child survived by hiding in skulls of burned enemies. It never left its hiding spot and as it grew older, the skulls merged into its body. Now, it is fully-grown and thirsts for revenge.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Cinderhoof.png"},
                name = "Cinderhoof",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 90,
                description = "{character}\n{speedboost}\n\n<i>If you are more of an imp than an angel, you may prefer riding out on a Cinderhoof to scare fellow Tibians on their festive strolls. Its devilish mask, claw-like hands and sharp hooves makes it the perfect companion for any daring adventurer who likes to stand out.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Cony_Cart.png"},
                name = "Cony Cart",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 140,
                description = "{character}\n{speedboost}\n\n<i>Your lower back worsens with every trip you spend on the back of your mount and you are looking for a more comfortable alternative to travel through the lands? Say no more! The Cony Cart comes with two top-performing hares that never get tired thanks to the brand new and highly innovative propulsion technology. Just keep some back-up carrots in your pocket and you will be fine!</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Copper_Fly.png"},
                name = "Copper Fly",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 61,
                description = "{character}\n{speedboost}\n\n<i>If you are more interested in the achievements of science, you may enjoy a ride on the Copper Fly, one of the new insect-like flying machines. Even if you do not move around, the wings of these unusual vehicles are always in motion.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Coralripper.png"},
                name = "Coralripper",
                price = 570 - GAMESTORE_MOUNT_DISCOUNT,
                id = 79,
                description = "{character}\n{speedboost}\n\n<i>If the Coralripper moves its fins, it generates enough air pressure that it can even float over land. Its numerous eyes allow it to quickly detect dangers even in confusing situations and eliminate them with one powerful bite. If you watch your fingers, you are going to be good friends.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Cranium_Spider.png"},
                name = "Cranium Spider",
                price = 690 - GAMESTORE_MOUNT_DISCOUNT,
                id = 116,
                description = "{character}\n{speedboost}\n\n<i>It is said that the Cranium Spider was born long before Banor walked the earth of Tibia. While its parents died in the war against the cruel hordes sent by Brog and Zathroth, their child survived by hiding in skulls of burned enemies. It never left its hiding spot and as it grew older, the skulls merged into its body. Now, it is fully-grown and thirsts for revenge.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Crimson_Ray.png"},
                name = "Crimson Ray",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 33,
                description = "{character}\n{speedboost}\n\n<i>Have you ever dreamed of gliding through the air on the back of a winged creature? With its deep red wings, the majestic Crimson Ray is a worthy mount for courageous heroes. Feel like a king on its back as you ride into your next adventure.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Death_Crawler.png"},
                name = "Death Crawler",
                price = 600 - GAMESTORE_MOUNT_DISCOUNT,
                id = 46,
                description = "{character}\n{speedboost}\n\n<i>The Death Crawler is a scorpion that has surpassed the natural boundaries of its own kind. Way bigger, stronger and faster than ordinary scorpions, it makes a perfect companion for fearless heroes and explorers. Just be careful of his poisonous sting when you mount it.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Desert_King.png"},
                name = "Desert King",
                price = 450 - GAMESTORE_MOUNT_DISCOUNT,
                id = 41,
                description = "{character}\n{speedboost}\n\n<i>Its roaring is piercing marrow and bone and can be heard over ten miles away. The Desert King is the undisputed ruler of its territory and no one messes with this animal. Show no fear and prove yourself worthy of its trust and you will get yourself a valuable companion for your adventures.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Doombringer.png"},
                name = "Doombringer",
                price = 780 - GAMESTORE_MOUNT_DISCOUNT,
                id = 53,
                description = "{character}\n{speedboost}\n\n<i>Once captured and held captive by a mad hunter, the Doombringer is the result of sick experiments. Fed only with demon dust and concentrated demonic blood it had to endure a dreadful transformation. The demonic blood that is now running through its veins, however, provides it with incredible strength and endurance.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Dreadhare.png"},
                name = "Dreadhare",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 104,
                description = "{character}\n{speedboost}\n\n<i>Do you like fluffy bunnies but think they are too small? Do you admire the majesty of stags and their antlers but are afraid of their untameable wilderness? Do not worry, the mystic creature Dreadhare consolidates the best qualities of both animals. Hop on its backs and enjoy the ride.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Ebony_Tiger.png"},
                name = "Ebony Tiger",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 123,
                description = "{character}\n{speedboost}\n\n<i>It is said that in ancient times, the sabre-tooth tiger was already used as a mount by elder warriors of Svargrond. As seafaring began to expand, this noble big cat was also transported to other regions in Tibia. Influenced by the new environment and climatic changes, the fur of the Ebony Tiger has developed its extraordinary colouring over several generations.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Ember_Saurian.png"},
                name = "Ember Saurian",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 111,
                description = "{character}\n{speedboost}\n\n<i>Thousands of years ago, its ancestors ruled the world. Only recently, it found its way into Tibia. The Ember Saurian has been spotted in a sea of flames and fire deep down in the depths of Kazordoon.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Emerald_Sphinx.png"},
                name = "Emerald Sphinx",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 108,
                description = "{character}\n{speedboost}\n\n<i>Ride an Emerald Sphinx on your way through ancient chambers and tombs and have a loyal friend by your side while fighting countless mummies and other creatures.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Emerald_Waccoon.png"},
                name = "Emerald Waccoon",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 70,
                description = "{character}\n{speedboost}\n\n<i>Waccoons are cuddly creatures that love nothing more than to be petted and snuggled! Share a hug, ruffle the fur of the Emerald Waccoon and scratch it behind its ears to make it happy.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Emperor_Deer.png"},
                name = "Emperor Deer",
                price = 660 - GAMESTORE_MOUNT_DISCOUNT,
                id = 74,
                description = "{character}\n{speedboost}\n\n<i>Treat your character to a new travelling companion with a gentle nature and an impressive antler: The noble Emperor Deer will carry you through the deepest snow.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Ether_Badger.png"},
                name = "Ether Badger",
                price = 690 - GAMESTORE_MOUNT_DISCOUNT,
                id = 148,
                description = "{character}\n{speedboost}\n\n<i>Badgers have been a staple of the Tibian fauna for a long time, and finally some daring souls have braved the challenge to tame some exceptional specimens - and succeeded! While the common badger you can encounter during your travels might seem like a rather unassuming creature, the Battle Badger, the Ether Badger, and the Zaoan Badger are fierce and mighty beasts, which are at your beck and call.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Feral_Tiger.png"},
                name = "Feral Tiger",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 124,
                description = "{character}\n{speedboost}\n\n<i>It is said that in ancient times, the sabre-tooth tiger was already used as a mount by elder warriors of Svargrond. As seafaring began to expand, this noble big cat was also transported to other regions in Tibia. Influenced by the new environment and climatic changes, the fur of the Feral Tiger has developed its extraordinary colouring over several generations.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Festive_Snowman.png"},
                name = "Festive Snowman",
                price = 900 - GAMESTORE_MOUNT_DISCOUNT,
                id = 135,
                description = "{character}\n{speedboost}\n\n<i>When the nights are getting longer and freezing wind brings driving snow into the land, snowmen rise and shine on every corner. Lately, a peaceful, arcane creature has found shelter in one of them and used its magical power to call the Festive Snowman into being. Wrap yourself up well and warmly and jump on the back of your new frosty companion.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }
        }
    }, { -- Mounts II
        icons = {"Category_Mounts.png"},
        name = "Mounts II",
        parent = "Mounts",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"Festive_Snowman.png"},
                name = "Festive Snowman",
                price = 900 - GAMESTORE_MOUNT_DISCOUNT,
                id = 135,
                description = "{character}\n{speedboost}\n\n<i>When the nights are getting longer and freezing wind brings driving snow into the land, snowmen rise and shine on every corner. Lately, a peaceful, arcane creature has found shelter in one of them and used its magical power to call the Festive Snowman into being. Wrap yourself up well and warmly and jump on the back of your new frosty companion.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Gloom_Widow.png"},
                name = "Gloom Widow",
                price = 690 - GAMESTORE_MOUNT_DISCOUNT,
                id = 118,
                description = "{character}\n{speedboost}\n\n<i>It is said that the Gloom Widow was born long before Banor walked the earth of Tibia. While its parents died in the war against the cruel hordes sent by Brog and Zathroth, their child survived by hiding in skulls of burned enemies. It never left its hiding spot and as it grew older, the skulls merged into its body. Now, it is fully-grown and thirsts for revenge.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Prismatic_Unicorn.png"},
                name = "Prismatic Unicorn",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 115,
                description = "{character}\n{speedboost}\n\n<i>Legend has it that a mare and a stallion once reached the end of a rainbow and decided to stay there. Influenced by the mystical power of the rainbow, the mare gave birth to an exceptional foal: Not only the big, strong horn on its forehead but the unusual colouring of its hair makes the Prismatic Unicorn a unique mount in every respect.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Rabbit_Rickshaw.png"},
                name = "Rabbit Rickshaw",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 138,
                description = "{character}\n{speedboost}\n\n<i>Your lower back worsens with every trip you spend on the back of your mount and you are looking for a more comfortable alternative to travel through the lands? Say no more! The Rabbit Rickshaw comes with two top-performing hares that never get tired thanks to the brand new and highly innovative propulsion technology. Just keep some back-up carrots in your pocket and you will be fine!</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Shadow_Draptor.png"},
                name = "Shadow Draptor",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 24,
                description = "{character}\n{speedboost}\n\n<i>A wild, ancient creature, which had been hiding in the depths of the shadows for a very long time, has been spotted in Tibia again! The almighty Shadow Draptor has returned and only the bravest Tibians can control such a beast!</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Steelbeak.png"},
                name = "Steelbeak",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 34,
                description = "{character}\n{speedboost}\n\n<i>Forged by only the highest skilled blacksmiths in the depths of Kazordoon's furnaces, a wild animal made out of the finest steel arose from glowing embers and blazing heat. Protected by its impenetrable armour, the Steelbeak is ready to accompany its master on every battleground.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Jungle_Saurian.png"},
                name = "Jungle Saurian",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 110,
                description = "{character}\n{speedboost}\n\n<i>Thousands of years ago, its ancestors ruled the world. Only recently, it found its way into Tibia. The Jungle Saurian likes to hide in dense wood and overturned trees.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Jungle_Tiger.png"},
                name = "Jungle Tiger",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 125,
                description = "{character}\n{speedboost}\n\n<i>It is said that in ancient times, the sabre-tooth tiger was already used as a mount by elder warriors of Svargrond. As seafaring began to expand, this noble big cat was also transported to other regions in Tibia. Influenced by the new environment and climatic changes, the fur of the Jungle Tiger has developed its extraordinary colouring over several generations.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Lagoon_Saurian.png"},
                name = "Lagoon Saurian",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 112,
                description = "{character}\n{speedboost}\n\n<i>Thousands of years ago, its ancestors ruled the world. Only recently, it found its way into Tibia. The Lagoon Saurian feels most comfortable in torrential rivers and behind dangerous waterfalls.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Gold_Sphinx.png"},
                name = "Gold Sphinx",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 107,
                description = "{character}\n{speedboost}\n\n<i>Ride a Gold Sphinx on your way through ancient chambers and tombs and have a loyal friend by your side while fighting countless mummies and other creatures.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Shadow_Sphinx.png"},
                name = "Shadow Sphinx",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 109,
                description = "{character}\n{speedboost}\n\n<i>Ride a Shadow Sphinx on your way through ancient chambers and tombs and have a loyal friend by your side while fighting countless mummies and other creatures.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Jackalope.png"},
                name = "Jackalope",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 103,
                description = "{character}\n{speedboost}\n\n<i>Do you like fluffy bunnies but think they are too small? Do you admire the majesty of stags and their antlers but are afraid of their untameable wilderness? Do not worry, the mystic creature Jackalope consolidates the best qualities of both animals. Hop on its backs and enjoy the ride.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Ivory_Fang.png"},
                name = "Ivory Fang",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 100,
                description = "{character}\n{speedboost}\n\n<i>Incredible strength and smartness, an irrepressible will to survive, passionately hunting in groups. If these attributes apply to your character, we have found the perfect partner for you. Have a proper look at Ivory Fang, which stands loyally by its master's side in every situation. It is time to become the leader of the wolf pack!</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Shadow_Claw.png"},
                name = "Shadow Claw",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 101,
                description = "{character}\n{speedboost}\n\n<i>Incredible strength and smartness, an irrepressible will to survive, passionately hunting in groups. If these attributes apply to your character, we have found the perfect partner for you. Have a proper look at Shadow Claw, which stands loyally by its master's side in every situation. It is time to become the leader of the wolf pack!</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Snow_Pelt.png"},
                name = "Snow Pelt",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 102,
                description = "{character}\n{speedboost}\n\n<i>Incredible strength and smartness, an irrepressible will to survive, passionately hunting in groups. If these attributes apply to your character, we have found the perfect partner for you. Have a proper look at Snow Pelt, which stands loyally by its master's side in every situation. It is time to become the leader of the wolf pack!</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Snowy_Owl.png"},
                name = "Snowy Owl",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 128,
                description = "{character}\n{speedboost}\n\n<i>Owls have always been a symbol of mystery, magic and wisdom in Tibian myths and fairy tales. Having one of these enigmatic creatures of the night as a trustworthy companion provides you with a silent guide whose ever-watchful eyes will cut through the shadows, help you navigate the darkness and unravel great secrets.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Tawny_Owl.png"},
                name = "Tawny Owl",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 127,
                description = "{character}\n{speedboost}\n\n<i>Owls have always been a symbol of mystery, magic and wisdom in Tibian myths and fairy tales. Having one of these enigmatic creatures of the night as a trustworthy companion provides you with a silent guide whose ever-watchful eyes will cut through the shadows, help you navigate the darkness and unravel great secrets.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Swamp_Crocovile.png"},
                name = "Swamp Crocovile",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 142,
                description = "{character}\n{speedboost}\n\n<i>To the keen observer, the crocovile is clearly a relative of the crocodile, albeit their look suggests an even more aggressive nature. While it is true that the power of its massive and muscular body can not only crush enemies dead but also break through any gate like a battering ram, a crocovile is, above all, a steadfast companion showing unwavering loyalty to its owner.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Swamp_Snapper.png"},
                name = "Swamp Snapper",
                price = 690 - GAMESTORE_MOUNT_DISCOUNT,
                id = 95,
                description = "{character}\n{speedboost}\n\n<i>You are intrigued by tortoises and would love to throne on a tortoise shell when travelling the Tibian wilderness? The Swamp Snapper might become your new trustworthy companion then, which will transport you safely and even carry you during combat.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Mould_Shell.png"},
                name = "Mould Shell",
                price = 690 - GAMESTORE_MOUNT_DISCOUNT,
                id = 96,
                description = "{character}\n{speedboost}\n\n<i>You are intrigued by tortoises and would love to throne on a tortoise shell when travelling the Tibian wilderness? The Mould Shell might become your new trustworthy companion then, which will transport you safely and even carry you during combat.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Reed_Lurker.png"},
                name = "Reed Lurker",
                price = 690 - GAMESTORE_MOUNT_DISCOUNT,
                id = 97,
                description = "{character}\n{speedboost}\n\n<i>You are intrigued by tortoises and would love to throne on a tortoise shell when travelling the Tibian wilderness? The Reed Lurker might become your new trustworthy companion then, which will transport you safely and even carry you during combat.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Leafscuttler.png"},
                name = "Leafscuttler",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 93,
                description = "{character}\n{speedboost}\n\n<i>You are fascinated by insectoid creatures and can picture yourself riding one during combat or just for travelling? The Leafscuttler will carry you through the Tibian wilderness with ease.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Mouldpincer.png"},
                name = "Mouldpincer",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 91,
                description = "{character}\n{speedboost}\n\n<i>You are fascinated by insectoid creatures and can picture yourself riding one during combat or just for travelling? The Mouldpincer will carry you through the Tibian wilderness with ease.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Muffled_Snowman.png"},
                name = "Muffled Snowman",
                price = 900 - GAMESTORE_MOUNT_DISCOUNT,
                id = 136,
                description = "{character}\n{speedboost}\n\n<i>When the nights are getting longer and freezing wind brings driving snow into the land, snowmen rise and shine on every corner. Lately, a peaceful, arcane creature has found shelter in one of them and used its magical power to call the Muffled Snowman into being. Wrap yourself up well and warmly and jump on the back of your new frosty companion.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Nightdweller.png"},
                name = "Nightdweller",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 88,
                description = "{character}\n{speedboost}\n\n<i>If you are more of an imp than an angel, you may prefer riding out on a Nightdweller to scare fellow Tibians on their festive strolls. Its devilish mask, claw-like hands and sharp hooves makes it the perfect companion for any daring adventurer who likes to stand out.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Nightmarish_Crocovile.png"},
                name = "Nightmarish Crocovile",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 143,
                description = "{character}\n{speedboost}\n\n<i>To the keen observer, the crocovile is clearly a relative of the crocodile, albeit their look suggests an even more aggressive nature. While it is true that the power of its massive and muscular body can not only crush enemies dead but also break through any gate like a battering ram, a crocovile is, above all, a steadfast companion showing unwavering loyalty to its owner.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Frostflare.png"},
                name = "Frostflare",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 89,
                description = "{character}\n{speedboost}\n\n<i>If you are more of an imp than an angel, you may prefer riding out on a Frostflare to scare fellow Tibians on their festive strolls. Its devilish mask, claw-like hands and sharp hooves makes it the perfect companion for any daring adventurer who likes to stand out.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Slagsnare.png"},
                name = "Slagsnare",
                price = 780 - GAMESTORE_MOUNT_DISCOUNT,
                id = 84,
                description = "{character}\n{speedboost}\n\n<i>The Slagsnare has external characteristics of different breeds. It is assumed that his brain is also composed of many different species, which makes it completely unpredictable. Only few have managed to approach this creature unharmed and only the best could tame it.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Nightstinger.png"},
                name = "Nightstinger",
                price = 780 - GAMESTORE_MOUNT_DISCOUNT,
                id = 85,
                description = "{character}\n{speedboost}\n\n<i>The Nightstinger has external characteristics of different breeds. It is assumed that his brain is also composed of many different species, which makes it completely unpredictable. Only few have managed to approach this creature unharmed and only the best could tame it.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Razorcreep.png"},
                name = "Razorcreep",
                price = 780 - GAMESTORE_MOUNT_DISCOUNT,
                id = 86,
                description = "{character}\n{speedboost}\n\n<i>The Razorcreep has external characteristics of different breeds. It is assumed that his brain is also composed of many different species, which makes it completely unpredictable. Only few have managed to approach this creature unharmed and only the best could tame it.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }
        }
    }, { -- Mounts III
        icons = {"Category_Mounts.png"},
        name = "Mounts III",
        parent = "Mounts",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"Gorongra.png"},
                name = "Gorongra",
                price = 720 - GAMESTORE_MOUNT_DISCOUNT,
                id = 81,
                description = "{character}\n{speedboost}\n\n<i>Get yourself a mighty travelling companion with broad shoulders and a gentle heart. Gorongra is a physically imposing creature that is much more peaceful than its relatives, Tiquanda's wild kongras, and will carry you safely wherever you ask it to go.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Noctungra.png"},
                name = "Noctungra",
                price = 720 - GAMESTORE_MOUNT_DISCOUNT,
                id = 82,
                description = "{character}\n{speedboost}\n\n<i>Get yourself a mighty travelling companion with broad shoulders and a gentle heart. Noctungra is a physically imposing creature that is much more peaceful than its relatives, Tiquanda's wild kongras, and will carry you safely wherever you ask it to go.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Silverneck.png"},
                name = "Silverneck",
                price = 720 - GAMESTORE_MOUNT_DISCOUNT,
                id = 83,
                description = "{character}\n{speedboost}\n\n<i>Get yourself a mighty travelling companion with broad shoulders and a gentle heart. Silverneck is a physically imposing creature that is much more peaceful than its relatives, Tiquanda's wild kongras, and will carry you safely wherever you ask it to go.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Sea_Devil.png"},
                name = "Sea Devil",
                price = 570 - GAMESTORE_MOUNT_DISCOUNT,
                id = 78,
                description = "{character}\n{speedboost}\n\n<i>If the Sea Devil moves its fins, it generates enough air pressure that it can even float over land. Its numerous eyes allow it to quickly detect dangers even in confusing situations and eliminate them with one powerful bite. If you watch your fingers, you are going to be good friends.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Plumfish.png"},
                name = "Plumfish",
                price = 570 - GAMESTORE_MOUNT_DISCOUNT,
                id = 80,
                description = "{character}\n{speedboost}\n\n<i>If the Plumfish moves its fins, it generates enough air pressure that it can even float over land. Its numerous eyes allow it to quickly detect dangers even in confusing situations and eliminate them with one powerful bite. If you watch your fingers, you are going to be good friends.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Flitterkatzen.png"},
                name = "Flitterkatzen",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 75,
                description = "{character}\n{speedboost}\n\n<i>Rumour has it that many years ago elder witches had gathered to hold a magical feast high up in the mountains. They had crossbred Flitterkatzen to easily conquer rocky canyons and deep valleys. Nobody knows what happened on their way up but only the mount has been seen ever since.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Ringtail_Waccoon.png"},
                name = "Ringtail Waccoon",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 68,
                description = "{character}\n{speedboost}\n\n<i>Waccoons are cuddly creatures that love nothing more than to be petted and snuggled! Share a hug, ruffle the fur of the Ringtail Waccoon and scratch it behind its ears to make it happy.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"River_Crocovile.png"},
                name = "River Crocovile",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 141,
                description = "{character}\n{speedboost}\n\n<i>To the keen observer, the crocovile is clearly a relative of the crocodile, albeit their look suggests an even more aggressive nature. While it is true that the power of its massive and muscular body can not only crush enemies dead but also break through any gate like a battering ram, a crocovile is, above all, a steadfast companion showing unwavering loyalty to its owner.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Sanguine_Frog.png"},
                name = "Sanguine Frog",
                price = 690 - GAMESTORE_MOUNT_DISCOUNT,
                id = 121,
                description = "{character}\n{speedboost}\n\n<i>For centuries, humans and monsters have dumped their garbage in the swamps around Venore. The combination of old, rusty weapons, stale mana and broken runes have turned some of the swamp dwellers into gigantic frogs. Benefit from those mutations and make the Sanguine Frog a faithful mount for your adventures even beyond the bounds of the swamp.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Night_Waccoon.png"},
                name = "Night Waccoon",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 69,
                description = "{character}\n{speedboost}\n\n<i>Waccoons are cuddly creatures that love nothing more than to be petted and snuggled! Share a hug, ruffle the fur of the Night Waccoon and scratch it behind its ears to make it happy.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Flying_Divan.png"},
                name = "Flying Divan",
                price = 900 - GAMESTORE_MOUNT_DISCOUNT,
                id = 65,
                description = "{character}\n{speedboost}\n\n<i>The Flying Divan is the perfect mount for those who are too busy to take care of an animal mount or simply like to travel on a beautiful, magic hand-woven carpet.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Magic_Carpet.png"},
                name = "Magic Carpet",
                price = 900 - GAMESTORE_MOUNT_DISCOUNT,
                id = 66,
                description = "{character}\n{speedboost}\n\n<i>The Magic Carpet is the perfect mount for those who are too busy to take care of an animal mount or simply like to travel on a beautiful, magic hand-woven carpet.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Marsh_Toad.png"},
                name = "Marsh Toad",
                price = 690 - GAMESTORE_MOUNT_DISCOUNT,
                id = 120,
                description = "{character}\n{speedboost}\n\n<i>The Magic Carpet is the perfect mount for those who are too busy to take cFor centuries, humans and monsters have dumped their garbage in the swamps around Venore. The combination of old, rusty weapons, stale mana and broken runes have turned some of the swamp dwellers into gigantic frogs. Benefit from those mutations and make the Marsh Toad a faithful mount for your adventures even beyond the bounds of the swamp.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Floating_Kashmir.png"},
                name = "Floating Kashmir",
                price = 900 - GAMESTORE_MOUNT_DISCOUNT,
                id = 67,
                description = "{character}\n{speedboost}\n\n<i>The Floating Kashmir is the perfect mount for those who are too busy to take care of an animal mount or simply like to travel on a beautiful, magic hand-woven carpet.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Shadow_Hart.png"},
                name = "Shadow Hart",
                price = 660 - GAMESTORE_MOUNT_DISCOUNT,
                id = 72,
                description = "{character}\n{speedboost}\n\n<i>Treat your character to a new travelling companion with a gentle nature and an impressive antler: The noble Shadow Hart will carry you through the deepest snow.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Tundra_Rambler.png"},
                name = "Tundra Rambler",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 62,
                description = "{character}\n{speedboost}\n\n<i>With its thick, shaggy hair, the Tundra Rambler will keep you warm even in the chilly climate of the Ice Islands. Due to its calm and peaceful nature, it is not letting itself getting worked up easily.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Highland_Yak.png"},
                name = "Highland Yak",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 63,
                description = "{character}\n{speedboost}\n\n<i>With its thick, shaggy hair, the Highland Yak will keep you warm even in the chilly climate of the Ice Islands. Due to its calm and peaceful nature, it is not letting itself getting worked up easily.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Glacier_Vagabond.png"},
                name = "Glacier Vagabond",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 64,
                description = "{character}\n{speedboost}\n\n<i>With its thick, shaggy hair, the Glacier Vagabond will keep you warm even in the chilly climate of the Ice Islands. Due to its calm and peaceful nature, it is not letting itself getting worked up easily.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Golden_Dragonfly.png"},
                name = "Golden Dragonfly",
                price = 600 - GAMESTORE_MOUNT_DISCOUNT,
                id = 59,
                description = "{character}\n{speedboost}\n\n<i>If you are more interested in the achievements of science, you may enjoy a ride on the Golden Dragonfly, one of the new insect-like flying machines. Even if you do not move around, the wings of these unusual vehicles are always in motion.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Steel_Bee.png"},
                name = "Steel Bee",
                price = 600 - GAMESTORE_MOUNT_DISCOUNT,
                id = 60,
                description = "{character}\n{speedboost}\n\n<i>If you are more interested in the achievements of science, you may enjoy a ride on the Steel Bee, one of the new insect-like flying machines. Even if you do not move around, the wings of these unusual vehicles are always in motion.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Hailstorm_Fury.png"},
                name = "Hailtorm Fury",
                price = 780 - GAMESTORE_MOUNT_DISCOUNT,
                id = 55,
                description = "{character}\n{speedboost}\n\n<i>Once captured and held captive by a mad hunter, the Hailstorm Fury is the result of sick experiments. Fed only with demon dust and concentrated demonic blood it had to endure a dreadful transformation. The demonic blood that is now running through its veins, however, provides it with incredible strength and endurance.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Siegebreaker.png"},
                name = "Siegebreaker",
                price = 690 - GAMESTORE_MOUNT_DISCOUNT,
                id = 56,
                description = "{character}\n{speedboost}\n\n<i>The Siegebreaker is out searching for the best bamboo in Tibia. Its heavy armour allows it to visit even the most dangerous places. Treat it nicely with its favourite food from time to time and it will become a loyal partner.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Poisonbane.png"},
                name = "Poisonbane",
                price = 690 - GAMESTORE_MOUNT_DISCOUNT,
                id = 57,
                description = "{character}\n{speedboost}\n\n<i>The Poisonbane is out searching for the best bamboo in Tibia. Its heavy armour allows it to visit even the most dangerous places. Treat it nicely with its favourite food from time to time and it will become a loyal partner.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Nethersteed.png"},
                name = "Nethersteed",
                price = 900 - GAMESTORE_MOUNT_DISCOUNT,
                id = 50,
                description = "{character}\n{speedboost}\n\n<i>Once a majestic and proud warhorse, the Nethersteed has fallen in a horrible battle many years ago. Driven by agony and pain, its spirit once again took possession of its rotten corpse to avenge its death. Stronger than ever, it seeks a master to join the battlefield, aiming for nothing but death and destruction.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Tempest.png"},
                name = "Tempest",
                price = 900 - GAMESTORE_MOUNT_DISCOUNT,
                id = 51,
                description = "{character}\n{speedboost}\n\n<i>Once a majestic and proud warhorse, the Tempest has fallen in a horrible battle many years ago. Driven by agony and pain, its spirit once again took possession of its rotten corpse to avenge its death. Stronger than ever, it seeks a master to join the battlefield, aiming for nothing but death and destruction.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Flamesteed.png"},
                name = "Flamesteed",
                price = 900 - GAMESTORE_MOUNT_DISCOUNT,
                id = 47,
                description = "{character}\n{speedboost}\n\n<i>Once a majestic and proud warhorse, the Flamesteed has fallen in a horrible battle many years ago. Driven by agony and pain, its spirit once again took possession of its rotten corpse to avenge its death. Stronger than ever, it seeks a master to join the battlefield, aiming for nothing but death and destruction.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Tombstinger.png"},
                name = "Tombstinger",
                price = 600 - GAMESTORE_MOUNT_DISCOUNT,
                id = 36,
                description = "{character}\n{speedboost}\n\n<i>The Tombstinger is a scorpion that has surpassed the natural boundaries of its own kind. Way bigger, stronger and faster than ordinary scorpions, it makes a perfect companion for fearless heroes and explorers. Just be careful of his poisonous sting when you mount it.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Toxic_Toad.png"},
                name = "Toxic Toad",
                price = 690 - GAMESTORE_MOUNT_DISCOUNT,
                id = 122,
                description = "{character}\n{speedboost}\n\n<i>For centuries, humans and monsters have dumped their garbage in the swamps around Venore. The combination of old, rusty weapons, stale mana and broken runes have turned some of the swamp dwellers into gigantic frogs. Benefit from those mutations and make the Toxic Toad a faithful mount for your adventures even beyond the bounds of the swamp.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Jade_Pincer.png"},
                name = "Jade Pincer",
                price = 600 - GAMESTORE_MOUNT_DISCOUNT,
                id = 49,
                description = "{character}\n{speedboost}\n\n<i>The Jade Pincer is a scorpion that has surpassed the natural boundaries of its own kind. Way bigger, stronger and faster than ordinary scorpions, it makes a perfect companion for fearless heroes and explorers. Just be careful of his poisonous sting when you mount it.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Jade_Lion.png"},
                name = "Jade Lion",
                price = 450 - GAMESTORE_MOUNT_DISCOUNT,
                id = 48,
                description = "{character}\n{speedboost}\n\n<i>Its roaring is piercing marrow and bone and can be heard over ten miles away. The Jade Lion is the undisputed ruler of its territory and no one messes with this animal. Show no fear and prove yourself worthy of its trust and you will get yourself a valuable companion for your adventures.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }
        }
    }, { -- Mounts IV
        icons = {"Category_Mounts.png"},
        name = "Mounts IV",
        parent = "Mounts",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"Venompaw.png"},
                name = "Venompaw",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 76,
                description = "{character}\n{speedboost}\n\n<i>Rumour has it that many years ago elder witches had gathered to hold a magical feast high up in the mountains. They had crossbred Venompaw to easily conquer rocky canyons and deep valleys. Nobody knows what happened on their way up but only the mount has been seen ever since.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Winter_King.png"},
                name = "Winter King",
                price = 450 - GAMESTORE_MOUNT_DISCOUNT,
                id = 52,
                description = "{character}\n{speedboost}\n\n<i>Its roaring is piercing marrow and bone and can be heard over ten miles away. The Winter King is the undisputed ruler of its territory and no one messes with this animal. Show no fear and prove yourself worthy of its trust and you will get yourself a valuable companion for your adventures.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Wolpertinger.png"},
                name = "Wolpertinger",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 105,
                description = "{character}\n{speedboost}\n\n<i>Once captured and held captive by a mad hunter, the Woodland Prince is the result of sick experiments. Fed only with demon dust and concentrated demonic blood it had to endure a dreadful transformation. The demonic blood that is now running through its veins, however, provides it with incredible strength and endurance.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Woodland_Prince.png"},
                name = "Woodland Prince",
                price = 780 - GAMESTORE_MOUNT_DISCOUNT,
                id = 54,
                description = "{character}\n{speedboost}\n\n<i>Once captured and held captive by a mad hunter, the Woodland Prince is the result of sick experiments. Fed only with demon dust and concentrated demonic blood it had to endure a dreadful transformation. The demonic blood that is now running through its veins, however, provides it with incredible strength and endurance.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Zaoan_Badger.png"},
                name = "Zaoan Badger",
                price = 690 - GAMESTORE_MOUNT_DISCOUNT,
                id = 149,
                description = "{character}\n{speedboost}\n\n<i>Badgers have been a staple of the Tibian fauna for a long time, and finally some daring souls have braved the challenge to tame some exceptional specimens - and succeeded! While the common badger you can encounter during your travels might seem like a rather unassuming creature, the Battle Badger, the Ether Badger, and the Zaoan Badger are fierce and mighty beasts, which are at your beck and call.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Floating_Augur.png"},
                name = "Floating Augur",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 155,
                description = "{character}\n{speedboost}\n\n<i>These creatures are Floating Savants whose mind has been warped and bent to focus their extraordinary mental capabilities on one single goal: to do their master's bidding. Instead of being filled with an endless pursuit of knowledge, their live is now one of continuous thralldom and serfhood. The Floating Sage, the Floating Scholar and the Floating Augur are at your disposal.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Floating_Sage.png"},
                name = "Floating Sage",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 153,
                description = "{character}\n{speedboost}\n\n<i>These creatures are Floating Savants whose mind has been warped and bent to focus their extraordinary mental capabilities on one single goal: to do their master's bidding. Instead of being filled with an endless pursuit of knowledge, their live is now one of continuous thralldom and serfhood. The Floating Sage, the Floating Scholar and the Floating Augur are at your disposal.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Floating_Scholar.png"},
                name = "Floating Scholar",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 154,
                description = "{character}\n{speedboost}\n\n<i>These creatures are Floating Savants whose mind has been warped and bent to focus their extraordinary mental capabilities on one single goal: to do their master's bidding. Instead of being filled with an endless pursuit of knowledge, their live is now one of continuous thralldom and serfhood. The Floating Sage, the Floating Scholar and the Floating Augur are at your disposal.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Snow_Strider.png"},
                name = "Snow Strider",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 164,
                description = "{character}\n{speedboost}\n\n<i>A magical fire burns inside these wolves. Bred as the faithful guardians for an eccentric wizard's tower, these creatures make for loyal companions during your travels. While not originally intended for riding, their sturdy frame makes the Dawn Strayer, Dusk Pryer and Snow Strider suitable mounts.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Dusk_Pryer.png"},
                name = "Dusk Pryer",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 165,
                description = "{character}\n{speedboost}\n\n<i>A magical fire burns inside these wolves. Bred as the faithful guardians for an eccentric wizard's tower, these creatures make for loyal companions during your travels. While not originally intended for riding, their sturdy frame makes the Dawn Strayer, Dusk Pryer and Snow Strider suitable mounts.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Dawn_Strayer.png"},
                name = "Dawn Strayer",
                price = 870 - GAMESTORE_MOUNT_DISCOUNT,
                id = 166,
                description = "{character}\n{speedboost}\n\n<i>A magical fire burns inside these wolves. Bred as the faithful guardians for an eccentric wizard's tower, these creatures make for loyal companions during your travels. While not originally intended for riding, their sturdy frame makes the Dawn Strayer, Dusk Pryer and Snow Strider suitable mounts.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Savanna_Ostrich.png"},
                name = "Savanna Ostrich",
                price = 500 - GAMESTORE_MOUNT_DISCOUNT,
                id = 168,
                description = "{character}\n{speedboost}\n\n<i>These birds have a strong maternal instinct since their fledglings are completely dependent on their parents for protection. Do not expect them to abandon their brood only because they are carrying you around. In fact, if you were to separate them from their chick, the Savanna Ostrich, Coral Rhea and Eventide Nandu would turn into vicious beings, so don't even try it!</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Coral_Rhea.png"},
                name = "Coral Rhea",
                price = 500 - GAMESTORE_MOUNT_DISCOUNT,
                id = 169,
                description = "{character}\n{speedboost}\n\n<i>These birds have a strong maternal instinct since their fledglings are completely dependent on their parents for protection. Do not expect them to abandon their brood only because they are carrying you around. In fact, if you were to separate them from their chick, the Savanna Ostrich, Coral Rhea and Eventide Nandu would turn into vicious beings, so don't even try it!</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Eventide_Nandu.png"},
                name = "Eventide Nandu",
                price = 500 - GAMESTORE_MOUNT_DISCOUNT,
                id = 170,
                description = "{character}\n{speedboost}\n\n<i>These birds have a strong maternal instinct since their fledglings are completely dependent on their parents for protection. Do not expect them to abandon their brood only because they are carrying you around. In fact, if you were to separate them from their chick, the Savanna Ostrich, Coral Rhea and Eventide Nandu would turn into vicious beings, so don't even try it!</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT
            }, {
                icons = {"Voracious_Hyaena.png"},
                name = "Voracious Hyaena",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 171,
                description = "{character}\n{speedboost}\n\n<i>The Cunning Hyaena, Scruffy Hyaena and Voracious Hyaena are highly social animals and loyal companions to whomever is able to befriend them. Coming from sun-soaked places, they prefer a warm climate, but are able to cope in other environments as well.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
                home = true
            }, {
                icons = {"Cunning_Hyaena.png"},
                name = "Cunning Hyaena",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 172,
                description = "{character}\n{speedboost}\n\n<i>The Cunning Hyaena, Scruffy Hyaena and Voracious Hyaena are highly social animals and loyal companions to whomever is able to befriend them. Coming from sun-soaked places, they prefer a warm climate, but are able to cope in other environments as well.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
                home = true
            }, {
                icons = {"Scruffy_Hyaena.png"},
                name = "Scruffy Hyaena",
                price = 750 - GAMESTORE_MOUNT_DISCOUNT,
                id = 173,
                description = "{character}\n{speedboost}\n\n<i>The Cunning Hyaena, Scruffy Hyaena and Voracious Hyaena are highly social animals and loyal companions to whomever is able to befriend them. Coming from sun-soaked places, they prefer a warm climate, but are able to cope in other environments as well.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
                home = true
            }
        }
    }, { -- Cosmetics Outfits
        icons = {"Category_Cosmetics.png"},
        name = "Outfits",
        rookgaard = true,
        subclasses = {"Outfits I", "Outfits II"}
    }, { -- Outfits I
        icons = {"Category_Outfits.png"},
        name = "Outfits I",
        parent = "Outfits",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {
                    "Outfit_Arena_Champion_Male_Addon_3.png",
                    "Outfit_Arena_Champion_Female_Addon_3.png"
                },
                name = "Full Arena Champion Outfit",
                price = 870 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 885, male = 884},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>Fight your bloody battles in the arena and become a darling of the crowd. Once you have made it to the top and everyone is cheering your name, the fashionable outfit of an Arena Champion will show the world what you are made of.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Beastmaster_Male_Addon_3.png",
                    "Outfit_Beastmaster_Female_Addon_3.png"
                },
                name = "Full Beastmaster Outfit",
                price = 870 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 636, male = 637},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>Do you have enough authority to make wild animals subservient to you? Become a Beastmaster and surround yourself with fearsome companions. When your beasts bare their teeth, your enemies will turn tails and run.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Breezy_Garb_Male_Addon_3.png",
                    "Outfit_Breezy_Garb_Female_Addon_3.png"
                },
                name = "Full Breezy Garb Outfit",
                price = 600 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 1246, male = 1245},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>Even the most eager adventurers and toughest warriors need some time to rest and recharge. Enjoy tranquility and peace as you picnic in good company at one of your favourite places in Tibia. Put on your Breezy Garb outfit, grab your walking stick, a basket filled with tasty snacks and then head out into nature!</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Ceremonial_Garb_Male_Addon_3.png",
                    "Outfit_Ceremonial_Garb_Female_Addon_3.png"
                },
                name = "Full Ceremonial Garb Outfit",
                price = 750 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 694, male = 695},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>If you want to make a great entrance at a Tibian costume party, the Ceremonial Garb is certainly a good choice. With a drum over your shoulder and adorned with feathers you are perfectly dressed to lead a carnival parade through the streets of Thais.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Champion_Male_Addon_3.png",
                    "Outfit_Champion_Female_Addon_3.png"
                },
                name = "Full Champion Outfit",
                price = 570 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 632, male = 633},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>Protect your body with heavy armour plates and spiky bones to teach your enemies the meaning of fear! The Champion outfit perfectly suits battle-hardened warriors who rely on their trusty sword and shield.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Chaos_Acolyte_Male_Addon_3.png",
                    "Outfit_Chaos_Acolyte_Female_Addon_3.png"
                },
                name = "Full Chaos Acolyte Outfit",
                price = 900 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 664, male = 665},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>You have always felt like the cat among the pigeons and have a fable for dark magic? The Chaos Acolyte outfit is a perfect way to express your inner nature. Show your commitment for the higher cause and wreak havoc on your enemies in this unique outfit.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Conjurer_Male_Addon_3.png",
                    "Outfit_Conjurer_Female_Addon_3.png"
                },
                name = "Full Conjurer Outfit",
                price = 750 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 635, male = 634},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>You recently graduated from the Magic Academy and want to bring your knowledge to good use? Congratulations, you are now an honourable disciple of magic! Open up a bottle of well-aged mana and treat yourself with the fashionable Conjurer outfit.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Death_Herald_Male_Addon_3.png",
                    "Outfit_Death_Herald_Female_Addon_3.png"
                },
                name = "Full Death Herald Outfit",
                price = 600 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 666, male = 667},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>Death and decay are your ever-present companions? Your enemies are dropping like flies and your path is covered with their bodies? However, as decency demands, you want to at least give them a proper funeral? Then the Death Herald is just the right outfit for you.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Entrepreneur_Male_Addon_3.png",
                    "Outfit_Entrepreneur_Female_Addon_3.png"
                },
                name = "Full Entrepreneur Outfit",
                price = 750 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 471, male = 472},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>Slaughter through hordes of monsters during your early morning hunt and kiss the hand of Queen Eloise later on at the evening reception in her historical residence. With the Entrepreneur outfit you will cut a fine figure on every occasion.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Evoker_Male_Addon_3.png",
                    "Outfit_Evoker_Female_Addon_3.png"
                },
                name = "Full Evoker Outfit",
                price = 840 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 724, male = 725},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>Dance around flickering fires in the Evoker outfit while singing unholy chants to praise witchcraft and wizardry. Your faithful bat will always be by your side.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Grove_Keeper_Male_Addon_3.png",
                    "Outfit_Grove_Keeper_Female_Addon_3.png"
                },
                name = "Full Groove Keeper Outfit",
                price = 870 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 909, male = 908},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>Feeling the springy grass under your feet and inhaling the spicy air of the forest is pure satisfaction for your soul? Every animal is your friend and you caringly look after trees and plants all the time? Then it is time to become one with nature: Become a Grove Keeper!</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Guidon_Bearer_Male_Addon_3.png",
                    "Outfit_Guidon_Bearer_Female_Addon_3.png"
                },
                name = "Full Guidon Bearer Outfit",
                price = 870 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 1187, male = 1186},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>Carrying the guidon of a unit, always marching in front, is not only an honour but also comes with great responsibility. Guidon bearers wield great power, they lead where others follow and keep the spirits of the troops up as they wave their flag against the golden suns of Tibia.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Herbalist_Male_Addon_3.png",
                    "Outfit_Herbalist_Female_Addon_3.png"
                },
                name = "Full Herbalist Outfit",
                price = 750 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 1020, male = 1021},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>The Herbalist outfit is the perfect outfit for all herbs collectors. Those of you who are aware that you do not necessarily have to reach into the mouth of a hydra to get a hydra tongue and those who know exactly where to get blood- and shadow-herbs will find a matching outfit for their daily hobby. Show the world your affinity for herbs and impress your friends with your knowledge of medicine and potions.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Herder_Male_Addon_3.png",
                    "Outfit_Herder_Female_Addon_3.png"
                },
                name = "Full Herder Outfit",
                price = 750 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 1280, male = 1279},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>The Herder is one with nature, being outside all day, watching carefully over his flock. If you like to spend time on picturesque meadows and are always looking for greener pastures, then this outfit is for you.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Lupine_Warden_Male_Addon_3.png",
                    "Outfit_Lupine_Warden_Female_Addon_3.png"
                },
                name = "Full Lupine Warden Outfit",
                price = 840 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 900, male = 899},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>Do you feel the adrenaline rushing through your veins when the sun goes down and a full moon lightens the night? Do you have the urge to hunt down your target no matter what? Unleash the beast inside of you and lead your friends to battle with the Lupine Warden outfit!</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Mercenary_Male_Addon_3.png",
                    "Outfit_Mercenary_Female_Addon_3.png"
                },
                name = "Full Mercenary Outfit",
                price = 870 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 1057, male = 1056},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>The Mercenary carries a powerful, razor-sharp axe on his shoulders that effortlessly cuts through any armour and bone. You should better tell your friends to keep a safe distance, since heads will roll over the blood-soaked battleground after a powerful swing of yours.\nConsidering the sheer size of this axe, it might even be possible to chop onions without shedding a tear.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Owl_Keeper_Male_Addon_3.png",
                    "Outfit_Owl_Keeper_Female_Addon_3.png"
                },
                name = "Full Owl Keeper Outfit",
                price = 600 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 1174, male = 1173},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>Owl Keepers are often referred to as spirits walking through the forest at night, mere shadows during the day. They are also said to be shamans, protecting the flora and fauna of the Tibian lands. You often see them wearing a stag's antlers on their head and in the company of an owl, for they are as wise and mysterious as these intriguing creatures.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Pharaoh_Male_Addon_3.png",
                    "Outfit_Pharaoh_Female_Addon_3.png"
                },
                name = "Full Pharaoh Outfit",
                price = 750 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 956, male = 955},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>You know how to read hieroglyphs? You admire the exceptional architectural abilities and the unsolved mysteries of an ancient high culture? Next time you pay a visit to your friends, tell them to prepare a bathtub full of milk and honey for you because a Pharaoh is now walking through the streets of Ankrahmun!</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Philosopher_Male_Addon_3.png",
                    "Outfit_Philosopher_Female_Addon_3.png"
                },
                name = "Full Philosopher Outfit",
                price = 750 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 874, male = 873},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>Do you feel the urge to tell people what is really going on in the world? Do you know all answers to the important questions of life? Are you a true philosopher? Then dress like one to showcase the latest fashion for all wise theorists.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Pumpkin_Mummy_Male_Addon_3.png",
                    "Outfit_Pumpkin_Mummy_Female_Addon_3.png"
                },
                name = "Full Pumpkin Mummy Outfit",
                price = 870 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 1128, male = 1127},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>If you cannot decide whether to wrap yourself up as a mummy or flaunt an enormous pumpkin head for your next hunting party, why not combine both? The Pumpkin Mummy outfit is the perfect costume for scary nights and spooky days.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Puppeteer_Male_Addon_3.png",
                    "Outfit_Puppeteer_Female_Addon_3.png"
                },
                name = "Full Puppeteer Outfit",
                price = 870 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 696, male = 697},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>Are you a fan of puppetry? You like to travel the world together with one or two little acting fellows? Or are you simply the one who likes to pull the strings? Then the Puppeteer outfit is the right choice for you.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Ranger_Male_Addon_3.png",
                    "Outfit_Ranger_Female_Addon_3.png"
                },
                name = "Full Ranger Outfit",
                price = 750 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 683, male = 684},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>Most of the day, the Ranger is looking over his forest. He is taking care of all animals and plants and tries to keep everything in balance. Intruders are greeted by a warning shot from his deadly longbow. It is the perfect outfit for Paladins who live in close touch with nature.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Royal_Pumpkin_Male_Addon_3.png",
                    "Outfit_Royal_Pumpkin_Female_Addon_3.png"
                },
                name = "Full Royal Pumpkin Outfit",
                price = 840 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {male = 760, female = 759},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>The mutated pumpkin is too weak for your mighty weapons? Time to show that evil vegetable how to scare the living daylight out of people! Put on a scary looking pumpkin on your head and spread terror and fear amongst the Tibian population.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Sea_Dog_Male_Addon_3.png",
                    "Outfit_Sea_Dog_Female_Addon_3.png"
                },
                name = "Full Sea Dog Outfit",
                price = 600 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 749, male = 750},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>Ahoy mateys! Flaunt the swashbuckling Sea Dog outfit and strike a pose with your hook to impress both landlubbers and fellow pirates. Board your next ship in style!</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Seaweaver_Male_Addon_3.png",
                    "Outfit_Seaweaver_Female_Addon_3.png"
                },
                name = "Full Seaweaver Outfit",
                price = 570 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 732, male = 733},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>The Seaweaver outfit is the perfect choice if you want to show the world that you are indeed a son or a daughter of the submarine kingdom. You can almost feel the salty taste and the rough wind of the sea when wearing it.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Siege_Master_Male_Addon_3.png",
                    "Outfit_Siege_Master_Female_Addon_3.png"
                },
                name = "Full Siege Master Outfit",
                price = 600 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 1050, male = 1051},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>Neither thick stone walls nor heavily armoured gates can stop the Siege Master, who brings down hostile fortifications in the blink of an eye. Whenever he tenses his muscular arms to lift the powerful battering ram, his enemies' knees begin to buckle. It is the perfect outfit for those who also stand for brute strength and immense destruction.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Sinister_Archer_Male_Addon_3.png",
                    "Outfit_Sinister_Archer_Female_Addon_3.png"
                },
                name = "Full Sinister Archer Outfit",
                price = 600 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 1103, male = 1102},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>From an early age, the Sinister Archer has been fascinated by people's dark machinations and perversions. Sinister Archers claim that they advocate the good and that they only use their arrows to pierce the hearts of those who have committed many crimes and misdeeds. However, they are still viewed by the public with much suspicion due to their dubious appearance. To keep their identity secret, they often hide themselves behind a skull-like face guard that can easily withstand even axe and club blows.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Spirit_Caller_Male_Addon_3.png",
                    "Outfit_Spirit_Caller_Female_Addon_3.png"
                },
                name = "Full Spirit Caller Outfit",
                price = 600 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 698, male = 699},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>You are in love with the deep soul of Mother Earth and prefer to walk in the shadows of her wooden children? Choose the Spirit Caller outfit to live in harmony with nature.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Sun_Priest_Male_Addon_3.png",
                    "Outfit_Sun_Priest_Female_Addon_3.png"
                },
                name = "Full Sun Priest Outfit",
                price = 750 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 1024, male = 1023},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>Do you worship warm temperatures and are opposed to the thought of long and dark winter nights? Do you refuse to spend countless evenings in front of your chimney while ice-cold wind whistles through the cracks and niches of your house? It is time to stop freezing and to become an honourable Sun Priest! With this stylish outfit, you can finally show the world your unconditional dedication and commitment to the sun!</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Trophy_Hunter_Male_Addon_3.png",
                    "Outfit_Trophy_Hunter_Female_Addon_3.png"
                },
                name = "Full Trophy Hunter Outfit",
                price = 870 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 958, male = 957},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>You spend hours in the woods in search of wild and rare animals? Countless stuffed skulls of deer, wolves and other creatures are decorating your walls? Now you have the chance to present your trophies in public. Become a Trophy Hunter and cover your shoulders with the finest bear skulls!</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }
        }
    }, { -- Outfits II
        icons = {"Category_Outfits.png"},
        name = "Outfits II",
        parent = "Outfits",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {
                    "Outfit_Winter_Warden_Male_Addon_3.png",
                    "Outfit_Winter_Warden_Female_Addon_3.png"
                },
                name = "Full Winter Warden Outfit",
                price = 870 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 852, male = 853},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>The warm and cosy cloak of the Winter Warden outfit will keep you warm in every situation. Best thing, it is not only comfortable but fashionable as well. You will be the envy of any snow queen or king, guaranteed!</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Retro_Citizen_Male.png",
                    "Outfit_Retro_Citizen_Female.png"
                },
                name = "Retro Citizen",
                price = 870 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 975, male = 974},
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n\n<i>Do you still remember your first stroll through the streets of Thais? For old times' sake, walk the paths of Nostalgia as a Retro Citizen!</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Retro_Hunter_Male.png",
                    "Outfit_Retro_Hunter_Female.png"
                },
                name = "Retro Hunter",
                price = 870 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 973, male = 972},
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n\n<i>Whenever you pick up your bow and spears, you walk down memory lane and think of your early days? Treat yourself with the fashionable Retro Hunter outfit and hunt some good old monsters from your childhood.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Retro_Knight_Male.png",
                    "Outfit_Retro_Knight_Female.png"
                },
                name = "Retro Knight",
                price = 870 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 971, male = 970},
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n\n<i>Who needs a fancy looking sword with bling-bling and ornaments? Back in the days, we survived without such unnecessary accessories! Time to show those younkers what a Retro Knight is made of.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Retro_Mage_Male.png", "Outfit_Retro_Mage_Female.png"
                },
                name = "Retro Wizzard",
                price = 870 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 969, male = 968},
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n\n<i>Dress up as a Retro Mage and you will always cut a fine figure on the battleground while eliminating your enemies with your magical powers the old-fashioned way.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Retro_Nobleman_Male.png",
                    "Outfit_Retro_Nobleman_Female.png"
                },
                name = "Retro Noblewoman",
                price = 870 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 967, male = 966},
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n\n<i>King Tibianus has invited you to a summer ball and you have nothing to wear for this special event? Do not worry, the Retro Noble(wo)man outfit makes you a real eye catcher on every festive occasion.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Retro_Summoner_Male.png",
                    "Outfit_Retro_Summoner_Female.png"
                },
                name = "Retro Summoner",
                price = 870 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 965, male = 964},
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n\n<i>While the Retro Mage usually throws runes and mighty spells directly at the enemies, the Retro Summoner outfit might be the better choice for Tibians that prefer to send mighty summons to the battlefield to keep their enemies at distance.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Retro_Warrior_Male.png",
                    "Outfit_Retro_Warrior_Female.png"
                },
                name = "Retro Warrior",
                price = 870 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 963, male = 962},
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n\n<i>You are fearless and strong as a behemoth but have problems finding the right outfit for your adventures? The Retro Warrior outfit is a must-have for all fashion-conscious old-school Tibians out there.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Trailblazer_Male_Addon_3.png",
                    "Outfit_Trailblazer_Female_Addon_3.png"
                },
                name = "Full Trailblazer Outfit",
                price = 600 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 1293, male = 1292},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n\n<i>The Trailblazer is on a mission of enlightenment and carries the flame of wisdom near and far. The everlasting shine brightens the hearts and minds of all creatures its rays touch, bringing light even to the darkest corners of the world as a beacon of insight and knowledge.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT
            }, {
                icons = {
                    "Outfit_Jouster_Male_Addon_3.png",
                    "Outfit_Jouster_Female_Addon_3.png"
                },
                name = "Full Jouster Outfit",
                price = 870 - GAMESTORE_OUTFIT_DISCOUNT,
                sexId = {female = 1332, male = 1331},
                addon = 3,
                description = "{character}\n{info} colours can be changed using the Outfit dialog\n\n<i>The Jouster is all geared up for a tournament, ready to partake in festive activities involving friendly competition to prove their chivalry. However, being well-armoured, they are also a force to be reckoned with on the battlefield, especially with a trusty steed at their service.</i>",
                type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
                home = true
            }
        }
    }, { -- House 
        icons = {"Category_HouseTools.png"},
        name = "Houses",
        rookgaard = true,
        subclasses = {
            "Decorations I", "Decorations II", "Decorations III", "Furniture",
            "Upgrades", "Hirelings", "Hirelings Dresses"
        }
    }, { -- Decorations I
        icons = {"Category_HouseTools.pn"},
        name = "Decorations I",
        parent = "Houses",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"Alchemistic_Bookstand.png"},
                name = "Alchemistic Bookstand",
                price = 100,
                itemtype = 32028,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Alchemistic_Cupboard.png"},
                name = "Alchemistic Cupboard",
                price = 50,
                itemtype = 32038,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Alchemistic_Scales.png"},
                name = "Alchemistic Scales",
                price = 120,
                itemtype = 32032,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"All-Seeing_Tapestry.png"},
                name = "All-Seeing Tapestry",
                price = 60,
                itemtype = 26106,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Anglerfish_Lamp.png"},
                name = "Anglerfish Lamp",
                price = 120,
                itemtype = 32259,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Arrival_at_Thais_Painting.png"},
                name = "Arrival The Thais Paint",
                price = 50,
                itemtype = 32046,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rolled-up_Azure_Carpet.png"},
                name = "Azure Carpet",
                price = 35,
                itemtype = 26366,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Baby_Dragon.png"},
                name = "Baby Dragon",
                price = 250,
                itemtype = 26098,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Baby_Polar_Bear.png"},
                name = "Baby Polar Bear",
                price = 250,
                itemtype = 37625,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Baby_Rotworm.png"},
                name = "Baby Rotworm",
                price = 150,
                itemtype = 32390,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Baby_Unicorn.png"},
                name = "Baby Unicorn",
                price = 250,
                itemtype = 36538,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rolled-up_Bamboo_Mat.png"},
                name = "Bamboo Mat",
                price = 25,
                itemtype = 26089,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Barrel_&_Anchor_Lamp.png"},
                name = "Barrel & Anchor Lamp",
                price = 80,
                itemtype = 36772,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Bath_Tub.png"},
                name = "Bath Tub",
                price = 250,
                itemtype = 29312,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Bellflower.png"},
                name = "Bellflower",
                price = 50,
                itemtype = 32396,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Bitter-Smack_Leaf.png"},
                name = "Bitter-Smack Leaf",
                price = 50,
                itemtype = 27893,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Blooming_Cactus.png"},
                name = "Blooming Cactus",
                price = 50,
                itemtype = 27892,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Blue_Round_Cushion.png"},
                name = "Blue Round Cushion",
                price = 50,
                itemtype = 36057,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Blue_Square_Cushion.png"},
                name = "Blue Square Cushion",
                price = 50,
                itemtype = 36054,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Brocade_Tapestry.png"},
                name = "Brocade Tapestry",
                price = 50,
                itemtype = 26381,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Carnivorous_Plant.png"},
                name = "Carnivorous Plant",
                price = 50,
                itemtype = 33417,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Cat_in_a_Basket.png"},
                name = "Cat in a Basket",
                price = 150,
                itemtype = 26107,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Chameleon.png"},
                name = "Chamaleon",
                price = 250,
                itemtype = 27889,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Chest_of_Abundance.png"},
                name = "Chest of Abundance",
                price = 120,
                itemtype = 33516,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rolled-up_Colourful_Carpet.png"},
                name = "Colourful Carpet",
                price = 35,
                itemtype = 27085,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rolled-up_Crested_Carpet.png"},
                name = "Crested Carpet",
                price = 25,
                itemtype = 29388,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rolled-up_Crimson_Carpet.png"},
                name = "Crimson Carpet",
                price = 35,
                itemtype = 26363,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Crystal_Lamp.png"},
                name = "Crystal Lamp",
                price = 80,
                itemtype = 36031,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Curly_Hortensis_Lamp.png"},
                name = "Curly Hortensis Lamp",
                price = 120,
                itemtype = 36530,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Dark_Parquet.png"},
                name = "Dark Parquet",
                price = 30,
                itemtype = 26369,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rolled-up_Decorated_Carpet.png"},
                name = "Decorated Carpet",
                price = 35,
                itemtype = 29390,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Demon_Pet.png"},
                name = "Demon Pet",
                price = 250,
                itemtype = 29409,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Demon_Skull.png"},
                name = "Demon Skull",
                price = 50,
                itemtype = 36047,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rolled-up_Diamond_Carpet.png"},
                name = "Diamond Carpet",
                price = 25,
                itemtype = 27088,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Dog_House.png"},
                name = "Dog House",
                price = 150,
                itemtype = 26353,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Dungeon_Scene_Painting.png"},
                name = "Dungeon Scene Painting",
                price = 100,
                itemtype = 32045,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rolled-up_Emerald_Carpet.png"},
                name = "Emerald Carpet",
                price = 35,
                itemtype = 26367,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Fennec.png"},
                name = "Fennec",
                price = 150,
                itemtype = 32394,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{useicon} to trigger an animation feed it with meat, ham, dragon ham, haunch of a boar, roasted meat or bug meat\n{info} can be fed once every 65 seconds\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Ferumbras_Bust.png"},
                name = "Ferumbras Dust",
                price = 70,
                itemtype = 32040,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{backtoinbox}\n{useicon} house owner can use it to display a duplicate of an owned Ferumbras' Hat on this bust - also works if the character has already turned Ferumbras' hat in to earn the outfit addon",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Ferumbras_Portrait.png"},
                name = "Ferumbras Portrait",
                price = 100,
                itemtype = 32048,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Festive_Filled_Shoes.png"},
                name = "Festive Filled Shoes",
                price = 50,
                itemtype = 35021,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Festive_Fireplace.png"},
                name = "Festive Fireplace",
                price = 180,
                itemtype = 35027,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Festive_Pile_of_Presents.png"},
                name = "Festive Pile of Presents",
                price = 50,
                itemtype = 35039,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Festive_Pyramid.png"},
                name = "Festive Pyramid",
                price = 120,
                itemtype = 35042,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Festive_Rocking_Chair.png"},
                name = "Festive Rocking Chair",
                price = 50,
                itemtype = 35035,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Festive_Sack_of_Presents.png"},
                name = "Festive Sack of Presents",
                price = 50,
                itemtype = 35041,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Festive_Sleigh.png"},
                name = "Festive Sleigh",
                price = 50,
                itemtype = 35038,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Festive_Table.png"},
                name = "Festive Table",
                price = 100,
                itemtype = 35023,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Festive_Tree.png"},
                name = "Festive Tree",
                price = 180,
                itemtype = 35031,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Fish_in_a_Tank.png"},
                name = "Fish Tank",
                price = 180,
                itemtype = 26347,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }
        }
    }, { -- Decorations II
        icons = {"Category_HouseDecorations.png"},
        name = "Decorations II",
        parent = "Houses",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"Rolled-up_Flowery_Carpet.png"},
                name = "Flowery Carpet",
                price = 35,
                itemtype = 27084,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Fluorescent_Fungi.png"},
                name = "Fluorescent Fungi",
                price = 60,
                itemtype = 33491,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Forget-Me-Not.png"},
                name = "Forget-Me-Not",
                price = 50,
                itemtype = 32397,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rolled-up_Fur_Carpet.png"},
                name = "Fur Carpet",
                price = 30,
                itemtype = 27087,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Gloomy_Poisonous_Fungi.png"},
                name = "Gloomy Poisonous Fungi",
                price = 60,
                itemtype = 33497,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Glowing_Sulphur_Fungi.png"},
                name = "Glowing Sulphur Fungi",
                price = 60,
                itemtype = 33495,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Golden_Demon_Skull.png"},
                name = "Golden Demon Skull",
                price = 80,
                itemtype = 36046,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                description = "Buy an incredible Golden Dragon Tapestry to decorate your home.",
                icons = {"Golden_Dragon_Tapestry.png"},
                name = "Golden Dragon Tapestry",
                price = 70,
                itemtype = 26379,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{info} drag the unwrapped tapestry to a wall to hang it up\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Golden_Minotaur_Skull.png"},
                name = "Golden Minotaur Skull",
                price = 100,
                itemtype = 36044,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Green_Round_Cushion.png"},
                name = "Green Round Cushion",
                price = 50,
                itemtype = 36056,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Green_Square_Cushion.png"},
                name = "Green Square Cushion",
                price = 50,
                itemtype = 36053,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Hamster_in_a_Wheel.png"},
                name = "Hamster in a Wheel",
                price = 180,
                itemtype = 26100,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Baby_Hedgehog.png"},
                name = "Hedgehog",
                price = 150,
                itemtype = 36515,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Hrodmir_Weapons_Rack.png"},
                name = "Hrodmir Weapons Rack",
                price = 90,
                itemtype = 29317,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Idol_Lamp.png"},
                name = "Idol Lamp",
                price = 80,
                itemtype = 36049,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Incomprehensible_Riches.png"},
                name = "Incomprehensible Riches",
                price = 90,
                itemtype = 33515,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"King_Tibianus_Bust.png"},
                name = "King Tibianus Bust",
                price = 50,
                itemtype = 32049,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Light_of_Change.png"},
                name = "Light of Change",
                price = 180,
                itemtype = 32023,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Light_Parquet.png"},
                name = "Light Parquet",
                price = 30,
                itemtype = 26368,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Lit_Predator_Lamp.png"},
                name = "Lit Predator Lamp",
                price = 60,
                itemtype = 26092,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Lit_Protectress_Lamp.png"},
                name = "Lit Protectress Lamp",
                price = 90,
                itemtype = 26096,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Lit_Skull_Lamp.png"},
                name = "Lit Skull Lamp",
                price = 90,
                itemtype = 27103,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Little_Big_Flower_Lamp.png"},
                name = "Little Big Flower Lamp",
                price = 80,
                itemtype = 36532,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Lordly_Tapestry.png"},
                name = "Lordly Tapestry",
                price = 50,
                itemtype = 26104,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Luminescent_Fungi.png"},
                name = "Luminescent Fungi",
                price = 60,
                itemtype = 33493,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Marble_Floor.png"},
                name = "Marble Floor",
                price = 30,
                itemtype = 26376,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Menacing_Tapestry.png"},
                name = "Menacing Tapestry",
                price = 70,
                itemtype = 26105,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Mermaid_Figure_Head.png"},
                name = "Mermaid Figure Head",
                price = 120,
                itemtype = 26105,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Minotaur_Skull.png"},
                name = "Minotaur Skull",
                price = 70,
                itemtype = 36045,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Model_Ship_Lamp.png"},
                name = "Model Ship Lamp",
                price = 80,
                itemtype = 36777,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Monkey.png"},
                name = "Monkey",
                price = 180,
                itemtype = 36790,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rolled-up_Mystic_Carpet.png"},
                name = "Mystic Carpet",
                price = 35,
                itemtype = 29354,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rolled-up_Night_Sky_Carpet.png"},
                name = "Night Sky Carpet",
                price = 25,
                itemtype = 27090,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Painting_of_Tibiasula.png"},
                name = "Painting of Tibiasula",
                price = 250,
                itemtype = 33518,
                itemtype = 33519,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Parrot.png"},
                name = "Parrot",
                price = 180,
                itemtype = 27100,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rolled-up_Patterned_Carpet.png"},
                name = "Patterned Carpet",
                price = 30,
                itemtype = 27089,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Pile_of_Alchemistic_Books.png"},
                name = "Pile of Alchemistic Books",
                price = 120,
                itemtype = 32036,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Pink_Roses.png"},
                name = "Pink Roses",
                price = 50,
                itemtype = 27894,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Pirate_Flag.png"},
                name = "Pirate Flag",
                price = 50,
                itemtype = 36780,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Pirate_Ship_Ballista.png"},
                name = "Pirate Ship Ballista",
                price = 120,
                itemtype = 36768,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Pirate_Skeleton_Cage.png"},
                name = "Pirate Skeleton Cage",
                price = 120,
                itemtype = 36782,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Pirate_Treasure_Chest.png"},
                name = "Pirate Treasure Chest",
                price = 120,
                itemtype = 36771,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Pirate_Treasure_Map.png"},
                name = "Pirate Treasure Map",
                price = 50,
                itemtype = 36781,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Queen_Eloise_Bust.png"},
                name = "Queen Eloise Bust",
                price = 50,
                itemtype = 32043,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Red_Geranium.png"},
                name = "Red Geranium",
                price = 50,
                itemtype = 32398,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Red_Roses.png"},
                name = "Red Roses",
                price = 50,
                itemtype = 27895,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Exalted_Sarcophagus.png"},
                name = "Sarcophagus",
                price = 120,
                itemtype = 36518,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rolled-up_Shaggy_Carpet.png"},
                name = "Shaggy Carpet",
                price = 30,
                itemtype = 29352,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Ship's_Wheel.png"},
                name = "Ship's Wheel",
                price = 50,
                itemtype = 36783,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                description = "Buy an incredible Star Carpet to decorate your home.",
                icons = {"Rolled-up_Star_Carpet.png"},
                name = "Star Carpet",
                price = 25,
                itemtype = 27091,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }
        }
    }, { -- Decorations III
        icons = {"Category_HouseDecorations.png"},
        name = "Decorations III",
        parent = "Houses",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"Piled-up_Stone_Tiles.png"},
                name = "Stone Tiles",
                price = 25,
                itemtype = 29357,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rolled-up_Striped_Carpet .png"},
                name = "Striped Carpet",
                price = 30,
                itemtype = 27086,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Stuffed_Bear_Display.png"},
                name = "Stuffed Bear Display",
                price = 90,
                itemtype = 33499,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Stuffed_Teddy_Display.png"},
                name = "Stuffed Teddy Display",
                price = 50,
                itemtype = 33501,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Sulphur_Blossom_Lamp.png"},
                name = "Sulphur Blossom Lamp",
                price = 80,
                itemtype = 36558,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Sword_Tapestry.png"},
                name = "Sword Tapestry",
                price = 60,
                itemtype = 26380,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Terrarium_Snake.png"},
                name = "Terrarium Snake",
                price = 180,
                itemtype = 29407,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Spider_in_a_Terrarium.png"},
                name = "Terrarium Spider",
                price = 180,
                itemtype = 29314,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Tibia_Streets_Painting.png"},
                name = "Tibia Streets Painting",
                price = 100,
                itemtype = 32047,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Torch_of_Change.png"},
                name = "Torch of Change",
                price = 120,
                itemtype = 33175,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Vengothic_Lamp.png"},
                name = "Vengothic Lamp",
                price = 180,
                itemtype = 27886,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Venorean_Table_Clock.png"},
                name = "Venorean Table Clock",
                price = 120,
                itemtype = 29348,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rolled-up_Verdant_Carpet.png"},
                name = "Verdant Carpet",
                price = 30,
                itemtype = 29350,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Violet_Round_Cushion.png"},
                name = "Violet Round Cushion",
                price = 50,
                itemtype = 36055,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Violet_Square_Cushion.png"},
                name = "Violet Square Cushion",
                price = 50,
                itemtype = 36052,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rolled-up_Wheat_Carpet.png"},
                name = "Wheat Carpet",
                price = 30,
                itemtype = 29387,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rolled-up_White_Fur_Carpet.png"},
                name = "White Fur Carpet",
                price = 30,
                itemtype = 26088,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"White_Shark_Trophy.png"},
                name = "White Shark Trophy",
                price = 80,
                itemtype = 36786,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rolled-up_Wooden_Planks.png"},
                name = "Wooden Planks",
                price = 25,
                itemtype = 29359,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rolled-up_Yalaharian_Carpet.png"},
                name = "Yalaharian Carpet",
                price = 35,
                itemtype = 26087,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Yellow_Roses.png"},
                name = "Yellow Roses",
                price = 50,
                itemtype = 27896,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }
        }
    }, { -- Furniture
        icons = {"Category_HouseFurniture.png"},
        name = "Furniture",
        parent = "Houses",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"Alchemistic_Cabinet.png"},
                name = "Alchemistic Cabinet",
                price = 100,
                itemtype = 32020,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{useicon} use it to open up some storage space\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Alchemistic_Chair.png"},
                name = "Alchemistic Chair",
                price = 50,
                itemtype = 32018,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Alchemistic_Table.png"},
                name = "Alchemistic Table",
                price = 80,
                itemtype = 32021,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{useicon} use it to open up some storage space\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Comfy_Cabinet.png"},
                name = "Comfy Cabinet",
                price = 100,
                itemtype = 33513,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{useicon} use it to open up some storage space\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Comfy_Chair.png"},
                name = "Comfy Chair",
                price = 70,
                itemtype = 33505,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{useicon} use it to open up some storage space\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Comfy_Chest.png"},
                name = "Comfy Chest",
                price = 60,
                itemtype = 33509,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{useicon} use it to open up some storage space\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Comfy_Table.png"},
                name = "Comfy Table",
                price = 60,
                itemtype = 33507,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{useicon} use it to open up some storage space\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Dwarven_Stone_Cabinet.png"},
                name = "Dwarven Stone Cabinet",
                price = 100,
                itemtype = 36027,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{useicon} use it to open up some storage space\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Dwarven_Stone_Chair.png"},
                name = "Dwarven Stone Chair",
                price = 50,
                itemtype = 36020,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{useicon} use it to open up some storage space\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Dwarven_Stone_Chest.png"},
                name = "Dwarven Stone Chest",
                price = 80,
                itemtype = 36022,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{useicon} use it to open up some storage space\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Dwarven_Stone_Table.png"},
                name = "Dwarven Stone Table",
                price = 50,
                itemtype = 36026,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{useicon} use it to open up some storage space\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Ferocious_Cabinet.png"},
                name = "Ferocious Cabinet",
                price = 110,
                itemtype = 26077,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Ferocious_Chair.png"},
                name = "Ferocious Chair",
                price = 50,
                itemtype = 26065,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Ferocious_Table.png"},
                name = "Ferocious Table",
                price = 50,
                itemtype = 26070,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Ferocious_Trunk.png"},
                name = "Ferocious Trunk",
                price = 80,
                itemtype = 26079,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Hrodmir_Chair.png"},
                name = "Hrodmir Chair",
                price = 50,
                itemtype = 36528,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Hrodmir_Chest.png"},
                name = "Hrodmir Chest",
                price = 80,
                itemtype = 36522,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Hrodmir_Cupboard.png"},
                name = "Hrodmir Cupboard",
                price = 100,
                itemtype = 36540,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Hrodmir_Table.png"},
                name = "Hrodmir Table",
                price = 50,
                itemtype = 36514,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Magnificent_Cabinet.png"},
                name = "Magnificent Cabinet",
                price = 100,
                itemtype = 26075,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Magnificent_Chair.png"},
                name = "Magnificent Chair",
                price = 60,
                itemtype = 26061,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Magnificent_Table.png"},
                name = "Magnificent Table",
                price = 60,
                itemtype = 26074,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Magnificent_Trunk.png"},
                name = "Magnificent Trunk",
                price = 70,
                itemtype = 26083,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Ornate_Cabinet.png"},
                name = "Ornate Cabinet",
                price = 100,
                itemtype = 29398,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Ornate_Chair.png"},
                name = "Ornate Chair",
                price = 50,
                itemtype = 29394,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Ornate_Chest.png"},
                name = "Ornate Chest",
                price = 80,
                itemtype = 29401,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Ornate_Table.png"},
                name = "Ornate Table",
                price = 50,
                itemtype = 29397,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Round_Side_Table.png"},
                name = "Round Side Table",
                price = 50,
                itemtype = 36043,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rustic_Cabinet.png"},
                name = "Rustic Cabinet",
                price = 100,
                itemtype = 26356,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rustic_Chair.png"},
                name = "Rustic Chair",
                price = 50,
                itemtype = 26351,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rustic_Table.png"},
                name = "Rustic Table",
                price = 50,
                itemtype = 26354,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Rustic_Trunk.png"},
                name = "Rustic Trunk",
                price = 80,
                itemtype = 26358,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Skeletal_Cabinet.png"},
                name = "Skeletal Cabinet",
                price = 100,
                itemtype = 33415,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Skeletal_Chair.png"},
                name = "Skeletal Chair",
                price = 50,
                itemtype = 32260,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Skeletal_Chest.png"},
                name = "Skeletal Chest",
                price = 80,
                itemtype = 32266,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Skeletal_Table.png"},
                name = "Skeletal Table",
                price = 50,
                itemtype = 32264,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Square_Side_Table.png"},
                name = "Square Side Table",
                price = 50,
                itemtype = 29397,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Vengothic_Cabinet.png"},
                name = "Vengothic Cabinet",
                price = 100,
                itemtype = 27903,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Vengothic_Chair.png"},
                name = "Vengothic Chair",
                price = 50,
                itemtype = 27899,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Vengothic_Chest.png"},
                name = "Vengothic Chest",
                price = 80,
                itemtype = 27905,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Vengothic_Table.png"},
                name = "Vengothic Table",
                price = 50,
                itemtype = 27901,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Verdant_Cabinet.png"},
                name = "Verdant Cabinet",
                price = 100,
                itemtype = 29341,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Verdant_Chair.png"},
                name = "Verdant Chair",
                price = 50,
                itemtype = 29339,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Verdant_Table.png"},
                name = "Verdant Table",
                price = 80,
                itemtype = 29347,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Verdant_Trunk.png"},
                name = "Verdant Trunk",
                price = 50,
                itemtype = 29343,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Wooden_Bookcase.png"},
                name = "Wooden Bookcase",
                price = 50,
                itemtype = 36029,
                count = 1,
                description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }
        }
    }, { -- Upgrades 
        icons = {"Category_HouseUpgrades.png"},
        name = "Upgrades",
        parent = "Houses",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"Reward_Shrine.png"},
                name = "Daily Reward Shrine",
                price = 150,
                itemtype = 29022,
                count = 1,
                description = "<i>Pick up your daily reward comfortably in your own four walls!</i>\n\n{house}\n{box}\n{storeinbox}\n{usablebyall}\n{useicon} use it to open the reward wall\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Demon_Exercise_Dummy.png"},
                name = "Demon Exercise Dummy",
                price = 250,
                itemtype = 32145,
                count = 1,
                description = "<i>Exercise dummy works like normal train without boost!</i>\n\n{house}\n{box}\n{storeinbox}\n{usablebyall}\n{info} can only be used by one character at a time\n{useicon} use one of the exercise weapons on this dummy\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Ferumbras_Exercise_Dummy.png"},
                name = "Ferumbras Exercise Dummy",
                price = 250,
                itemtype = 32143,
                count = 1,
                description = "<i>Exercise dummy works like normal train without boost!!</i>\n\n{house}\n{box}\n{storeinbox}\n{usablebyall}\n{info} can only be used by one character at a time\n{useicon} use one of the exercise weapons on this dummy\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Gilded_Imbuing_Shrine.png"},
                name = "Gilded Imbuing Shrine",
                price = 200,
                itemtype = 27851,
                count = 1,
                description = "<i>Enhance your equipment comfortably in your own four walls!</i>\n\n{house}\n{box}\n{storeinbox}\n{usablebyall}\n{useicon} use it with an imbuable item to open the imbuing dialog\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Imbuing_Shrine.png"},
                name = "Imbuing Shrine",
                price = 150,
                itemtype = 27843,
                count = 1,
                description = "<i>Enhance your equipment comfortably in your own four walls!</i>\n\n{house}\n{box}\n{storeinbox}\n{usablebyall}\n{useicon} use it with an imbuable item to open the imbuing dialog\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Mailbox.png"},
                name = "Mailbox",
                price = 150,
                itemtype = 26055,
                count = 1,
                description = "<i>Send your letters and parcels right from your own home!</i>\n\n{house}\n{box}\n{storeinbox}\n{usablebyall}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Monk_Exercise_Dummy.png"},
                name = "Monk Exercise Dummy",
                price = 250,
                itemtype = 32147,
                count = 1,
                description = "<i>Exercise dummy works like normal train without boost!</i>\n\n{house}\n{box}\n{storeinbox}\n{usablebyall}\n{info} can only be used by one character at a time\n- use one of the exercise weapons on this dummy\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Ornate_Mailbox.png"},
                name = "Ornate Mailbox",
                price = 200,
                itemtype = 26057,
                count = 1,
                description = "<i>Send your letters and parcels right from your own home!</i>\n\n{house}\n{box}\n{storeinbox}\n{usablebyall}\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }, {
                icons = {"Shiny_Reward_Shrine.png"},
                name = "Shiny Daily Reward Shrine",
                price = 200,
                itemtype = 29024,
                count = 1,
                description = "<i>Pick up your daily reward comfortably in your own four walls!</i>\n\n{house}\n{box}\n{storeinbox}\n{usablebyall}\n{useicon} use it to open the reward wall\n{backtoinbox}",
                type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
            }
        }
    }, { -- Hirelings
        icons = {"Category_HouseTools_NPCApprenticeships.png"},
        name = "Hirelings",
        parent = "Houses",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"Hireling_Male.png"},
                name = "Hireling Apprentice",
                price = 150,
                id = 28799,
                count = 1,
                number = 1,
                sexId = {female = 1107, male = 1108},
                description = "Get your very own hireling to serve you and your guests in your own four walls!\n\n{house} can only be unwrapped in a house owned by the purchasing character\n{boxicon} comes in a magic lamp which can only be used by purchasing character\n{storeinbox}\n{usablebyallicon} can be used by all characters that have access to the house\n{useicon} use the magic lamp to summon your hireling\n{backtoinbox}\n{info} maximum amount that can be owned by character: 10",
                type = GameStore.OfferTypes.OFFER_TYPE_HIRELING
            }, {
                icons = {"Hireling_Male.png"},
                name = "Hireling Name Change",
                price = 250,
                id = 28797,
                count = 1,
                number = 1,
                description = "{info} Change the name of one of your hirelings",
                type = GameStore.OfferTypes.OFFER_TYPE_HIRELING_NAMECHANGE
            }, {
                icons = {"Hireling_Male.png"},
                name = "Hireling Sex Change",
                price = 120,
                id = 28796,
                count = 1,
                number = 1,
                description = "{info} Change the sex of one of your hirelings",
                type = GameStore.OfferTypes.OFFER_TYPE_HIRELING_SEXCHANGE
            }, {
                icons = {"Hireling_Cook.png"},
                name = "Hireling Cook",
                price = 900,
                id = HIRELING_STORAGE.SKILL + HIRELING_SKILLS.COOKING,
                count = 1,
                number = 1,
                description = "{info} Give your hirelings the ability to cook exclusive status enhancement and instant recovery meals!",
                type = GameStore.OfferTypes.OFFER_TYPE_HIRELING_SKILL
            }, {
                icons = {"Hireling_Trader.png"},
                name = "Hireling Trader",
                price = 250,
                id = HIRELING_STORAGE.SKILL + HIRELING_SKILLS.TRADER,
                count = 1,
                number = 1,
                description = "{info} Give your hirelings the ability of trading several types of items, including equipment, tools, potions, runes, wands and rods.",
                type = GameStore.OfferTypes.OFFER_TYPE_HIRELING_SKILL
            }, {
                icons = {"Hireling_Steward.png"},
                name = "Hireling Steward",
                price = 250,
                id = HIRELING_STORAGE.SKILL + HIRELING_SKILLS.STEWARD,
                count = 1,
                number = 1,
                description = "{info} Give your hirelings the ability to access and manage your stash at the confort of your from home",
                type = GameStore.OfferTypes.OFFER_TYPE_HIRELING_SKILL
            }, {
                icons = {"Hireling_Banker.png"},
                name = "Hireling Banker",
                price = 250,
                id = HIRELING_STORAGE.SKILL + HIRELING_SKILLS.BANKER,
                count = 1,
                number = 1,
                description = "{info} Give your hirelings the ability of managing your banking business.",
                type = GameStore.OfferTypes.OFFER_TYPE_HIRELING_SKILL
            }
        }
    }, { -- Hireling Dresses
        icons = {"Category_HouseTools_NPCDresses.png"},
        name = "Hireling Dresses",
        parent = "Houses",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"Hireling_Banker.png"},
                name = "Banker Dress",
                price = 250,
                id = HIRELING_STORAGE.OUTFIT + HIRELING_OUTFITS.BANKER,
                count = 1,
                number = 1,
                description = "{info} can only be used for hirelings of the purchasing character\n{activated}\n{info} the purchased dress can be used by all hirelings, however, how many hirelings can wear this outfit at the same time depends on the number of dresses you own\n{info} colours can be changed using the Outfit dialog\n{info} number that can be purchased depends on the amount of hirelings you own",
                type = GameStore.OfferTypes.OFFER_TYPE_HIRELING_OUTFIT
            }, {
                icons = {"Hireling_Trader.png"},
                name = "Trader Dress",
                price = 250,
                id = HIRELING_STORAGE.OUTFIT + HIRELING_OUTFITS.TRADER,
                count = 1,
                number = 1,
                description = "{info} can only be used for hirelings of the purchasing character\n{activated}\n{info} the purchased dress can be used by all hirelings, however, how many hirelings can wear this outfit at the same time depends on the number of dresses you own\n{info} colours can be changed using the Outfit dialog\n{info} number that can be purchased depends on the amount of hirelings you own",
                type = GameStore.OfferTypes.OFFER_TYPE_HIRELING_OUTFIT
            }, {
                icons = {"Hireling_Cook.png"},
                name = "Cook Dress",
                price = 250,
                id = HIRELING_STORAGE.OUTFIT + HIRELING_OUTFITS.COOKING,
                count = 1,
                number = 1,
                description = "{info} can only be used for hirelings of the purchasing character\n{activated}\n{info} the purchased dress can be used by all hirelings, however, how many hirelings can wear this outfit at the same time depends on the number of dresses you own\n{info} colours can be changed using the Outfit dialog\n{info} number that can be purchased depends on the amount of hirelings you own",
                type = GameStore.OfferTypes.OFFER_TYPE_HIRELING_OUTFIT
            }, {
                icons = {"Hireling_Steward.png"},
                name = "Steward Dress",
                price = 250,
                id = HIRELING_STORAGE.OUTFIT + HIRELING_OUTFITS.STEWARD,
                count = 1,
                number = 1,
                description = "{info} can only be used for hirelings of the purchasing character\n{activated}\n{info} the purchased dress can be used by all hirelings, however, how many hirelings can wear this outfit at the same time depends on the number of dresses you own\n{info} colours can be changed using the Outfit dialog\n{info} number that can be purchased depends on the amount of hirelings you own",
                type = GameStore.OfferTypes.OFFER_TYPE_HIRELING_OUTFIT
            }, {
                icons = {"Hireling_Servant.png"},
                name = "Servant Dress",
                price = 250,
                id = HIRELING_STORAGE.OUTFIT + HIRELING_OUTFITS.SERVANT,
                count = 1,
                number = 1,
                description = "{info} can only be used for hirelings of the purchasing character\n{activated}\n{info} the purchased dress can be used by all hirelings, however, how many hirelings can wear this outfit at the same time depends on the number of dresses you own\n{info} colours can be changed using the Outfit dialog\n{info} number that can be purchased depends on the amount of hirelings you own",
                type = GameStore.OfferTypes.OFFER_TYPE_HIRELING_OUTFIT
            }, {
                icons = {"Hireling_Hydra.png"},
                name = "Hydra Dress",
                price = 500,
                id = HIRELING_STORAGE.OUTFIT + HIRELING_OUTFITS.HYDRA,
                count = 1,
                number = 1,
                description = "{info} can only be used for hirelings of the purchasing character\n{activated}\n{info} the purchased dress can be used by all hirelings, however, how many hirelings can wear this outfit at the same time depends on the number of dresses you own\n{info} number that can be purchased depends on the amount of hirelings you own",
                type = GameStore.OfferTypes.OFFER_TYPE_HIRELING_OUTFIT
            }, {
                icons = {"Hireling_Ferumbras.png"},
                name = "Ferumbras Dress",
                price = 600,
                id = HIRELING_STORAGE.OUTFIT + HIRELING_OUTFITS.FERUMBRAS,
                count = 1,
                number = 1,
                description = "{info} can only be used for hirelings of the purchasing character\n{activated}\n{info} the purchased dress can be used by all hirelings, however, how many hirelings can wear this outfit at the same time depends on the number of dresses you own\n{info} number that can be purchased depends on the amount of hirelings you own",
                type = GameStore.OfferTypes.OFFER_TYPE_HIRELING_OUTFIT
            }, {
                icons = {"Hireling_Bonelord.png"},
                name = "Bonelord Dress",
                price = 500,
                id = HIRELING_STORAGE.OUTFIT + HIRELING_OUTFITS.BONELORD,
                count = 1,
                number = 1,
                description = "{info} can only be used for hirelings of the purchasing character\n{activated}\n{info} the purchased dress can be used by all hirelings, however, how many hirelings can wear this outfit at the same time depends on the number of dresses you own\n{info} number that can be purchased depends on the amount of hirelings you own",
                type = GameStore.OfferTypes.OFFER_TYPE_HIRELING_OUTFIT
            }, {
                icons = {"Hireling_Dragon.png"},
                name = "Dragon Dress",
                price = 500,
                id = HIRELING_STORAGE.OUTFIT + HIRELING_OUTFITS.DRAGON,
                count = 1,
                number = 1,
                description = "{info} can only be used for hirelings of the purchasing character\n{activated}\n{info} the purchased dress can be used by all hirelings, however, how many hirelings can wear this outfit at the same time depends on the number of dresses you own\n{info} number that can be purchased depends on the amount of hirelings you own",
                type = GameStore.OfferTypes.OFFER_TYPE_HIRELING_OUTFIT
            }
        }
    }, { -- Boost
        icons = {"Category_Boosts.png"},
        name = "Boosts",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"XP_Boost.png"},
                name = "XP Boost",
                price = 100,
                id = 65010,
                description = "<i>Purchase a boost that increases the experience points your character gains from hunting by 50%!</i>\n\n{character}\n{info} lasts for 1 hour hunting time\n{info} paused if stamina falls under 14 hours\n{info} can be purchased up to 5 times between 2 server saves\n{info} price increases with every purchase\n{info} cannot be purchased if an XP boost is already active",
                type = GameStore.OfferTypes.OFFER_TYPE_EXPBOOST
            }
        }
    }, { -- Extras
        icons = {"Category_ExtraServices.png"},
        name = "Extras",
        rookgaard = true,
        subclasses = {"Extra Services", "Useful Things"}
    }, { -- Extras Services
        icons = {"Category_ExtraServices.png"},
        name = "Extra Services",
        parent = "Extras",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"Name_Change.png"},
                name = "Character Name Change",
                price = 250,
                id = 65002,
                description = "<i>Tired of your current character name? Purchase a new one!</i>\n\n{character}\n{info} relog required after purchase to finalise the name change",
                type = GameStore.OfferTypes.OFFER_TYPE_NAMECHANGE
            }, {
                icons = {"Sex_Change.png"},
                name = "Character Sex Change",
                price = 50,
                id = 65003,
                description = "<i>Turns your female character into a male one - or vice versa.</i>\n\n{character}\n{activated}\n{info} you will keep all outfits you have purchased or earned in quest",
                type = GameStore.OfferTypes.OFFER_TYPE_SEXCHANGE
            }
        }
    }, { -- Usefull Things 
        icons = {"Category_UsefulThings.png"},
        name = "Useful Things",
        parent = "Extras",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"Gold_Converter.png"},
                name = "Gold Converter",
                price = 2,
                itemtype = 26378,
                charges = 5000,
                description = "<i>Changes either a stack of 100 gold pieces into 1 platinum coin, or a stack of 100 platinum coins into 1 crystal coin!</i>\n\n{character}\n{storeinbox}\n{useicon} use it on a stack of 100 to change it to the superior currency\n{info} usable 5000 times a piece",
                type = GameStore.OfferTypes.OFFER_TYPE_CHARGES
            }, {
                icons = {"Gold_Pouch.png"},
                name = "Gold Pouch",
                price = 250,
                itemtype = 26377,
                count = 1,
                description = "<i>Carries as many gold, platinum or crystal coins as your capacity allows, however, no other items.</i>\n\n{character}\n{storeinbox}\n{once}\n{useicon} use it to open it\n{info} always placed on the first position of your Store inbox",
                type = GameStore.OfferTypes.OFFER_TYPE_POUNCH
            }, {
                icons = {"Instant_Reward_Access.png"},
                name = "Instant Reward Access",
                price = 100,
                id = 2,
                count = 1,
                description = "<i>No matter where you are in Tibia, claim your daily reward on the spot!</i>\n\n{character}\n{info} added to your reward wall\n{info} maximum amount that can be owned by character: 90",
                type = GameStore.OfferTypes.OFFER_TYPE_INSTANT_REWARD_ACCESS
            }, {
                icons = {"Charm_Expansion_Offer.png"},
                name = "Charm Expansion",
                price = 250,
                id = 65005,
                description = "<i>Assign as many of your unlocked Charms as you like and get a 25% discount whenever you are removing a Charm from a creature!</i>\n\n{character}\n{once}",
                type = GameStore.OfferTypes.OFFER_TYPE_CHARMS
            }, {
                icons = {"Magic_Gold_Converter.png"},
                name = "Magic Gold Converter",
                price = 3,
                itemtype = 32109,
                charges = 5000,
                description = "<i>Changes automatically either a stack of 100 gold pieces into 1 platinum coin, or a stack of 100 platinum coins into 1 crystal coin!</i>\n\n{character}\n{storeinbox}\n{useicon} use it to activate or deactivate the automatic conversion\n{info} converts all stacks of 100 gold or platinum in the inventory whenever it is activated\n{info} deactivated upon purchase\n{info} usable for 5000 conversions a piece",
                type = GameStore.OfferTypes.OFFER_TYPE_CHARGES
            }, {
                icons = {"Permanent_Prey_Slot.png"},
                name = "Permanent Prey Slot",
                price = 250,
                id = 65008,
                description = "<i>Get an additional prey slot to activate additional prey!</i>\n\n{character}\n{info} maximum amount that can be owned by character: 3\n{info} added directly to Prey dialog",
                type = GameStore.OfferTypes.OFFER_TYPE_PREYSLOT
            }, {
                icons = {"Prey_Bonus_Reroll.png"},
                name = "Prey Wildcard",
                price = 50,
                id = 1,
                count = 5,
                description = "<i>Use Prey Wildcards to reroll the bonus of an active prey, to lock your active prey or to select a prey of your choice.</i>\n\n{character}\n{info} added directly to Prey dialog\n{info} maximum amount that can be owned by character: 50",
                type = GameStore.OfferTypes.OFFER_TYPE_PREYBONUS
            }, {
                icons = {"Prey_Bonus_Reroll.png"},
                name = "Prey Wildcard x20",
                price = 200,
                count = 20,
                description = "<i>Use Prey Wildcards to reroll the bonus of an active prey, to lock your active prey or to select a prey of your choice.</i>\n\n{character}\n{info} added directly to Prey dialog\n{info} maximum amount that can be owned by character: 50",
                type = GameStore.OfferTypes.OFFER_TYPE_PREYBONUS
            }
        }
    }, { -- Razgard Items
        icons = {"Category_Tournament.png"},
        name = "Razgard Items",
        rookgaard = true,
        state = GameStore.States.STATE_NONE,
        offers = {
            {
                icons = {"Gold_Token.png"},
                name = "Gold Token",
                price = 175,
                itemtype = 25377,
                count = 50,
                description = "<i>Gold token package.</i>\n\n{info} can be exchanged with Yana for various weapons and for Creature Products that can be used to imbue them.",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Silver_Token.png"},
                name = "Silver Token",
                price = 175,
                itemtype = 25172,
                count = 100,
                description = "<i>Silver token package.</i>\n\n{info} can be exchanged with Cledwyn for various armors providing both a skill and a resistance bonus and also for the first and second addons of the Rift Warrior Outfits.",
                type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE
            }, {
                icons = {"Obsidian_Knife.png"},
                name = "Obsidian Knife",
                price = 50,
                itemtype = 5908,
                count = 1,
                description = "<i>Sharp and light, this is a useful tool for tanners, doctors and assassins.</i>\n\n{info} get different types of leather from the dead bodies\n{info} possible to carve Ice Sculptures",
                type = GameStore.OfferTypes.OFFER_TYPE_ITEM
            }, {
                icons = {"Blessed_Wooden_Stake.png"},
                name = "Blessed Wooden Stake",
                price = 50,
                itemtype = 5942,
                count = 1,
                description = "<i>Many mighty priests of Tibia have blessed this stake.</i>\n\n{info} can be used on slain Vampires in order to get Vampire Dust and on dead Demons to get Demon Dust.",
                type = GameStore.OfferTypes.OFFER_TYPE_ITEM
            }, {
                icons = {"Elvenhair_Rope.png"},
                name = "Elvenhair Rope",
                price = 5,
                itemtype = 7731,
                count = 1,
                description = "<i>It works the same as a regular Rope, but 12 oz lighter.</i>\n\n{info} special rope",
                type = GameStore.OfferTypes.OFFER_TYPE_ITEM
            }, {
                icons = {"Light_Shovel.png"},
                name = "Light Shovel",
                price = 1,
                itemtype = 5710,
                count = 1,
                description = "<i>Same purpose as regular Shovels, but 20 oz lighter.</i>\n\n{info} special shovel.",
                type = GameStore.OfferTypes.OFFER_TYPE_ITEM
            }, {
                icons = {"Zaoan_Chess_Box.png"},
                name = "Zaoan Chess Box",
                price = 50,
                itemtype = 20620,
                count = 1,
                description = "<i>This chess box is made of jade and obsidian.</i>\n\n{info} It will hold a full set of 32 Zaoan chess figures.",
                type = GameStore.OfferTypes.OFFER_TYPE_ITEM
            }, {
                icons = {"Sneaky_Stabber_of_Eliteness.png"},
                name = "Sneaky Stabber of Eliteness",
                price = 50,
                itemtype = 10511,
                count = 1,
                description = "<i>This nifty gadget can be used for many vital and less vital purposes. If it's not jammed, that is.</i>\n\n{info} color red.",
                type = GameStore.OfferTypes.OFFER_TYPE_ITEM
            }, {
                icons = {"squeezing gear of girlpower.png"},
                name = "Squeezing Gear Of Girlpower",
                price = 50,
                itemtype = 10513,
                count = 1,
                description = "<i>This nifty gadget can be used for many vital and less vital purposes. If it's not jammed, that is.</i>\n\n{info} color pink.",
                type = GameStore.OfferTypes.OFFER_TYPE_ITEM
            }, {
                icons = {"whacking driller of fate.png"},
                name = "Whacking Driller Of Fate",
                price = 50,
                itemtype = 10515,
                count = 1,
                description = "<i>This nifty gadget can be used for many vital and less vital purposes. If it's not jammed, that is.</i>\n\n{info} color red.",
                type = GameStore.OfferTypes.OFFER_TYPE_ITEM
            }, {
                icons = {"Frozen Starlight.png"},
                name = "Frozen Starlight",
                price = 50,
                itemtype = 2361,
                count = 1,
                description = "<i>Provides permanent light.</i>\n\n{info} 6 squares of blue light.",
                type = GameStore.OfferTypes.OFFER_TYPE_ITEM
            }, {
                icons = {"Green Light.png"},
                name = "Green Light",
                price = 50,
                itemtype = 23588,
                count = 1,
                description = "<i>Provides permanent light.</i>\n\n{info} 6 squares of green light.",
                type = GameStore.OfferTypes.OFFER_TYPE_ITEM
            }
        }
    }
    
    -- TOURNAMENT
    -- , {
    --     icons = {"Category_Tournament.png"},
    --     name = "Tournament",
    --     rookgaard = true,
    --     subclasses = {"Tickets", "Exclusive Offers"}
    -- }, {
    --     icons = {"Category_Tickets.png"},
    --     parent = "Tournament",
    --     name = "Tickets",
    --     rookgaard = true,
    --     offers = {
    --         {
    --             icons = {"Tournament_Restricted.png"},
    --             name = "Restricted Tournament Ticket",
    --             price = 500
    --         }
    --     }
    -- }, {
    --     icons = {"Category_ExclusiveOffers.png"},
    --     name = "Exclusive Offers",
    --     parent = "Tournament",
    --     rookgaard = true,
    --     state = GameStore.States.STATE_NONE,
    --     offers = {
    --         {
    --             icons = {"Cerberus_Champion.png"},
    --             name = "Cerberus Champion",
    --             price = 1250,
    --             id = 146,
    --             description = "{info} usable by all characters of the account\n{speedboost}\n\n<i>A fierce and grim guardian of the underworld has risen to fight side by side with the bravest warriors in order to send evil creatures into the realm of the dead. The three headed Cerberus Champion is constantly baying for blood and using its sharp fangs it easily rips apart even the strongest armour and shield.",
    --             type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
    --             coinType = GameStore.CointType.Tournament
    --         }, {
    --             icons = {"Jousting_Eagle.png"},
    --             name = "Jousting Eagle",
    --             price = 1250,
    --             id = 145,
    --             description = "{info} usable by all characters of the account\n{speedboost}\n\n<i>High above the clouds far away from dry land, the training of giant eagles takes place. Only the cream of the crop is able to survive in such harsh environment long enough to call themselves Jousting Eagles while the weaklings find themselves at the bottom of the sea. The tough ones become noble and graceful mounts that are well known for their agility and endurance.</i>",
    --             type = GameStore.OfferTypes.OFFER_TYPE_MOUNT,
    --             coinType = GameStore.CointType.Tournament
    --         }, {
    --             icons = {
    --                 "Outfit_Lion_of_War_Male_Addon_3.png",
    --                 "Outfit_Lion_of_War_Female_Addon_3.png"
    --             },
    --             name = "Full Lion of War Outfit",
    --             price = 1750,
    --             sexId = {female = 1207, male = 1206},
    --             addon = 3,
    --             description = "{info} usable by all characters of the account\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>The Lion of War has fought on countless battlefields and never lost once. Enemies tremble with fear when he batters his sword against his almighty shield. Realising that a Lion of War knows no mercy, his opponents often surrender before the battle even begins.</i>",
    --             type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
    --             coinType = GameStore.CointType.Tournament
    --         }, {
    --             icons = {
    --                 "Outfit_Veteran_Paladin_Male_Addon_3.png",
    --                 "Outfit_Veteran_Paladin_Female_Addon_3.png"
    --             },
    --             name = "Full Veteran Paladin Outfit",
    --             price = 1750,
    --             sexId = {female = 1205, male = 1204},
    --             addon = 3,
    --             description = "{info} usable by all characters of the account\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>A Veteran Paladin has mastered the art of distance fighting. No matter how far away his prey may be, a marksman like the Veteran Paladin will always hit with extraordinary precision. No one can escape his keen hawk-eyed vision and even small stones become deadly weapons in his hands.</i>",
    --             type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
    --             coinType = GameStore.CointType.Tournament
    --         }, {
    --             icons = {
    --                 "Outfit_Void_Master_Male_Addon_3.png",
    --                 "Outfit_Void_Master_Female_Addon_3.png"
    --             },
    --             name = "Full Void Master Outfit",
    --             price = 1750,
    --             sexId = {female = 1203, male = 1202},
    --             addon = 3,
    --             description = "{info} usable by all characters of the account\n{info} colours can be changed using the Outfit dialog\n{info} includes basic outfit and 2 addons which can be selected individually\n\n<i>According to ancient rumours, the pulsating orb that the Void Master balances skilfully on the tip of his staff consists of powerful cosmic spheres. If you gaze too long into the infinite emptiness inside the orb, its powers will absorb your mind.</i>",
    --             type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
    --             coinType = GameStore.CointType.Tournament
    --         }, {
    --             icons = {"Cerberus_Champion_Puppy.png"},
    --             name = "Cerberus Champion Puppy",
    --             price = 800,
    --             itemtype = 36299,
    --             count = 1,
    --             description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
    --             type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
    --             coinType = GameStore.CointType.Tournament
    --         }, {
    --             icons = {"Jousting_Eagle_Baby.png"},
    --             name = "Jousting Eagle Baby",
    --             price = 800,
    --             itemtype = 36297,
    --             count = 1,
    --             description = "{house}\n{box}\n{storeinbox}\n{use}\n{backtoinbox}",
    --             type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
    --             coinType = GameStore.CointType.Tournament
    --         }, {
    --             icons = {"Sublime_Tournament_Accolade.png"},
    --             name = "Sublime Tournament Accolade",
    --             price = 500,
    --             itemtype = 36307,
    --             count = 1,
    --             description = "{house}\n{box}\n{storeinbox}\n{backtoinbox}",
    --             type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
    --             coinType = GameStore.CointType.Tournament
    --         }, {
    --             icons = {"Sublime_Tournament_Carpet.png"},
    --             name = "Sublime Tournament Carpet",
    --             price = 70,
    --             itemtype = 36302,
    --             count = 1,
    --             description = "{house}\n{box}\n{storeinbox}\n{useicon} use an unwrapped carpet to roll it out or up\n{backtoinbox}",
    --             type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
    --             coinType = GameStore.CointType.Tournament
    --         }, {
    --             icons = {"Tournament_Accolade.png"},
    --             name = "Tournament Accolade",
    --             price = 500,
    --             itemtype = 36305,
    --             count = 1,
    --             description = "{house}\n{box}\n{storeinbox}\n{backtoinbox}",
    --             type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
    --             coinType = GameStore.CointType.Tournament
    --         }, {
    --             icons = {"Tournament_Carpet.png"},
    --             name = "Tournament Carpet",
    --             price = 70,
    --             itemtype = 36301,
    --             count = 1,
    --             description = "{house}\n{box}\n{storeinbox}\n{useicon} use an unwrapped carpet to roll it out or up\n{backtoinbox}",
    --             type = GameStore.OfferTypes.OFFER_TYPE_HOUSE,
    --             coinType = GameStore.CointType.Tournament
    --         }, {
    --             icons = {"Baby_Vulcongra_Accolade.png"},
    --             name = "Baby Vulcongra",
    --             price = 800,
    --             itemtype = 37743,
    --             count = 1,
    --             description = "{house}\n{box}\n{storeinbox}\n{backtoinbox}",
    --             type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
    --         }, {
    --             icons = {"Guzzlemaw_Grub.png"},
    --             name = "Guzzlemaw Grub",
    --             price = 800,
    --             itemtype = 37742,
    --             count = 1,
    --             description = "{house}\n{box}\n{storeinbox}\n{backtoinbox}",
    --             type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
    --         }, {
    --             icons = {"Cozy_Couch.png"},
    --             name = "Cozy Couch",
    --             price = 100,
    --             itemtype = 37783,
    --             count = 1,
    --             description = "{house}\n{box}\n{storeinbox}\n{backtoinbox}",
    --             type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
    --         }, {
    --             icons = {"Cozy_Couch_Left_End.png"},
    --             name = "Cozy Couch Left End",
    --             price = 100,
    --             itemtype = 37787,
    --             count = 1,
    --             description = "{house}\n{box}\n{storeinbox}\n{backtoinbox}",
    --             type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
    --         }, {
    --             icons = {"Cozy_Couch_Right_End.png"},
    --             name = "Cozy Couch Right End",
    --             price = 100,
    --             itemtype = 37791,
    --             count = 1,
    --             description = "{house}\n{box}\n{storeinbox}\n{backtoinbox}",
    --             type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
    --         }, {
    --             icons = {"Cozy_Couch_Corner.png"},
    --             name = "Cozy Couch Corner",
    --             price = 100,
    --             itemtype = 37799,
    --             count = 1,
    --             description = "{house}\n{box}\n{storeinbox}\n{backtoinbox}",
    --             type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
    --         }, {
    --             icons = {"Baby_Brain_Squid.png"},
    --             name = "Baby Brain Squid",
    --             price = 800,
    --             itemtype = 37744,
    --             count = 1,
    --             description = "{house}\n{box}\n{storeinbox}\n{backtoinbox}",
    --             type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
    --         }, {
    --             icons = {"Carved_Table.png"},
    --             name = "Carved Table",
    --             price = 100,
    --             itemtype = 37807,
    --             count = 1,
    --             description = "{house}\n{box}\n{storeinbox}\n{backtoinbox}",
    --             type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
    --         }, {
    --             icons = {"Carved_Table_Centre.png"},
    --             name = "Carved Table Centre",
    --             price = 100,
    --             itemtype = 37809,
    --             count = 1,
    --             description = "{house}\n{box}\n{storeinbox}\n{backtoinbox}",
    --             type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
    --         }, {
    --             icons = {"Carved_Table_Corner.png"},
    --             name = "Carved Table Corner",
    --             price = 100,
    --             itemtype = 37804,
    --             count = 1,
    --             description = "{house}\n{box}\n{storeinbox}\n{backtoinbox}",
    --             type = GameStore.OfferTypes.OFFER_TYPE_HOUSE
    --         }
    --     }
    -- }
}

-- Each outfit must be uniquely identified to distinguish between addons.
-- Here we dynamically assign ids for outfits. These ids must be unique.
local runningId = 45000
for k, category in ipairs(GameStore.Categories) do
    if category.offers then
        for m, offer in ipairs(category.offers) do
            if not offer.id then
                if type(offer.count) == "table" then
                    for i = 1, #offer.price do
                        offer.id[i] = runningId
                        runningId = runningId + 1
                    end
                else
                    offer.id = runningId
                    runningId = runningId + 1
                end
            end
            if not offer.type then
                offer.type = GameStore.OfferTypes.OFFER_TYPE_NONE
            end
            if not offer.coinType then
                offer.coinType = GameStore.CointType.Coin
            end
        end
    end
end
