local tasks = TalkAction("!tasksasdasfasd")

function tasks.onSay(player, words, param)	
    showAllTasksWindow(player)
end

tasks:register()
