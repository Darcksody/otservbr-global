local autoSave = GlobalEvent("autosave")
function autoSave.onThink(interval)
    saveServer()
    SaveHirelings()
    Game.broadcastMessage("Server saved.", MESSAGE_STATUS_WARNING)
    print("> Server Save")
	return true
end

autoSave:interval(1740000)
autoSave:register()
