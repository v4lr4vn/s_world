--[[ s_world client — enforces the world rules. The wanted system is disabled at
     the source (max wanted 0) and kept clear, so policing is entirely
     player-driven (your whitelisted Police), not GTA's star system. ]]

local C = World.config

CreateThread(function()
    if C.disableWanted then
        SetMaxWantedLevel(0)
        SetWantedLevelMultiplier(0.0)
    end
    while true do
        local pid = PlayerId()
        if C.disableWanted then
            ClearPlayerWantedLevel(pid)
            SetPlayerWantedLevel(pid, 0, false)
            SetPlayerWantedLevelNow(pid, false)
        end
        if C.policeIgnore then SetPoliceIgnorePlayer(pid, true) end
        if C.noWantedDispatch then SetDispatchCopsForPlayer(pid, false) end
        if C.removeAmbientCops then
            SetCreateRandomCops(false)
            SetCreateRandomCopsNotOnScrolling(false)
            SetCreateRandomCopsOnScenarios(false)
        end
        Wait(2000)
    end
end)
