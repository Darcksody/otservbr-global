local tasks = TalkAction("!tasksjuyguygu")

function tasks.onSay(player, words, param)	
    showAllTasksWindow(player)
end

tasks:register()
