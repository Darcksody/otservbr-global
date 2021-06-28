function showAllTasksWindowxxx(player)
    local currentTasks = player:getStorageValue(TASK_SYSTEM.CONFIG.startedTasksStorage)
    local window = ModalWindow {
        title = 'Tasks Manager',
        message = 'Please choose which task you want to see.' .. '<br><br> You have ' .. currentTasks ..
            '/3 active tasks' .. '<br> You have 56465 task points'
    }

    local availableTasks = getAvailableTasksForPlayer(player)
    if #availableTasks > 0 then
        for i = 1, #availableTasks, 1 do
            local availableTask = availableTasks[i]
            local choice = window:addChoice(availableTask.name .. ' | ' .. availableTask.pointsToFinish)
            choice.task = availableTask
        end
    end

    window:addButton('Quit')
    window:setDefaultEscapeButton('Quit')

    window:addButton('Detail', function(button, choice)
        showTaskWindowToPlayer(player, choice.task, showAllTasksWindowxxx)
    end)
    window:setDefaultEnterButton('Select')

    

    -- window:addButton('Syar', function(button, choice)
    --     print('Player chose ' .. choice.text)
    -- end)
    -- window:setDefaultEnterButton('Select')

    window:sendToPlayer(player)
end







local tasksNew = TalkAction("!tas")

function tasksNew.onSay(player, words, param)
    showAllTasksWindowxxx(player)
end

tasksNew:register()
