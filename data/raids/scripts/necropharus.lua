

local function checkBoss(centerPosition, rangeX, rangeY, bossName)
    local spectators, spec = Game.getSpectators(centerPosition, false, false, rangeX, rangeX, rangeY, rangeY)
    for i = 1, #spectators do
        spec = spectators[i]
        if spec:isMonster() then
            if spec:getName():lower() == bossName:lower() then
                return true
            end
        end
    end 
    return false
end

local config = {
    [1] = { -- drefia
        name = "Necropharus",
        position = Position(33044, 32401, 10),
        rangeX = 5,
        rangeY = 5
    },
    [2] = { -- edron
        name = "Necropharus",
        position = Position(33082, 31674, 11),
        rangeX = 5,
        rangeY = 5
    },
    [3] = { -- goroma
        name = "Necropharus",
        position = Position(31964, 32592, 10),
        rangeX = 5,
        rangeY = 5
    }
}


function onRaid()
    local ramd = math.random(3)
    print(ramd)
    local monster = config[ramd]

    if monster then
        if checkBoss(monster.position, monster.rangeX, monster.rangeY, monster.name) then
            return true
        end

        Game.createMonster(monster.name, monster.position)
    end

    return true
end
