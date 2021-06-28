local task = TalkAction("!taskhgvhgvhg")

function task.onSay(player, words, param)	
    showCurrentTasksWindow(player)
end

task:register()
