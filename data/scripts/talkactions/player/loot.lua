local function addQuickItem(playerId, itemId, itemName)
    local player = Player(playerId)
    if not player then
        return false
    end
    if player:getStorageValue(AUTOLOOT_EXHAUSTED) > os.time() then
        player:sendCancelMessage('You are exhausted.')
        return false
    end
    local itemType = ItemType(itemId)
    if not itemType then
        return false
    end

    local maxItem = AUTOLOOT_MAXITEMS
    maxItem = maxItem + math.max(0, player:getStorageValue(AUTOLOOT_INCREASE))

    local itemId = itemType:getId()
    local playerGuid = player:getGuid()
    local resultId = db.storeQuery(string.format(
        'SELECT `item_id` FROM `quick_loot_list` WHERE `item_id` = %d AND `player_id` = %d', itemId, playerGuid))
    if resultId then
        player:setStorageValue(AUTOLOOT_EXHAUSTED, os.time() + 2)
        player:sendCancelMessage(string.format("%s is already in the list.", itemName))
        result.free(resultId)
        return false
    end

    -- Check max item count
    local count = 0
    local resultId = db.storeQuery(string.format(
        'SELECT COUNT(*) as `count` FROM `quick_loot_list` WHERE `player_id` = %d', playerGuid))
    if resultId then
        count = result.getNumber(resultId, "count")
        result.free(resultId)
    end

    if count >= maxItem then
        player:sendCancelMessage("The auto loot list is full.")
        return false
    end

    db.query(string.format('INSERT INTO `quick_loot_list` (`player_id`, `item_id`, `date_added`) VALUES (%d, %d, %d)',
        playerGuid, itemId, os.time()))
    player:setStorageValue(AUTOLOOT_EXHAUSTED, os.time() + 2)
    player:sendCancelMessage(string.format("%s has been added to the list.", itemName))
    AutoLootList:save(playerId)
    return true
end

local function clearItemList(playerId)
    local player = Player(playerId)
    if not player then
        return false
    end

    if player:getStorageValue(AUTOLOOT_EXHAUSTED) > os.time() then
        player:sendCancelMessage('You are exhausted.')
        return false
    end

    local playerGuid = player:getGuid()
    -- DELETE FROM `quick_loot_list` WHERE `quick_loot_list`.`id` = 30;
    db.query(string.format('DELETE FROM `quick_loot_list` WHERE `player_id` = %d', playerGuid))
    player:setStorageValue(AUTOLOOT_EXHAUSTED, os.time() + 2)
    player:sendCancelMessage('Your list has been cleared.')
    AutoLootList:save(playerId)
    return true
end

local function removeQuickItem(playerId, itemId, itemName)
    local player = Player(playerId)
    if not player then
        return false
    end

    if player:getStorageValue(AUTOLOOT_EXHAUSTED) > os.time() then
        player:sendCancelMessage('You are exhausted.')
        return false
    end

    local playerGuid = player:getGuid()
    local resultId = db.storeQuery(string.format(
        'SELECT `item_id` FROM `quick_loot_list` WHERE `player_id` = %d AND `item_id` = %d', playerGuid, itemId))
    if not resultId then
        player:setStorageValue(AUTOLOOT_EXHAUSTED, os.time() + 2)
        player:sendCancelMessage(string.format("There is no %s item in the list.", itemName))
        return false
    end

    db.query(
        string.format('DELETE FROM `quick_loot_list` WHERE `player_id` = %d and `item_id` = %d', playerGuid, itemId))
    player:setStorageValue(AUTOLOOT_EXHAUSTED, os.time() + 2)
    player:sendCancelMessage(string.format("%s has been removed from the list.", itemName))
    AutoLootList:save(playerId)
    return true
end

local function quickLootIsInList(playerId, itemId)
    local resultId = db.storeQuery(string.format(
        'SELECT `item_id` FROM `quick_loot_list` WHERE `player_id` = %d AND `item_id` = %d', playerId, itemId))
    if resultId then
        result.free(resultId)
        return ' - ADDED'
    end

    return ''
end

local function itemListMonsterModal(playerId, monsterName)
    local player = Player(playerId)
    if not player then
        return false
    end

    local monsterType = MonsterType(monsterName)
    if not monsterType then
        player:sendCancelMessage("This monster does not exist.")
        return false
    end

    if monsterType:isRewardBoss() then
        player:sendCancelMessage("Bosses are not allowed in auto loot list.")
        return false
    end

    local monsterName = monsterType:getName()
    local window = ModalWindow {
        title = string.format('%s loot', monsterName),
        message = string.format('Add or Remove item from %s loot list', monsterName)
    }

    local windowCount = 0
    local t = {}
    local playerGuid = player:getGuid()
    if monsterType:getLoot() then
        for _, v in pairs(monsterType:getLoot()) do
            if windowCount < 255 then
                local itemId = v.itemId
                if not isInArray(t, itemId) then
                    local itemType = ItemType(itemId)
                    if itemType then
                        local itemName = itemType:getName()
                        local choice = window:addChoice(itemName .. quickLootIsInList(playerGuid, itemId))
                        windowCount = windowCount + 1

                        choice.itemId = itemId
                        choice.itemName = itemName
                        table.insert(t, itemId)
                    end
                end
            end
        end
    end

    window:addButton("Close")
    window:setDefaultEscapeButton("Close")

    window:addButton("Add", function(button, choice)
        if player and choice then
            addQuickItem(player:getId(), choice.itemId, choice.itemName)
            itemListMonsterModal(playerId, monsterName)
        end
    end)

    window:addButton("Remove", function(button, choice)
        if player and choice then
            removeQuickItem(player:getId(), choice.itemId, choice.itemName)
            itemListMonsterModal(playerId, monsterName)
        end
    end)

    window:sendToPlayer(player)
end

local function itemListModal(playerId)
    local player = Player(playerId)
    if not player then
        return false
    end

    local playerGuid = player:getGuid()
    local count = 0
    local resultId = db.storeQuery(string.format(
        'SELECT COUNT(*) as `count` FROM `quick_loot_list` WHERE `player_id` = %d', playerGuid))
    if resultId then
        count = result.getNumber(resultId, "count")
        result.free(resultId)
    end

    if count == 0 then
        player:sendCancelMessage("No items were found in the list.")
        return false
    end

    local resultId = db.storeQuery(string.format('SELECT `item_id` FROM `quick_loot_list` WHERE `player_id` = %d',
        playerGuid))
    if not resultId then
        return false
    end

    local window = ModalWindow {
        title = "Auto loot list",
        message = 'Current items in the list'
    }

    local lootList = {}
    repeat
        local itemId = result.getNumber(resultId, "item_id")
        table.insert(lootList, itemId)
    until not result.next(resultId)
    result.free(resultId)

    for _, loot in pairs(lootList) do
        local itemType = ItemType(loot)
        if itemType then
            local itemName = itemType:getName()
            local choice = window:addChoice(itemName)

            choice.itemId = itemType:getId()
            choice.itemName = itemName
        end
    end

    window:addButton("Remove", function(button, choice)
        if player and choice then
            removeQuickItem(player:getId(), choice.itemId, choice.itemName)
            itemListModal(playerGuid)
        end
    end)

    window:addButton("Close")
    window:setDefaultEscapeButton("Close")
    window:sendToPlayer(player)
end

local loot = TalkAction("!loot")

function loot.onSay(player, words, param)
    local split = param:split(",")
    local action = split[1]
    local playerGuid = player:getGuid()

    if action == "add" then
        if not split[2] then
            player:sendCancelMessage("Example: !loot add, itemName")
            return false
        end

        local item = split[2]:gsub("%s+", "", 1)
        local itemType = ItemType(item)
        local itemId = itemType:getId()
        if itemId == 0 then
            itemType = ItemType(tonumber(item))
            if itemId == 0 then
                player:sendCancelMessage("There is no item with that name.")
                return false
            end
        end

        -- Checar se o item j� est� na lista do jogador.
        local itemName = tonumber(split[2]) and itemType:getName() or item
        addQuickItem(player:getId(), itemId, itemName)
    elseif action == "remove" then
        if not split[2] then
            player:sendCancelMessage("Example: !loot remove, itemName")
            return false
        end

        local item = split[2]:gsub("%s+", "", 1)
        local itemType = ItemType(item)
        local itemId = itemType:getId()
        if itemId == 0 then
            itemType = ItemType(tonumber(item))
            if itemId == 0 then
                player:sendCancelMessage("There is no item with that name.")
                return false
            end
        end

        local itemName = tonumber(split[2]) and itemType:getName() or item
        local resultId = db.storeQuery(string.format('SELECT `item_id` FROM `quick_loot_list` WHERE `item_id` = %d',
            itemId))
        if not resultId then
            player:sendCancelMessage(itemName .. " was not founded in the list.")
            return false
        end
        result.free(resultId)

        player:sendCancelMessage(itemName .. " has been removed from the list.")
        removeQuickItem(player:getId(), itemId, itemName)
    elseif action == "list" then
        itemListModal(player:getId())
    elseif action == "clear" then
        clearItemList(player:getId())
        
    elseif action == "on" then
        if player:getStorageValue(AUTOLOOT_EXHAUSTED) > os.time() then
            player:sendCancelMessage('You are exhausted.')
            return false
        end

        player:setStorageValue(AUTOLOOT_STATUS, 1)
        player:sendCancelMessage("Auto Loot On.")
        player:setStorageValue(AUTOLOOT_EXHAUSTED, os.time() + 2)

    elseif action == "off" then
        if player:getStorageValue(AUTOLOOT_EXHAUSTED) > os.time() then
            player:sendCancelMessage('You are exhausted.')
            return false
        end

        player:setStorageValue(AUTOLOOT_STATUS, 0)
        player:sendCancelMessage("Auto Loot Off.")
        player:setStorageValue(AUTOLOOT_EXHAUSTED, os.time() + 2)
    else
        if not split[1] then

            local status = "OFF"
            if player:getStorageValue(AUTOLOOT_STATUS) > 0 then
                status = "ON"
            end

            local maxItem = AUTOLOOT_MAXITEMS
            maxItem = maxItem + math.max(0, player:getStorageValue(AUTOLOOT_INCREASE))

            player:popupFYI("Items are automatically moved to your backpack.\n\nCommands:\n\n!loot clear - To remove all items from the list.'\n!loot off/on - Turn enable or disable auto looting.'\n!loot add, itemName - add item to the list by name.'\n!loot remove, itemName - remove item from the list by name.\n!loot list - Show your current items on the list.\n!loot monsterName - Displays the list of items by monster name.\n\nAutoloot Status: [" .. status .. "].\nSlots: [" .. maxItem .. "] (Buy more slots on store).\n")
            return false
        end

        local monsterName = trim(split[1])
        itemListMonsterModal(player:getId(), monsterName)
    end

    return false
end

loot:separator(" ")
loot:register()
