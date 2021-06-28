local function scanContainer(cid, position)
    local player = Player(cid)
    if not player then
        return
    end

    if player:getStorageValue(AUTOLOOT_STATUS) < 1 then
        return
    end

    local corpse = Tile(position):getTopDownItem()
    if not corpse or not corpse:isContainer() then
        return
    end

    local playerId = player:getId()
    if AutoLootList.players[playerId] == nil then
        AutoLootList:save(playerId)
    end

    if corpse:getType():isCorpse() and corpse:getAttribute(ITEM_ATTRIBUTE_CORPSEOWNER) == cid then

        if AutoLootList.players[playerId] ~= nil then
            local lootList = AutoLootList.players[playerId].lootList
            if lootList ~= nil then
                for a = corpse:getSize() - 1, 0, -1 do
                    local containerItem = corpse:getItem(a)
                    if containerItem then
                        local containerItemId = containerItem:getId()
                        for i = 1, #lootList do
                            
                            local lootItemId = lootList[i]
                            if lootItemId == containerItemId then
                                    containerItem:moveTo(player)
                            end
                        end
                    end
                end
            end
        end
    end
end

local autoLootModal = CreatureEvent("AutoLootModal")

function autoLootModal.onDeath(monster, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified)
    if not monster:isMonster() or monster:getMaster() then
        return true
    end

    if not corpse or type(corpse) ~= 'userdata' or not corpse:isContainer() or monster:getType():isRewardBoss() then
        return true
    end

    local owner = mostdamagekiller
    if killer and killer:isPlayer() then
        owner = killer
    end

    if not owner or not owner:isPlayer() then
        return
    end

    addEvent(scanContainer, 100, owner:getId(), monster:getPosition())
    return true
end
autoLootModal:register()
