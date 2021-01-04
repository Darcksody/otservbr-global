local raids = {
	-- Weekly
	--Segunda-Feira
	['Monday'] = {
		['06:00'] = {raidName = ''},
	},

	--Terça-Feira
	['Tuesday'] = {
		['16:00'] = {raidName = ''}
	},

	--Quarta-Feira
	['Wednesday'] = {
		['12:00'] = {raidName = ''}
	},

	--Quinta-Feira
	['Thursday'] = {
		['19:00'] = {raidName = ''}
	},

	--Sexta-feira
	['Friday'] = {
		['06:00'] = {raidName = ''}
	},

	--Sábado
	['Saturday'] = {
		['20:00'] = {raidName = ''}
	},

	--Domingo
	['Sunday'] = {
		['15:00'] = {raidName = ''},
		['13:00'] = {raidName = ''}
	},

	-- By date (Day/Month)
	['31/10'] = {
		['16:00'] = {raidName = ''}
	}
}

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
			Game.startRaid(settings.raidName)
			settings.alreadyExecuted = true
		end
	end
	return true
end

spawnRaids:interval(600000)
spawnRaids:register()
