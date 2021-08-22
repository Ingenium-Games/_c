-- ====================================================================================--
--  MIT License 2020 : Twiitchter
-- ====================================================================================--
--[[
NOTES.
    -
    -
    -
]] --
math.randomseed(c.Seed)
-- ====================================================================================--
    
function c.data.DataFiles()
    c.gsr.Load()
    c.drop.Load()
    c.pick.Load()
    c.note.Load()
    --
    c.gsr.CleanUp()
    Citizen.Wait(c.min)
    --
    c.drop.CleanUp()
    Citizen.Wait(c.min)
    --
    c.pick.CleanUp()
    Citizen.Wait(c.min)
    --
    c.note.CleanUp()
    Citizen.Wait(c.min)
    --
end