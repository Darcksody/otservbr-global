local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local shop = {
	{id=25879, buy=50, sell=0, name='eternal training sword'},
	{id=25881, buy=50, sell=0, name='eternal training axe'},
	{id=25883, buy=50, sell=0, name='eternal training mace'},
	{id=25885, buy=50, sell=0, name='eternal training bow'},
	{id=25888, buy=50, sell=0, name='eternal training rod'},
	{id=25887, buy=50, sell=0, name='eternal training wand'},

	{id=11259, buy=3, sell=0, name='unity charm'},
    {id=11261, buy=3, sell=0, name='twin sun charm'},
    {id=11260, buy=3, sell=0, name='spiritual charm'},
    {id=11262, buy=3, sell=0, name='solitude charm'},
    {id=11258, buy=6, sell=0, name='phoenix charm'},
    {id=28036, buy=9, sell=0, name='heart of the mountain'},
    {id=28037, buy=9, sell=0, name='blood of the mountain'},
 
    {id=35178, buy=2, sell=0, name='carrion casserole'}, -- 30 vida
    {id=35179, buy=2, sell=0, name='consecrated beef'}, -- 30 mana

    {id=9993, buy=1, sell=0, name='hydra tongue salad'}, -- remove all negative conditions
    {id=12543, buy=1, sell=0, name='demonic candy ball'}, -- ramdom effect
    {id=12542, buy=4, sell=0, name='pot of blackjack'}, -- 5mil healt
	{id=12544, buy=4, sell=0, name='sweet mangonaise elixir'}, -- rings

    {id=35172, buy=1, sell=0, name='roasted wyvern wings'}, -- shielding
    {id=9994, buy=2, sell=0, name='roasted dragon wings'},

    {id=35174, buy=2, sell=0, name='tropical marinated tiger'}, -- Magic Level
    {id=9995, buy=4, sell=0, name='tropical fried terrorbird'},

    {id=35175, buy=2, sell=0, name='delicatessen salad'}, -- Skill Level
    {id=9997, buy=4, sell=0, name='veggie casserole'},

    {id=35176, buy=2, sell=0, name='chilli con carniphila'}, -- Speed
    {id=9998, buy=3, sell=0, name='filled jalapeno peppers'},
    {id=12540, buy=3, sell=0, name='coconut shrimp bake'}, -- speed underwater

    {id=9999, buy=5, sell=20, name='blessed steak'},
    {id=31719, buy=6, sell=20, name='blueberry cupcake'}, -- Full Mana

    {id=9992, buy=5, sell=0, name='rotworm stew'}, -- Full Health
    {id=31720, buy=6, sell=0, name='strawberry cupcake'},

    {id=35173, buy=2, sell=0, name='carrot pie'}, -- Distance
    {id=10000, buy=3, sell=0, name='carrot cake'},
    {id=31721, buy=4, sell=0, name='lemon cupcake'},

    {id=29211, buy=100, sell=0, name='moon mirror'},
    {id=29212, buy=100, sell=0, name='gleaming starlight vial'},
    {id=29213, buy=100, sell=0, name='shining sun catcher'},
    {id=33276, buy=300, sell=0, name='bone fiddle'}
}

local function setNewTradeTable(table)
	local items, item = {}
	for i = 1, #table do
		item = table[i]
		items[item.id] = {id = item.id, buy = item.buy, sell = item.sell, subType = 0, name = item.name}
	end
	return items
end

local function onBuy(cid, item, subType, amount, ignoreCap, inBackpacks)
	local player = Player(cid)
	local itemsTable = setNewTradeTable(shop)
	if not ignoreCap and player:getFreeCapacity() < ItemType(itemsTable[item].id):getWeight(amount) then
		return player:sendTextMessage(MESSAGE_FAILURE, "You don't have enough cap.")
	end
	if itemsTable[item].buy then
		if player:removeItem(Npc():getCurrency(), amount * itemsTable[item].buy) then
			if amount > 1 then
				currencyName = ItemType(Npc():getCurrency()):getPluralName():lower()
			else
				currencyName = ItemType(Npc():getCurrency()):getName():lower()
			end
			player:addItem(itemsTable[item].id, amount)
			return player:sendTextMessage(MESSAGE_TRADE,
						"Bought "..amount.."x "..itemsTable[item].name.." for "..itemsTable[item].buy * amount.." "..currencyName..".")
		else
			return player:sendTextMessage(MESSAGE_TRADE, "You don't have enough "..currencyName..".")
		end
	end

	return true
end

local function onSell(cid, item, subType, amount, ignoreCap, inBackpacks)
	return true
end

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

	if msgcontains(msg, "information") then
		npcHandler:say({"{Tokens} are small objects made of metal or other materials. You can use them to buy some items from token traders like me.",
						"There are several ways to obtain the tokens, killing certain bosses or monster from raids, for example. In exchange for a certain amount of silver raid tokens, I can offer you some first-class items."}, cid)
	elseif msgcontains(msg, "tokens") then
		openShopWindow(cid, shop, onBuy, onSell)
		npcHandler:say("If you have any silver raid tokens with you, let's have a look! These are my offers.", cid)
	elseif msgcontains(msg, "trade") then
		openShopWindow(cid, shop, onBuy, onSell)
		npcHandler:say("If you have any silver raid tokens  with you, let's have a look! These are my offers.", cid)
	elseif msgcontains(msg, "no") then
			npcHandler:say("Your decision. Come back if you have changed your mind.",cid)
		npcHandler.topic[cid] = 0
	end
	return true
end

local greetText =
    "Hello |PLAYERNAME|. Do you wish to {trade} some {tokens}?, or do you need some {information}?"

local voices = {{
    text = 'Trading Silver Raid Tokens! First-class bargains!'
}, {
    text = 'Tokens! Bring your silver raid tokens!'
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
 
 