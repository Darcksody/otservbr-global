local autoSave = GlobalEvent("autosave")
function autoSave.onThink(interval)
    saveServer()
    print("> Server Save")
	return true
end

-- autoSave:interval(3600000)
autoSave:interval(1800000) -- 30 min
autoSave:register()
