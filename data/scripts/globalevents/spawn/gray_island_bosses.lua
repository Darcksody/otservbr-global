local config = {
	teleportId = 1387,
	days = {
		["Friday"] = {teleportPos = Position(33649, 31261, 11), aid = TANJIS_BOSS_ACTION}, -- tanjis
		["Saturday"] = {teleportPos = Position(33558, 31282, 11), aid = JAUL_BOSS_ACTION}, -- jaul
		["Sunday"] = {teleportPos = Position(33438, 31248, 11), aid = OBUJOS_BOSS_ACTION}, -- obujos
	}
}

local gray = GlobalEvent("gray island bosses")
function gray.onStartup()
	local day = config.days[os.date("%A")]
	if day then

		local teleportItem = Game.createItem(config.teleportId, 1, day.teleportPos)
		if not teleportItem:isTeleport() then
			teleportItem:remove()
			return false
		end

		if teleportItem then
			teleportItem:setActionId(day.aid)
		end

	end
	return true
end

gray:register()
