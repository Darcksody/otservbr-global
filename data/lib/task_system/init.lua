TASK_TYPES = {
    DRAGON_TASK = 1,
    DEMON_TASK = 2
}

function taskAddStorage(player, key, value)
    player:setStorageValue(key, math.max(player:getStorageValue(key), 0) + value)
end

function taskSetStorage(player, key, value) 
    player:setStorageValue(key, value)
end

TASK_SYSTEM = {
    CONFIG = {
        maximumTasksAtOnce = 3,
        startedTasksStorage = 49500000,
        startTaskStorage = 49510000,
        startMonsterStorage = 49520000,
        countPartyMembers = true
    },
    TASKS = {
        [TASK_TYPES.DRAGON_TASK] = {
            id = TASK_TYPES.DRAGON_TASK,
            name = "Dragons",
            maximumRepeat = 3,
            countPartyMembers = true,
            monsters = {
                {name = "Dragon", points = 1},
                {name = "Dragon Lord", points = 2},
            },
            level = {minimum = 10, maximum = 1000},
            pointsToFinish = 1000,
            rewards = {
                items = {{id = 2160, count = 10}, {id = 2400}},
                experience = 100000,
                bossFight = {
                    name = "Dragon Boss",
                    teleport = {x = 95, y = 117, z = 7}
                },
                storages = {
                    {key = 12344, func = taskAddStorage, value = 10, message = "some random storage1"}
                }
            }
        },
        [TASK_TYPES.DEMON_TASK] = {
            id = TASK_TYPES.DEMON_TASK,
            name = "Demons",
            maximumRepeat = 3,
            countPartyMembers = false,
            monsters = {{name = "Demon", points = 1}},
            level = {minimum = 10, maximum = 1000},
            pointsToFinish = 666,
            rewards = {
                items = {{id = 2160, count = 100}},
                experience = 6666666,
                bossFight = {
                    name = "Demon Boss",
                    teleport = {x = 1000, y = 1000, z = 7}
                },
                storages = {
                    {key = 12345, func = taskSetStorage, value = 1, message = "some random storage2"}
                }
            }
        }
    }
}

function getCurrentTasksForPlayer(player)
    local currentTasks = {}
    for i = 1, #TASK_SYSTEM.TASKS, 1 do
        local task = TASK_SYSTEM.TASKS[i]
        if player:getStorageValue(TASK_SYSTEM.CONFIG.startMonsterStorage + task.id) ~= -1 then
            table.insert(currentTasks, #currentTasks + 1, task)
        end
    end
    return currentTasks
end

function getAvailableTasksForPlayer(player)
    local availableTasks = {}
    for i = 1, #TASK_SYSTEM.TASKS, 1 do
        local task = TASK_SYSTEM.TASKS[i]
        local taskAvailable = true
        if task.level then
            local playerLevel = player:getLevel()
            if task.level.minimum and playerLevel < task.level.minimum then
                taskAvailable = false
            end
            if task.level.maximum and playerLevel > task.level.maximum then
                taskAvailable = false
            end
        end
        if taskAvailable then
            table.insert(availableTasks, #availableTasks + 1, task)
        end
    end
    return availableTasks
end

function canPlayerStartNewTask(player, task)
    return (player:getStorageValue(TASK_SYSTEM.CONFIG.startedTasksStorage) < TASK_SYSTEM.CONFIG.maximumTasksAtOnce)
    and not isTaskStarted(player, task) and task.maximumRepeat
    and (player:getStorageValue(TASK_SYSTEM.CONFIG.startTaskStorage + task.id) < task.maximumRepeat)
end

function startTask(player, task)
    player:setStorageValue(TASK_SYSTEM.CONFIG.startedTasksStorage, math.max(player:getStorageValue(TASK_SYSTEM.CONFIG.startedTasksStorage), 0) + 1)
    player:setStorageValue(TASK_SYSTEM.CONFIG.startMonsterStorage + task.id, 0)
end

function rewardPlayer(player, task)
    if player:isPzLocked() then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You cannot claim your reward in fight.")
        return false
    end

    if task.rewards.bossFight then
        local teleported = player:teleportTo(task.rewards.bossFight.teleport)
        if not teleported then
            player:sendTextMessage(MESSAGE_INFO_DESCR, "You couldn't be teleported to the boss fight. Please contact administrator.")
            return false
        end
    end

    if task.rewards.items and #task.rewards.items > 0 then
        for i = 1, #task.rewards.items, 1 do
            local item = task.rewards.items[i]
            local count = item.count
            if not count or count < 1 then count = 1 end
            player:addItem(item.id, count)
        end
    end

    if task.rewards.experience then
        player:addExperience(task.rewards.experience)
    end

    if task.rewards.storages and #task.rewards.storages > 0 then
        for i = 1, #task.rewards.storages, 1 do
            local storage = task.rewards.storages[i]
            storage.func(player, storage.key, storage.value)
        end
    end

    return true
end

function finishTask(player, task)
    if not rewardPlayer(player, task) then return end
    player:setStorageValue(TASK_SYSTEM.CONFIG.startedTasksStorage, math.max(
    player:getStorageValue(TASK_SYSTEM.CONFIG.startedTasksStorage), 0) - 1)
    player:setStorageValue(TASK_SYSTEM.CONFIG.startMonsterStorage + task.id, -1)
    player:setStorageValue(TASK_SYSTEM.CONFIG.startTaskStorage + task.id, math.max(player:getStorageValue(TASK_SYSTEM.CONFIG.startTaskStorage + task.id, 0) + 1))
end

function cancelTask(player, task)
    player:setStorageValue(TASK_SYSTEM.CONFIG.startedTasksStorage, math.max(
    player:getStorageValue(TASK_SYSTEM.CONFIG.startedTasksStorage), 0) - 1)
    player:setStorageValue(TASK_SYSTEM.CONFIG.startMonsterStorage + task.id, -1)
end

function getTaskMessage(player, task)
    local message = ""

    local pointsMessage = string.format("You need to get %d points to finish this task.", task.pointsToFinish)
    message = message .. pointsMessage

    if isTaskStarted(player, task) then
        local plural = "s"
        local points = player:getStorageValue(TASK_SYSTEM.CONFIG.startMonsterStorage + task.id)
        if points == 1 then plural = "" end
        message = message .. string.format("\nYou currenly have %d point%s.", points, plural)
    end

    local monstersMessage = ""
    for i = 1, #task.monsters, 1 do
        local taskMonster = task.monsters[i]
        local plural = ""
        if taskMonster.points > 1 then plural = "s" end
        monstersMessage = monstersMessage .. string.format("\n%s gives %d point%s.", taskMonster.name, taskMonster.points, plural)
    end
    message = message .. monstersMessage

    local currentRepeat = math.max(player:getStorageValue(TASK_SYSTEM.CONFIG.startTaskStorage + task.id), 0)
    local currentPlural = "s"
    if currentRepeat == 1 then currentPlural = "" end

    local taskRepetitionMessage = string.format("\nYou can repeat this task indefinitely. Currently you did the task %d time%s", currentRepeat, currentPlural)
    if task.maximumRepeat then
        local maximumPlural = ""
        if task.maximumRepeat > 1 then maximumPlural = "s" end
        taskRepetitionMessage = string.format("\nYou can repeat this task %d time%s. Currently you did the task %d time%s",task.maximumRepeat, maximumPlural, currentRepeat, currentPlural)
    end
    message = message .. taskRepetitionMessage

    if task.level then
        if task.level.minimum then
            message = message .. string.format("\nMinimum level for the task is %d.", task.level.minimum)
        end
        if task.level.maximum then
            message = message .. string.format("\nMaximum level for the task is %d.", task.level.maximum)
        end
    end

    if task.rewards then
        local rewardsMessage = "\nRewards:"
        if task.rewards.items then
            for i = 1, #task.rewards.items, 1 do
                local item = task.rewards.items[i]
                local itemType = ItemType(item.id)
                local usePlural = false
                if item.count and item.count > 1 then
                    usePlural = true
                end
                if usePlural then
                    rewardsMessage = rewardsMessage .. string.format("\n%d %s", item.count, itemType:getPluralName())
                else
                    rewardsMessage = rewardsMessage .. string.format("\n%s", itemType:getName())
                end
            end
        end

        if task.rewards.experience then
            rewardsMessage = rewardsMessage .. string.format("\n%d experience points", task.rewards.experience)
        end

        if task.rewards.storages then
            for i = 1, #task.rewards.storages, 1 do
                local storage = task.rewards.storages[i]
                if storage.message and storage.message ~= "" then
                    rewardsMessage = rewardsMessage .. string.format("\n%s", storage.message)
                end
            end
        end

        if task.rewards.bossFight then
            rewardsMessage = rewardsMessage .. string.format("\nYou will be teleported to fight %s after finishing the task.", task.rewards.bossFight.name)
        end
        message = message .. rewardsMessage
    end
    return message
end

function isTaskFinished(player, task)
    return (player:getStorageValue(TASK_SYSTEM.CONFIG.startMonsterStorage + task.id) == task.pointsToFinish)
end

function isTaskStarted(player, task)
    return (player:getStorageValue(TASK_SYSTEM.CONFIG.startMonsterStorage + task.id) ~= -1)
end

function showTaskWindowToPlayer(player, task, back)
    local window = ModalWindow {
        title = string.format('%s', task.name),
        message = getTaskMessage(player, task)
    }

    window:addButton('Back', function(button, choice) back(player) end)
    window:setDefaultEscapeButton('Back')

    if canPlayerStartNewTask(player, task) then
        window:addButton('Start', function(button, choice)
            startTask(player, task)
            showTaskWindowToPlayer(player, task, back)
        end)
    end

    if isTaskFinished(player, task) then
        window:addButton('Finish', function(button, choice)
            finishTask(player, task)
        end)
    end

    if isTaskStarted(player, task) then
        window:addButton('Cancel', function(button, choice)
            cancelTask(player, task)
            showTaskWindowToPlayer(player, task, back)
        end)
    end

    window:sendToPlayer(player)
end

function showAllTasksWindow(player)
    local window = ModalWindow {
        title = 'Tasks Manager',
        message = 'Please choose which task you want to see.'
    }

    local availableTasks = getAvailableTasksForPlayer(player)
    if #availableTasks > 0 then
        for i = 1, #availableTasks, 1 do
            local availableTask = availableTasks[i]
            local choice = window:addChoice(availableTask.name)
            choice.task = availableTask
        end

        window:addButton('Choose', function(button, choice)
            showTaskWindowToPlayer(player, choice.task, showAllTasksWindow)
        end)
        window:setDefaultEnterButton('Choose')
    end

    window:addButton('Close')
    window:setDefaultEscapeButton('Close')

    window:sendToPlayer(player)
end

function showCurrentTasksWindow(player)
    local window = ModalWindow {
        title = 'Current tasks',
        message = 'Please choose which task you want to manage.'
    }

    local availableTasks = getCurrentTasksForPlayer(player)
    if #availableTasks > 0 then
        for i = 1, #availableTasks, 1 do
            local availableTask = availableTasks[i]
            local choice = window:addChoice(availableTask.name)
            choice.task = availableTask
        end

        window:addButton('Choose', function(button, choice)
            showTaskWindowToPlayer(player, choice.task, showCurrentTasksWindow)
        end)

        window:setDefaultEnterButton('Choose')
    end

    window:addButton('Close')
    window:setDefaultEscapeButton('Close')

    window:sendToPlayer(player)
end

function tryAddTaskPoints(player, monster, isFromParty)
    local currentTasks = getCurrentTasksForPlayer(player)
    if #currentTasks > 0 then
        for i = 1, #currentTasks, 1 do
            local task = currentTasks[i]
            if not isFromParty or isFromParty and task.countPartyMembers then
                for j = 1, #task.monsters, 1 do
                    local taskMonster = task.monsters[j]
                    if taskMonster.name == monster:getName() then
                        local storage = TASK_SYSTEM.CONFIG.startMonsterStorage + task.id
                        local currentPoints = player:getStorageValue(storage)
                        if currentPoints ~= task.pointsToFinish then
                            local pointsToSet = math.min(currentPoints + taskMonster.points, task.pointsToFinish)
                            player:setStorageValue(TASK_SYSTEM.CONFIG.startMonsterStorage + task.id, pointsToSet)
                            player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("%s task: %d/%d", task.name, pointsToSet, task.pointsToFinish))
                        end
                    end
                end
            end
        end
    end
end