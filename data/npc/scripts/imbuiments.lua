local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local basic = { cost = 2500 }
local intricate = { cost = 5000 }
local powerful = { cost = 10000 }

local products = {
	['scorch'] = {
		['basic'] =  {
			description = "Converts 10% of the physical damage to fire damage.",
			consists = "25 Fiery Hearts",
			itens = {
				[1] =  { id = 10553, amount = 25, cost = 375 + basic.cost, }
			},
			value = 11875 -- (25 * 375) + 2500
		},
		['intricate'] =  {
			text = "Converts 25% of the physical damage to fire damage. The intricate bundle for the Scorch imbuement consists of 25 Fiery Hearts and 5 Green Dragon Scales. Would you like to buy it for 17375 ".. ItemType(Npc():getCurrency()):getPluralName():lower() .."?",
			itens = {
				[1] = {id = 10553, amount = 25, cost = 375},
				[2] = {id = 5920, amount = 5, cost = 100}
			},
			value = 17375 -- (5 * 100) + 5000 + 
		},
		['powerful'] = {
			text = "Converts 50% of the physical damage to fire damage. The powerful bundle for the Scorch imbuement consists of 25 Fiery Hearts, 5 Green Dragon Scales and 5 Demon Horns. Would you like to buy it for 34200 ".. ItemType(Npc():getCurrency()):getPluralName():lower() .."?",
			itens = {
				[1] = {id = 10553, amount = 25, cost = 375},
				[2] = {id = 5920, amount = 5, cost = 100},
				[3] = {id = 5954, amount = 5, cost = 1100}
			},
			value = 34200
		}
	},
	['strike'] = {
		['basic'] =  {
			text = "The basic bundle for the strike imbuement consists of 20 protective charms. Would you like to buy it for 3700 ".. ItemType(Npc():getCurrency()):getPluralName():lower() .."?. {Yes}?.",
			itens = {
				[1] = {id = 12400, amount = 20, cost = 60} -- cost = cost per unit
			},
			value = 3700 -- cost of basic = 5000 + (amount * cost = 1200)
		},
		['intricate'] =  {
			text = "The intricate bundle for the strike imbuement consists of 20 protective charms and 25 sabreteeth. Would you like to buy it for 18700 ".. ItemType(Npc():getCurrency()):getPluralName():lower() .."?",
			itens = {
				[1] = {id = 12400, amount = 20, cost = 60},
				[2] = {id = 11228, amount = 25, cost = 400}
			},
			value = 18700
		},
		['powerful'] = {
			text = "The powerful bundle for the strike imbuement consists of 20 protective charms, 25 sabreteeth and 5 vexclaw talons. Would you like to buy it for 34200 ".. ItemType(Npc():getCurrency()):getPluralName():lower() .."?",
			itens = {
				[1] = {id = 12400, amount = 20, cost = 60},
				[2] = {id = 11228, amount = 25, cost = 400},
				[3] = {id = 25384, amount = 5, cost = 1100}
			},
			value = 34200
		}
	},
	['vampirism'] = {
		['basic'] =  {
			text = "The basic bundle for the vampirism imbuement consists of 25 vampire teeth. Would you like to buy it for 2 ".. ItemType(Npc():getCurrency()):getPluralName():lower() .."?",
			itens = {
				[1] = {id = 10602, amount = 25}
			},
			value = 2
		},
		['intricate'] =  {
			text = "The intricate bundle for the strike imbuement consists of 20 protective charms and 25 sabreteeth. Would you like to buy it for 4 ".. ItemType(Npc():getCurrency()):getPluralName():lower() .."?",
			itens = {
				[1] = {id = 10602, amount = 25},
				[2] = {id = 10550, amount = 15}
			},
			value = 4
		},
		['powerful'] = {
			text = "The powerful bundle for the vampirism imbuement consists of 25 vampire teeth, 15 bloody pincers and 5 pieces of dead brain. Would you like to it for 6 ".. ItemType(Npc():getCurrency()):getPluralName():lower() .."?",
			itens = {
				[1] = {id = 10602, amount = 25},
				[2] = {id = 10550, amount = 15},
				[3] = {id = 10580, amount = 5}
			},
			value = 6
		}
	},
	['void'] = {
		['basic'] =  {
			text = "The basic bundle for the void imbuement consists of 25 rope belts. Would you like to buy it for 2 ".. ItemType(Npc():getCurrency()):getPluralName():lower() .."?",
			itens = {
				[1] = {id = 12448, amount = 25}
			},
			value = 2,
		},
		['intricate'] =  {
			text = "The intricate bundle for the void imbuement consists of 25 rope belts and 25 silencer claws. Would you like to buy it for 4 ".. ItemType(Npc():getCurrency()):getPluralName():lower() .."?.",
			itens = {
				[1] = {id = 12448, amount = 25},
				[2] = {id = 22534, amount = 25}
			},
			value = 4,
		},
		['powerful'] = {
			text = "The powerful bundle for the void imbuement consists of 25 rope belts, 25 silencer claws and 5 grimeleech wings. Would you like to buy it for 6 ".. ItemType(Npc():getCurrency()):getPluralName():lower() .."?",
			itens = {
				[1] = {id = 12448, amount = 25},
				[2] = {id = 22534, amount = 25},
				[3] = {id = 25386, amount = 5}
			},
			value = 6,
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
	
	if npcHandler.topic[cid] == 0 then
		local imbueType = products[msg:lower()]
		if imbueType then
			npcHandler:say({"You have chosen "..msg..". {Basic}, {intricate} or {powerful}?"}, cid)
			answerType[cid] = msg:lower()
        	npcHandler.topic[cid] = 1
		end
	elseif npcHandler.topic[cid] == 1 then
		local imbueLevel = products[answerType[cid]][msg:lower()]
		if imbueLevel then
			answerLevel[cid] = msg:lower()

			local total = 0
			for i = 1, #products[answerType[cid]][answerLevel[cid]].itens do
				total = total + products[answerType[cid]][answerLevel[cid]].itens[i].amount * products[answerType[cid]][answerLevel[cid]].itens[i].cost
			end

			npcHandler:say(imbueLevel.description .." The "..answerLevel[cid].." bundle for the "..answerType[cid].." imbuement consists of "..imbueLevel.consists..". Would you like to buy it for "..total.." gold coins?. {Yes}?.", cid)
			npcHandler.topic[cid] = 2
		end
	elseif npcHandler.topic[cid] == 2 then
		if msgcontains(msg, "yes") then
			local neededCap = 0
			for i = 1, #products[answerType[cid]][answerLevel[cid]].itens do
				neededCap = neededCap + ItemType(products[answerType[cid]][answerLevel[cid]].itens[i].id):getWeight() * products[answerType[cid]][answerLevel[cid]].itens[i].amount
			end
			if player:getFreeCapacity() > neededCap then
				if player:getMoney() + player:getBankBalance() >= products[answerType[cid]][answerLevel[cid]].value then
					for i = 1, #products[answerType[cid]][answerLevel[cid]].itens do
						print(products[answerType[cid]][answerLevel[cid]].itens[i].amount)
						player:addItem(products[answerType[cid]][answerLevel[cid]].itens[i].id, products[answerType[cid]][answerLevel[cid]].itens[i].amount)
					end

					local price = products[answerType[cid]][answerLevel[cid]].value + (products[answerType[cid]][answerLevel[cid]].itens[i].amount * products[answerType[cid]][answerLevel[cid]].itens[i].cost)
					player:removeMoneyNpc(products[answerType[cid]][answerLevel[cid]].value)
					npcHandler:say("There it is.", cid)
					npcHandler.topic[cid] = 0
				else
					npcHandler:say("I'm sorry but it seems you don't have enough ".. ItemType(Npc():getCurrency()):getPluralName():lower() .." yet. Bring me "..products[answerType[cid]][answerLevel[cid]].value.." of them and we'll make a trade.", cid)
				end
			else
				npcHandler:say("You don\'t have enough capacity. You must have "..neededCap.." oz.", cid)
			end
		elseif msgcontains(msg, "no") then
			npcHandler:say("Your decision. Come back if you have changed your mind.",cid)
		end
		npcHandler.topic[cid] = 0
    end

    return true
end

keywordHandler:addKeyword({'elemental damage'}, StdModule.say, {
    npcHandler = npcHandler,
    text = 'Do you want to buy for Elemental Damage {Electrify}, {Frost}, {Reap}, {Scorch} or {Venom}?'
})

keywordHandler:addKeyword({'critical hit'}, StdModule.say, {
    npcHandler = npcHandler,
    text = 'Do you want to buy for Critical Hit {Strike}?'
})

keywordHandler:addKeyword({'basicasdsd'}, StdModule.say, {
    npcHandler = npcHandler,
    text = 'Do you want to buy for Skill increase {Bash}, {Blockade}, {Chop}, {Epiphany}, {Precision}, {Slash}. Additional Attributes {Featherweight}, {Strike}, {Swiftness}, {Vampirism}, {Vibrancy}, {Void}. Elemental Damage {Electrify}, {Frost}, {Reap}, {Scorch}, {Venom}. Elemental Protection {Cloud Fabric}, {Demon Presence}, {Dragon Hide}, {Lich Shroud}, {Quara Scale}, {Snake Skin}. ?'
})

local greetText = "Hello |PLAYERNAME|. I have creature products for the imbuements {Elemental Damage}, {Life Leech}, {Mana Leech}, {Critical Hit}, {Elemental Protection}, {Increase Speed}, {Skillboost} and {Increase Capacity}. But I also {trade} these products by separate units."

local voices = {
	{ text = 'If you need help with Creature Products for the Imbuements, just ask me. I sell all of these products.' },
	{ text = 'Also I have Creature Products for Basic, Intricate and Powerful Imbuiments!' }
}

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
