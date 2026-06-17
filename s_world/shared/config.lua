--[[ s_world — world rules for Ash & Iron. Keeps the world behaving the way a
     serious, player-driven RP server wants it to. Toggle each rule here. ]]

World = World or {}

World.config = {
    disableWanted     = true,   -- no GTA wanted levels / stars, ever
    policeIgnore      = true,   -- NPC police ignore players (no auto-engage)
    noWantedDispatch  = true,   -- no police dispatch triggered by wanted
    removeAmbientCops = false,  -- true = no ambient NPC cops spawn at all
                                -- (leave false unless you want a copless world)
}

return World.config
