local sendTextPos = GlobalEvent("sendTextPos")
function sendTextPos.onThink(interval)
    local effects = {
        { position = Position(32365, 32236, 7), text = 'Trainers', effect = false }
        -- {position = Position(1000, 1002, 7), text = 'TP Room', effect = false},
        -- {position = Position(1002, 1000, 7), text = false, effect = CONST_ME_GROUNDSHAKER},
    }

    for i = 1, #effects do
        local settings = effects[i]
        Game.sendTextOnPosition(settings.text, settings.position, settings.effect)
    end

	return true
end

sendTextPos:interval(6000)
sendTextPos:register()
