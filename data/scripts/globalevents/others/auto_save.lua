local autoSave = GlobalEvent("autosave")
function autoSave.onThink(interval)
    -- Game.broadcastMessage("Server saved.", MESSAGE_STATUS_WARNING)
    saveServer()
    print("> Server Save")
	return true
end

autoSave:interval(1740000)
autoSave:register()
