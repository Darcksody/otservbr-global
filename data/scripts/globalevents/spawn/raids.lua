-- probability = 1 low, 2 medium , 3 hight, 4 always
local raids = {
	-- Weekly {id = 21400, chance = 12500, maxCount = 1}, -- silver raid token 
	--<!--Announcements-->
	--<announce delay="1000" type="Event" message="Beware Fernfang." />
	--Lunes
	['Monday'] = {
		['07:30'] = {name = 'Ocyakao', probability = 2, centerPosition = Position(32353, 31052, 7), rangeX = 5, rangeY = 5, raid = true},
		['14:30'] = {name = 'Ocyakao', probability = 3, centerPosition = Position(32353, 31052, 7), rangeX = 5, rangeY = 5, raid = true},
		['21:30'] = {name = 'Ocyakao', probability = 4, centerPosition = Position(32353, 31052, 7), rangeX = 5, rangeY = 5, raid = true},

		['02:30'] = {name = 'Sir Valorcrest', probability = 2, centerPosition = Position(33264, 31768, 10), rangeX = 5, rangeY = 5, raid = true},
		['15:30'] = {name = 'Sir Valorcrest', probability = 3, centerPosition = Position(33264, 31768, 10), rangeX = 5, rangeY = 5, raid = true},
		['22:30'] = {name = 'Sir Valorcrest', probability = 2, centerPosition = Position(33264, 31768, 10), rangeX = 5, rangeY = 5, raid = true},

		['10:00'] = {name = 'Tyrn', probability = 1, raid = true},
		['20:00'] = {name = 'Tyrn', probability = 2, raid = true},

		
		['04:30'] = {name = 'Countess Sorrow', probability = 1, centerPosition = Position(32802,32333,15), rangeX = 5, rangeY = 5},
		['11:30'] = {name = 'Countess Sorrow', probability = 2, centerPosition = Position(32802,32333,15), rangeX = 5, rangeY = 5},
		['18:30'] = {name = 'Countess Sorrow', probability = 3, centerPosition = Position(32802,32333,15), rangeX = 5, rangeY = 5},

		['02:00'] = {name = 'Draptor', probability = 4, raid = true},
	},
 
	--Martes
	['Tuesday'] = {
		['07:30'] = {name = 'Hirintror', probability = 2, centerPosition = Position(32101, 31167, 9), rangeX = 5, rangeY = 5, raid = true},
		['14:30'] = {name = 'Hirintror', probability = 3, centerPosition = Position(32101, 31167, 9), rangeX = 5, rangeY = 5, raid = true},
		['21:30'] = {name = 'Hirintror', probability = 4, centerPosition = Position(32101, 31167, 9), rangeX = 5, rangeY = 5, raid = true},

		['02:30'] = {name = 'Zevelon Duskbringer', probability = 2, centerPosition = Position(32754, 31578, 11), rangeX = 5, rangeY = 5, raid = true},
		['15:30'] = {name = 'Zevelon Duskbringer', probability = 3, centerPosition = Position(32754, 31578, 11), rangeX = 5, rangeY = 5, raid = true},
		['22:30'] = {name = 'Zevelon Duskbringer', probability = 2, centerPosition = Position(32754, 31578, 11), rangeX = 5, rangeY = 5, raid = true},

		['04:30'] = {name = 'Dracola', probability = 1, centerPosition = Position(32837,32309,15), rangeX = 5, rangeY = 5},
		['11:30'] = {name = 'Dracola', probability = 2, centerPosition = Position(32837,32309,15), rangeX = 5, rangeY = 5},
		['18:30'] = {name = 'Dracola', probability = 3, centerPosition = Position(32837,32309,15), rangeX = 5, rangeY = 5},

		['08:30'] = {name = 'Dharalion', probability = 2, centerPosition = Position(33038, 32176, 9), rangeX = 5, rangeY = 5, raid = true},
		['16:30'] = {name = 'Dharalion', probability = 3, centerPosition = Position(33038, 32176, 9), rangeX = 5, rangeY = 5, raid = true},
		['20:00'] = {name = 'Dharalion', probability = 2, centerPosition = Position(33038, 32176, 9), rangeX = 5, rangeY = 5, raid = true},

	},

	--Miercoles
	['Wednesday'] = {
		['07:30'] = {name = 'Fernfang', probability = 2, centerPosition = Position(32851, 32337, 6), rangeX = 5, rangeY = 5, raid = true},
		['14:30'] = {name = 'Fernfang', probability = 3, centerPosition = Position(32851, 32337, 6), rangeX = 5, rangeY = 5, raid = true},
		['21:30'] = {name = 'Fernfang', probability = 4, centerPosition = Position(32851, 32337, 6), rangeX = 5, rangeY = 5, raid = true},

		['02:30'] = {name = 'Diblis The Fair', probability = 1, centerPosition = Position(32009,32795,10), rangeX = 5, rangeY = 5, raid = true},
		['09:30'] = {name = 'Diblis The Fair', probability = 2, centerPosition = Position(32009,32795,10), rangeX = 5, rangeY = 5, raid = true},
		['16:30'] = {name = 'Diblis The Fair', probability = 3, centerPosition = Position(32009,32795,10), rangeX = 5, rangeY = 5, raid = true},

		['10:00'] = {name = 'The Welter', probability = 1, centerPosition = Position(33026,32660,5), rangeX = 5, rangeY = 5, raid = true},
		['20:00'] = {name = 'The Welter', probability = 2, centerPosition = Position(33026,32660,5), rangeX = 5, rangeY = 5, raid = true},

		['04:30'] = {name = 'The Handmaiden', probability = 1, centerPosition = Position(32785,32290,15), rangeX = 5, rangeY = 5},
		['11:30'] = {name = 'The Handmaiden', probability = 2, centerPosition = Position(32785,32290,15), rangeX = 5, rangeY = 5},
		['18:30'] = {name = 'The Handmaiden', probability = 3, centerPosition = Position(32785,32290,15), rangeX = 5, rangeY = 5},

		['02:00'] = {name = 'Midnight Panther', probability = 4, raid = true},
	},

	--Jueves
	['Thursday'] = {
		['07:30'] = {name = 'Captain Jones', probability = 2, centerPosition = Position(33325, 32183, 7), rangeX = 5, rangeY = 5},
		['14:30'] = {name = 'Captain Jones', probability = 3, centerPosition = Position(33325, 32183, 7), rangeX = 5, rangeY = 5},
		['21:30'] = {name = 'Captain Jones', probability = 4, centerPosition = Position(33325, 32183, 7), rangeX = 5, rangeY = 5},

		['10:00'] = {name = 'Furyosa', probability = 2, centerPosition = Position(33299, 31829, 15), rangeX = 5, rangeY = 5, raid = true},
		['20:00'] = {name = 'Furyosa', probability = 2, centerPosition = Position(33299, 31829, 15), rangeX = 5, rangeY = 5, raid = true},

		['04:30'] = {name = 'Massacre', probability = 1, centerPosition = Position(32876,32270,15), rangeX = 5, rangeY = 5},
		['11:30'] = {name = 'Massacre', probability = 2, centerPosition = Position(32876,32270,15), rangeX = 5, rangeY = 5},
		['18:30'] = {name = 'Massacre', probability = 1, centerPosition = Position(32876,32270,15), rangeX = 5, rangeY = 5},

		['02:30'] = {name = 'Arachir the Ancient One', probability = 2, centerPosition = Position(32965, 32400, 12), rangeX = 5, rangeY = 5, raid = true},
		['15:30'] = {name = 'Arachir the Ancient One', probability = 3, centerPosition = Position(32965, 32400, 12), rangeX = 5, rangeY = 5, raid = true},
		['22:30'] = {name = 'Arachir the Ancient One', probability = 2, centerPosition = Position(32965, 32400, 12), rangeX = 5, rangeY = 5, raid = true},
	},
 
	--Viernes
	['Friday'] = {
		['04:30'] = {name = 'Mr. Punish', probability = 1, centerPosition = Position(32763,32243,15), rangeX = 5, rangeY = 5},
		['11:30'] = {name = 'Mr. Punish', probability = 2, centerPosition = Position(32763,32243,15), rangeX = 5, rangeY = 5},
		['18:30'] = {name = 'Mr. Punish', probability = 3, centerPosition = Position(32763,32243,15), rangeX = 5, rangeY = 5},

		['07:30'] = {name = 'Zushuka', probability = 2, centerPosition = Position(31941, 31388, 9), rangeX = 5, rangeY = 5, raid = true},
		['14:30'] = {name = 'Zushuka', probability = 3, centerPosition = Position(31941, 31388, 9), rangeX = 5, rangeY = 5, raid = true},
		['21:30'] = {name = 'Zushuka', probability = 4, centerPosition = Position(31941, 31388, 9), rangeX = 5, rangeY = 5, raid = true},

		['18:00'] = {name = 'The Evil Eye', probability = 4, centerPosition = Position(32808, 31611, 14), rangeX = 5, rangeY = 5},
		['22:30'] = {name = 'The Evil Eye', probability = 4, centerPosition = Position(32808, 31611, 14), rangeX = 5, rangeY = 5},

		['02:30'] = {name = 'Gravelord Oshuran', probability = 2, centerPosition = Position(32980, 32393, 12), rangeX = 5, rangeY = 5},
		['15:30'] = {name = 'Gravelord Oshuran', probability = 3, centerPosition = Position(32980, 32393, 12), rangeX = 5, rangeY = 5},
		['09:30'] = {name = 'Gravelord Oshuran', probability = 2, centerPosition = Position(32980, 32393, 12), rangeX = 5, rangeY = 5},
		
		['02:00'] = {name = 'Undead Cavebear', probability = 4, raid = true},
	},

	--Sábado
	['Saturday'] = {
		['10:00'] = {name = 'The Pale Count', probability = 2, centerPosition = Position(32969, 32420, 15), rangeX = 5, rangeY = 5, raid = true},
		['20:00'] = {name = 'The Pale Count', probability = 2, centerPosition = Position(32969, 32420, 15), rangeX = 5, rangeY = 5, raid = true},

		['12:30'] = {name = 'Zulazza the Corruptor', probability = 2, centerPosition = Position(33348, 31609, 1), rangeX = 5, rangeY = 5, raid = true},
		['18:30'] = {name = 'Zulazza the Corruptor', probability = 3, centerPosition = Position(33348, 31609, 1), rangeX = 5, rangeY = 5, raid = true},
		
		['04:30'] = {name = 'The Imperor', probability = 1, centerPosition = Position(32763,32243,15), rangeX = 5, rangeY = 5},
		['11:30'] = {name = 'The Imperor', probability = 2, centerPosition = Position(32763,32243,15), rangeX = 5, rangeY = 5},
		['21:30'] = {name = 'The Imperor', probability = 3, centerPosition = Position(32763,32243,15), rangeX = 5, rangeY = 5},

		['07:30'] = {name = 'The Old Widow', probability = 2, centerPosition = Position(32776, 32296, 7), rangeX = 5, rangeY = 5, raid = true},
		['14:30'] = {name = 'The Old Widow', probability = 3, centerPosition = Position(32776, 32296, 7), rangeX = 5, rangeY = 5, raid = true},
		['22:30'] = {name = 'The Old Widow', probability = 4, centerPosition = Position(32776, 32296, 7), rangeX = 5, rangeY = 5, raid = true},

	},

	--Domingo
	['Sunday'] = {
		['13:00'] = {name = 'Necropharus', probability = 3, raid = true},
		['18:00'] = {name = 'Necropharus', probability = 3, raid = true},

		['10:00'] = {name = 'Yeti', probability = 2, centerPosition = Position(32008, 31595, 7), rangeX = 10, rangeY = 10, raid = true},
		['20:00'] = {name = 'Yeti', probability = 2, centerPosition = Position(32008, 31595, 7), rangeX = 10, rangeY = 10, raid = true},

		['04:30'] = {name = 'The Plasmother', probability = 1, centerPosition = Position(32845,32332,15), rangeX = 5, rangeY = 5},
		['11:30'] = {name = 'The Plasmother', probability = 2, centerPosition = Position(32845,32332,15), rangeX = 5, rangeY = 5},
		['21:30'] = {name = 'The Plasmother', probability = 3, centerPosition = Position(32845,32332,15), rangeX = 5, rangeY = 5},

		['02:30'] = {name = 'Weakened Shlorg', probability = 2, centerPosition = Position(33164, 31716, 9), rangeX = 5, rangeY = 5, raid = true},
		['15:30'] = {name = 'Weakened Shlorg', probability = 3, centerPosition = Position(33164, 31716, 9), rangeX = 5, rangeY = 5, raid = true},
		['22:30'] = {name = 'Weakened Shlorg', probability = 2, centerPosition = Position(33164, 31716, 9), rangeX = 5, rangeY = 5, raid = true},

		['02:00'] = {name = 'Crustacea Gigantica', probability = 4, raid = true},
	},

	-- By date (Day/Month)
	['31/10'] = {
		['16:00'] = {name = ''}
	}
}

local function checkBoss(centerPosition, rangeX, rangeY, bossName)
    local spectators, spec = Game.getSpectators(centerPosition, false, false, rangeX, rangeX, rangeY, rangeY)
    for i = 1, #spectators do
        spec = spectators[i]
        if spec:isMonster() then
            if spec:getName():lower() == bossName:lower() then
                return true
            end
        end
    end
    return false
end

local spawnRaids = GlobalEvent("spawn raids")
function spawnRaids.onThink(interval, lastExecution, thinkInterval)
	local day, date = os.date('%A'), getRealDate()

	local raidDays = {}
	if raids[day] then
		raidDays[#raidDays + 1] = raids[day]
	end
	if raids[date] then
		raidDays[#raidDays + 1] = raids[date]
	end
	if #raidDays == 0 then
		return true
	end

	for i = 1, #raidDays do
		local settings = raidDays[i][getRealTime()]

		if settings and not settings.alreadyExecuted then

			if settings.centerPosition then
				if checkBoss(settings.centerPosition, settings.rangeX, settings.rangeY, settings.name) then
					return true
				end
			end

			local ramd = math.random(4)
			if ramd >= settings.probability then
				if settings.raid then
					Game.startRaid(settings.name)
				else
					Game.createMonster(settings.name, settings.centerPosition, true, true)
					addEvent(Game.broadcastMessage, 150, 'Beware! '..settings.name..'!', MESSAGE_EVENT_ADVANCE)
				end
				settings.alreadyExecuted = true
			end
		end
	end
	return true
end

spawnRaids:interval(60000)
spawnRaids:register()
