local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local basic = {
    cost = 2500
}
local intricate = {
    cost = 5000
}
local powerful = {
    cost = 10000
} 

local products = {
    ['scorch'] = {
        ['basic'] = {
            description = "Converts 10% of the physical damage to fire damage.",
            itens = {
                [1] = { id = 10553, amount = 25, cost = 375 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Converts 25% of the physical damage to fire damage.",
            itens = {
                [1] = { id = 10553, amount = 25, cost = 375 + basic.cost },
                [2] = { id = 5920, amount = 5, cost = 100 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Converts 50% of the physical damage to fire damage.",
            itens = {
                [1] = { id = 10553, amount = 25, cost = 375 + basic.cost },
                [2] = { id = 5920, amount = 5, cost = 100 + intricate.cost },
                [3] = { id = 5954, amount = 5, cost = 1100 + powerful.cost }
            }
        }
    },

    ['venom'] = {
        ['basic'] = {
            description = "Converts 10% of the physical damage to earth damage.",
            itens = {
                [1] = { id = 10603, amount = 25, cost = 20 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Converts 25% of the physical damage to earth damage.",
            itens = {
                [1] = { id = 10603, amount = 25, cost = 20 + basic.cost },
                [2] = { id = 10557, amount = 20, cost = 50 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Converts 50% of the physical damage to earth damage.",
            itens = {
                [1] = { id = 10603, amount = 25, cost = 20 + basic.cost },
                [2] = { id = 10557, amount = 20, cost = 50 + intricate.cost },
                [3] = { id = 23565, amount = 2, cost = 160 + powerful.cost }
            }
        }
    },

    ['frost'] = {
        ['basic'] = {
            description = "Converts 10% of the physical damage to ice damage.",
            itens = {
                [1] = { id = 10578, amount = 25, cost = 280 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Converts 25% of the physical damage to ice damage.",
            itens = {
                [1] = { id = 10578, amount = 25, cost = 280 + basic.cost },
                [2] = { id = 24170, amount = 10, cost = 260 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Converts 50% of the physical damage to ice damage.",
            itens = {
                [1] = { id = 10578, amount = 25, cost = 280 + basic.cost },
                [2] = { id = 24170, amount = 10, cost = 260 + intricate.cost },
                [3] = { id = 10567, amount = 5, cost = 30 + powerful.cost }
            }
        }
    },

    ['electrify'] = {
        ['basic'] = {
            description = "Converts 10% of the physical damage to energy damage.",
            itens = {
                [1] = { id = 21310, amount = 25, cost = 70 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Converts 25% of the physical damage to energy damage.",
            itens = {
                [1] = { id = 21310, amount = 25, cost = 70 + basic.cost },
                [2] = { id = 24631, amount = 5, cost = 350 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Converts 50% of the physical damage to energy damage.",
            itens = {
                [1] = { id = 21310, amount = 25, cost = 70 + basic.cost },
                [2] = { id = 24631, amount = 5, cost = 350 + intricate.cost },
                [3] = { id = 26164, amount = 1, cost = 270 + powerful.cost }
            }
        }
    },

    ['reap'] = {
        ['basic'] = {
            description = "Converts 10% of the physical damage to death damage.",
            itens = {
                [1] = { id = 12440, amount = 25, cost = 25 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Converts 25% of the physical damage to death damage.",
            itens = {
                [1] = { id = 12440, amount = 25, cost = 25 + basic.cost },
                [2] = { id = 10564, amount = 20, cost = 80 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Converts 50% of the physical damage to death damage.",
            itens = {
                [1] = { id = 12440, amount = 25, cost = 25 + basic.cost },
                [2] = { id = 10564, amount = 20, cost = 80 + intricate.cost },
                [3] = { id = 11337, amount = 5, cost = 250 + powerful.cost }
            }
        }
    },

    ['vampirism'] = {
        ['basic'] = {
            description = "Converts 5% of damage to HP with a chance of 100%.",
            itens = {
                [1] = { id = 10602, amount = 25, cost = 275 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Converts 10% of damage to HP with a chance of 100%.",
            itens = {
                [1] = { id = 10602, amount = 25, cost = 275 + basic.cost },
                [2] = { id = 10550, amount = 15, cost = 100 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Converts 25% of damage to HP with a chance of 100%.",
            itens = {
                [1] = { id = 10602, amount = 25, cost = 275 + basic.cost },
                [2] = { id = 10550, amount = 15, cost = 100 + intricate.cost },
                [3] = { id = 10580, amount = 5, cost = 250 + powerful.cost }
            }
        }
    },

	['void'] = {
        ['basic'] = {
            description = "Converts 3% of damage to MP with a chance of 100%.",
            itens = {
                [1] = { id = 12448, amount = 25, cost = 66 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Converts 5% of damage to MP with a chance of 100%.",
            itens = {
                [1] = { id = 12448, amount = 25, cost = 66 + basic.cost },
                [2] = { id = 22534, amount = 25, cost = 390 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Converts 8% of damage to MP with a chance of 100%.",
            itens = {
                [1] = { id = 12448, amount = 25, cost = 66 + basic.cost },
                [2] = { id = 22534, amount = 25, cost = 390 + intricate.cost },
                [3] = { id = 25386, amount = 5, cost = 1200 + powerful.cost }
            }
        }
    },

	['strike'] = {
        ['basic'] = {
            description = "Raises crit hit damage by 15% and crit hit chance by 10%.",
            itens = {
                [1] = { id = 12400, amount = 20, cost = 60 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Raises crit hit damage by 25% and crit hit chance by 10%.",
            itens = {
                [1] = { id = 12400, amount = 20, cost = 60 + basic.cost },
                [2] = { id = 11228, amount = 25, cost = 400 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Raises crit hit damage by 50% and crit hit chance by 10%.",
            itens = {
                [1] = { id = 12400, amount = 20, cost = 60 + basic.cost },
                [2] = { id = 11228, amount = 25, cost = 400 + intricate.cost },
                [3] = { id = 25384, amount = 5, cost = 1100 + powerful.cost }
            }
        }
    },

    ['lich shroud'] = {
        ['basic'] = {
            description = "Reduces death damage by 2%.",
            itens = {
                [1] = { id = 12422, amount = 25, cost = 30 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Reduces death damage by 5%.",
            itens = {
                [1] = { id = 12422, amount = 25, cost = 30 + basic.cost },
                [2] = { id = 24663, amount = 20, cost = 70 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Reduces death damage by 10%.",
            itens = {
                [1] = { id = 12422, amount = 25, cost = 30 + basic.cost },
                [2] = { id = 24663, amount = 20, cost = 70 + intricate.cost },
                [3] = { id = 10577, amount = 5, cost = 700 + powerful.cost }
            }
        }
    },

    ['snake skin'] = {
        ['basic'] = {
            description = "Reduces earth damage by 3%.",
            itens = {
                [1] = { id = 20103, amount = 25, cost = 30 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Reduces earth damage by 8%.",
            itens = {
                [1] = { id = 20103, amount = 25, cost = 30 + basic.cost },
                [2] = { id = 10611, amount = 20, cost = 400 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Reduces earth damage by 15%.",
            itens = {
                [1] = { id = 20103, amount = 25, cost = 30 + basic.cost },
                [2] = { id = 10611, amount = 20, cost = 400 + intricate.cost },
                [3] = { id = 12658, amount = 10, cost = 380 + powerful.cost }
            }
        }
    },

    ['dragon hide'] = {
        ['basic'] = {
            description = "Reduces fire damage by 3%.",
            itens = {
                [1] = { id = 5877, amount = 20, cost = 100 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Reduces fire damage by 8%.",
            itens = {
                [1] = { id = 5877, amount = 20, cost = 100 + basic.cost },
                [2] = { id = 18425, amount = 10, cost = 610 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Reduces fire damage by 15%.",
            itens = {
                [1] = { id = 5877, amount = 20, cost = 100 + basic.cost },
                [2] = { id = 18425, amount = 10, cost = 610 + intricate.cost },
                [3] = { id = 12614, amount = 5, cost = 550 + powerful.cost }
            }
        }
    },

    ['quara scale'] = {
        ['basic'] = {
            description = "Reduces ice damage by 3%.",
            itens = {
                [1] = { id = 11212, amount = 25, cost = 20 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Reduces ice damage by 8%.",
            itens = {
                [1] = { id = 11212, amount = 25, cost = 20 + basic.cost },
                [2] = { id = 11224, amount = 15, cost = 150 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Reduces ice damage by 15%.",
            itens = {
                [1] = { id = 11212, amount = 25, cost = 20 + basic.cost },
                [2] = { id = 11224, amount = 15, cost = 150 + intricate.cost },
                [3] = { id = 15425, amount = 5, cost = 180 + powerful.cost }
            }
        }
    },

    ['cloud fabric'] = {
        ['basic'] = {
            description = "Reduces energy damage by 3%.",
            itens = {
                [1] = { id = 10561, amount = 25, cost = 265 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Reduces energy damage by 8%.",
            itens = {
                [1] = { id = 10561, amount = 25, cost = 265 + basic.cost },
                [2] = { id = 15482, amount = 15, cost = 210 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Reduces energy damage by 15%.",
            itens = {
                [1] = { id = 10561, amount = 25, cost = 265 + basic.cost },
                [2] = { id = 15482, amount = 15, cost = 210 + intricate.cost },
                [3] = { id = 10582, amount = 10, cost = 400 + powerful.cost }
            }
        }
    },

    ['demon presence'] = {
        ['basic'] = {
            description = "Reduces holy damage by 3%.",
            itens = {
                [1] = { id = 10556, amount = 25, cost = 150 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Reduces holy damage by 8%.",
            itens = {
                [1] = { id = 10556, amount = 25, cost = 150 + basic.cost },
                [2] = { id = 10555, amount = 25, cost = 280 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Reduces holy damage by 15%.",
            itens = {
                [1] = { id = 10556, amount = 25, cost = 150 + basic.cost },
                [2] = { id = 10555, amount = 25, cost = 280 + intricate.cost },
                [3] = { id = 11221, amount = 20, cost = 475 + powerful.cost }
            }
        }
    },

    ['swiftness'] = {
        ['basic'] = {
            description = "Raises walking speed by 10.",
            itens = {
                [1] = { id = 19738, amount = 15, cost = 20 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Raises walking speed by 15.",
            itens = {
                [1] = { id = 19738, amount = 15, cost = 20 + basic.cost },
                [2] = { id = 11219, amount = 25, cost = 45 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Raises walking speed by 30.",
            itens = {
                [1] = { id = 19738, amount = 15, cost = 20 + basic.cost },
                [2] = { id = 11219, amount = 25, cost = 45 + intricate.cost },
                [3] = { id = 15484, amount = 20, cost = 190 + powerful.cost }
            }
        }
    },

    ['chop'] = {
        ['basic'] = {
            description = "Raises axe fighting skill by 1.",
            itens = {
                [1] = { id = 11113, amount = 20, cost = 150 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Raises axe fighting skill by 2.",
            itens = {
                [1] = { id = 11113, amount = 20, cost = 150 + basic.cost },
                [2] = { id = 12403, amount = 25, cost = 290 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Raises axe fighting skill by 4.",
            itens = {
                [1] = { id = 11113, amount = 20, cost = 150 + basic.cost },
                [2] = { id = 12403, amount = 25, cost = 290 + intricate.cost },
                [3] = { id = 23571, amount = 20, cost = 140 + powerful.cost }
            }
        }
    },

    ['slash'] = {
        ['basic'] = {
            description = "Raises sword fighting skill by 1.",
            itens = {
                [1] = { id = 10608, amount = 25, cost = 60 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Raises sword fighting skill by 2.",
            itens = {
                [1] = { id = 10608, amount = 25, cost = 60 + basic.cost },
                [2] = { id = 23573, amount = 25, cost = 110 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Raises sword fighting skill by 4.",
            itens = {
                [1] = { id = 10608, amount = 25, cost = 60 + basic.cost },
                [2] = { id = 23573, amount = 25, cost = 110 + intricate.cost },
                [3] = { id = 10571, amount = 5, cost = 460 + powerful.cost }
            }
        }
    },

    ['bash'] = {
        ['basic'] = {
            description = "Raises club fighting skill by 1.",
            itens = {
                [1] = { id = 10574, amount = 20, cost = 55 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Raises club fighting skill by 2.",
            itens = {
                [1] = { id = 10574, amount = 20, cost = 55 + basic.cost },
                [2] = { id = 24845, amount = 15, cost = 210 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Raises club fighting skill by 4.",
            itens = {
                [1] = { id = 10574, amount = 20, cost = 55 + basic.cost },
                [2] = { id = 24845, amount = 15, cost = 210 + intricate.cost },
                [3] = { id = 11322, amount = 10, cost = 200 + powerful.cost }
            }
        }
    },

    ['precision'] = {
        ['basic'] = {
            description = "Raises distance fighting skill by 1.",
            itens = {
                [1] = { id = 12420, amount = 25, cost = 50 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Raises distance fighting skill by 2.",
            itens = {
                [1] = { id = 12420, amount = 25, cost = 50 + basic.cost },
                [2] = { id = 21311, amount = 20, cost = 115 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Raises distance fighting skill by 4.",
            itens = {
                [1] = { id = 12420, amount = 25, cost = 50 + basic.cost },
                [2] = { id = 21311, amount = 20, cost = 115 + intricate.cost },
                [3] = { id = 11215, amount = 10, cost = 320 + powerful.cost }
            }
        }
    },

    ['blockade'] = {
        ['basic'] = {
            description = "Raises shielding skill by 1.",
            itens = {
                [1] = { id = 10558, amount = 20, cost = 45 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Raises shielding skill by 2.",
            itens = {
                [1] = { id = 10558, amount = 20, cost = 45 + basic.cost },
                [2] = { id = 12659, amount = 25, cost = 210 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Raises shielding skill by 4.",
            itens = {
                [1] = { id = 10558, amount = 20, cost = 45 + basic.cost },
                [2] = { id = 12659, amount = 25, cost = 210 + intricate.cost },
                [3] = { id = 22533, amount = 25, cost = 400 + powerful.cost }
            }
        }
    },

    ['epiphany'] = {
        ['basic'] = {
            description = "Raises magic level by 1.",
            itens = {
                [1] = { id = 10552, amount = 25, cost = 45 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Raises magic level by 2.",
            itens = {
                [1] = { id = 10552, amount = 25, cost = 45 + basic.cost },
                [2] = { id = 12408, amount = 15, cost = 35 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Raises magic level by 4.",
            itens = {
                [1] = { id = 10552, amount = 25, cost = 45 + basic.cost },
                [2] = { id = 12408, amount = 15, cost = 35 + intricate.cost },
                [3] = { id = 11226, amount = 15, cost = 600 + powerful.cost }
            }
        }
    },

    ['featherweight'] = {
        ['basic'] = {
            description = "Raises capacity by 3.",
            itens = {
                [1] = { id = 28999, amount = 10, cost = 200 + basic.cost }
            }
        },
        ['intricate'] = {
            description = "Raises capacity by 8.",
            itens = {
                [1] = { id = 28999, amount = 10, cost = 200 + basic.cost },
                [2] = { id = 29007, amount = 10, cost = 500 + intricate.cost }
            }
        },
        ['powerful'] = {
            description = "Raises capacity by 15.",
            itens = {
                [1] = { id = 28999, amount = 10, cost = 200 + basic.cost },
                [2] = { id = 29007, amount = 10, cost = 500 + intricate.cost },
                [3] = { id = 22539, amount = 5, cost = 1100 + powerful.cost }
            }
        }
    },


}

local answerType = {}
local answerLevel = {}

function onCreatureAppear(cid)
    npcHandler:onCreatureAppear(cid)
end
function onCreatureDisappear(cid)
    npcHandler:onCreatureDisappear(cid)
end
function onCreatureSay(cid, type, msg)
    npcHandler:onCreatureSay(cid, type, msg)
end
function onThink()
    npcHandler:onThink()
end

local function greetCallback(cid)
    npcHandler.topic[cid] = 0
    return true
end

local function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end

    local player = Player(cid)

    local imbueType = products[msg:lower()]
    if imbueType then
        npcHandler:say({"You have chosen " .. msg .. ". {Basic}, {intricate} or {powerful}?"}, cid)
        answerType[cid] = msg:lower()
        npcHandler.topic[cid] = 1
    elseif npcHandler.topic[cid] == 1 then
        local imbueLevel = products[answerType[cid]][msg:lower()]
        if imbueLevel then
            answerLevel[cid] = msg:lower()
            local total = 0
            local consist = "consist of "
            local maxn = #products[answerType[cid]][answerLevel[cid]].itens
            for i, product in ipairs(products[answerType[cid]][answerLevel[cid]].itens) do
                total = total + product.amount * product.cost
                local byItem = ItemType(product.id)
                local name = byItem:getName() or ''
                consist = consist .. product.amount .. " "
                if (byItem:isStackable() and product.amount > 1) then
                    name = byItem:getPluralName() or name
                end
                consist = consist .. name
                if i == maxn - 1 then
                    consist = consist .. " and "
                elseif i == maxn then
                    consist = consist .. "."
                else
                    consist = consist .. ", "
                end
                i = i + 1
            end

            npcHandler:say(imbueLevel.description .. " The " .. answerLevel[cid] .. " bundle for the " ..
                               answerType[cid] .. " imbuement " .. consist .. " Would you like to buy it for " .. total ..
                               " gold coins? {Yes}?", cid)
            npcHandler.topic[cid] = 2
        end
    elseif npcHandler.topic[cid] == 2 then
        if msgcontains(msg, "yes") then
            local neededCap = 0
            for i = 1, #products[answerType[cid]][answerLevel[cid]].itens do
                neededCap = neededCap + ItemType(products[answerType[cid]][answerLevel[cid]].itens[i].id):getWeight() *
                                products[answerType[cid]][answerLevel[cid]].itens[i].amount
            end

            if player:getFreeCapacity() > neededCap then

                local total = 0
                for i = 1, #products[answerType[cid]][answerLevel[cid]].itens do
                    total = total + products[answerType[cid]][answerLevel[cid]].itens[i].amount *
                                products[answerType[cid]][answerLevel[cid]].itens[i].cost
                end

                if player:getMoney() + player:getBankBalance() >= total then
                    for i = 1, #products[answerType[cid]][answerLevel[cid]].itens do
                        player:addItem(products[answerType[cid]][answerLevel[cid]].itens[i].id,
                            products[answerType[cid]][answerLevel[cid]].itens[i].amount)
                    end

                    player:removeMoneyNpc(total)
                    npcHandler:say("There it is.", cid)
                    npcHandler.topic[cid] = 0
                else
                    npcHandler:say("Sorry, you don't have enough gold.", cid)
                end
            else
                npcHandler:say("You don\'t have enough capacity. You must have " .. neededCap .. " oz.", cid)
            end
        elseif msgcontains(msg, "no") then
            npcHandler:say("Your decision. Come back if you have changed your mind.", cid)
        end
        npcHandler.topic[cid] = 0
    end

    return true
end

keywordHandler:addKeyword({'elemental damage'}, StdModule.say, {
    npcHandler = npcHandler,
    text = 'Do you want to buy for Elemental Damage {Electrify}, {Frost}, {Reap}, {Scorch} or {Venom}?'
})

keywordHandler:addKeyword({'life leech'}, StdModule.say, {
    npcHandler = npcHandler,
    text = 'Do you want to buy for Life Leech {Vampirism}?'
})

keywordHandler:addKeyword({'mana leech'}, StdModule.say, {
    npcHandler = npcHandler,
    text = 'Do you want to buy for Mana Leech {Void}?'
})

keywordHandler:addKeyword({'mana leech'}, StdModule.say, {
    npcHandler = npcHandler,
    text = 'Do you want to buy for Mana Leech {Void}?'
})

keywordHandler:addKeyword({'critical hit'}, StdModule.say, {
    npcHandler = npcHandler,
    text = 'Do you want to buy for Critical Hit {Strike}?'
})

keywordHandler:addKeyword({'elemental protection'}, StdModule.say, {
    npcHandler = npcHandler,
    text = 'Do you want to buy for Elemental Protection {Lich Shroud}, {Snake Skin}, {Dragon Hide}, {Quara Scale}, {Cloud Fabric} or {Demon Presence}?'
})

keywordHandler:addKeyword({'increase speed'}, StdModule.say, {
    npcHandler = npcHandler,
    text = 'Do you want to buy for Increase Speed {Swiftness}?'
})

keywordHandler:addKeyword({'Skillboost'}, StdModule.say, {
    npcHandler = npcHandler,
    text = 'Do you want to buy for Skillboost {Chop} (axe), {Slash} (sword), {Bash} (Club), {Precision} (distance), {Blockade} (shielding), {Epiphany} (magic level)?'
})

keywordHandler:addKeyword({'increase capacity'}, StdModule.say, {
    npcHandler = npcHandler,
    text = 'Do you want to buy for Increase Capacity {Featherweight}?'
})

local greetText =
    "Hello |PLAYERNAME|. I have creature products for the imbuements {Elemental Damage}, {Life Leech}, {Mana Leech}, {Critical Hit}, {Elemental Protection}, {Increase Speed}, {Skillboost} and {Increase Capacity}. But I also {trade} these products by separate units."

local voices = {{
    text = 'If you need help with Creature Products for the Imbuements, just ask me. I sell all of these products.'
}, {
    text = 'Also I have Creature Products for Basic, Intricate and Powerful Imbuiments!'
}}

npcHandler:addModule(VoiceModule:new(voices))

npcHandler:setCallback(CALLBACK_ONADDFOCUS, onAddFocus)
npcHandler:setCallback(CALLBACK_ONRELEASEFOCUS, onReleaseFocus)

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:setMessage(MESSAGE_GREET, greetText)
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Good bye |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_SENDTRADE, 'At your service, just browse through my wares.')

npcHandler:addModule(FocusModule:new())
