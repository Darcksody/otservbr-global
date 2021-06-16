local task = TalkAction("!taskasdasasd")

function task.onSay(player, words, param)	
    showCurrentTasksWindow(player)
end

task:register()
