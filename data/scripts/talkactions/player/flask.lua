
local baseStorage = 4760129403
local vials = {7634, 7635, 7636}

function removePlayerVials(cid)
    local player = Player(cid)
    if not player then
        return
    end
  
    if player:getStorageValue(baseStorage) < 1 then
        return player:returnVials()
    end

    for k,v in pairs(vials) do
        local count = player:getItemCount(v)
        if count > 0 then
            player:setStorageValue(v, math.max(player:getStorageValue(v), 0) + count)
            player:removeItem(v, count)
        end
    end
    addEvent(removePlayerVials, 1000, player:getId())
end

function Player:returnVials()
    for k,v in pairs(vials) do
        local count = self:getStorageValue(v)
        if count > 0 then
            self:setStorageValue(v, 0)
            self:addItem(v, count, true)
        end
    end
end

local flask = TalkAction("!frascos")

function flask.onSay(player, words, param)	
    if player:getStorageValue(baseStorage) < 1 then
        player:setStorageValue(baseStorage, 1)
        removePlayerVials(player:getId())
    else
        player:setStorageValue(baseStorage, 0)  
    end
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
    return false
end

flask:register()
