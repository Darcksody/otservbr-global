function Party.broadcastPartyLoot(self, text)
	local leader = self:getLeader()
	
	if leader:getClient().version < 1200 then
		leader:sendTextMessage(MESSAGE_GUILD, text, 9)
	else
		leader:sendTextMessage(MESSAGE_LOOT, text)
	end

	local membersList = self:getMembers()
	for i = 1, #membersList do
		local player = membersList[i]
		if player then
			if player:getClient().version < 1200 then
				player:sendTextMessage(MESSAGE_GUILD, text, 9)
			else
				player:sendTextMessage(MESSAGE_LOOT, text)
			end
		end
	end
end
