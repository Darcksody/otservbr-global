local rewards = {
	[9302] = {
		storage = Storage.DeeplingBosses.Jaul,
		bossName = 'Jaul',
		items = {
			{rand = true, unique = {{itemId = 15403, count = 50}, {itemId = 15434}}},
			{itemId = 2152, count = 50},
			{itemId = 15621},
			{itemId = 15453}
		}
	},
	[9303] = {
		storage = Storage.DeeplingBosses.Tanjis,
		bossName = 'Tanjis',
		items = {
			{rand = true, unique = {{itemId = 2144, count = 10}, {itemId = 15435}}},
			{itemId = 15620},
			{itemId = 2152, count = 20},
			{itemId = 15403, count = 50},
			{itemId = 15453}
		}
	},
	[9304] = {
		storage = Storage.DeeplingBosses.Obujos,
		bossName = 'Obujos',
		items = {
			{rand = true, unique = {{itemId = 15436}, {itemId = 7632}}},
			{itemId = 15619},
			{itemId = 15454},
			{itemId = 2152, count = 30},
			{itemId = 15400}
		}
	}
}

local bossesReward = Action()

function bossesReward.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local reward = rewards[item.uid]
	if not reward then
		return true
	end

	if player:getStorageValue(reward.storage) ~= 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, reward.bossName .. ' defends his belongings and will not let you open his chest.')
		return true
	end

	for i = 1, #reward.items do
		local items = reward.items[i]
		if items.rand then
			if math.random(3) == 1 then
				local randItem = items.unique[math.random(#items.unique)]
				player:addItem(randItem.itemId, randItem.count or 1)
			end
		else
			player:addItem(items.itemId, items.count or 1)
		end
	end

	player:setStorageValue(reward.storage, 0)
	return true
end

bossesReward:uid(9302, 9303, 9304)
bossesReward:register()
