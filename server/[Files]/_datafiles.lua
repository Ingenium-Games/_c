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

function LoadDataFiles()
    c.gsr.Load()
    c.drop.Load()
    c.pick.Load()
    c.note.Load()
    c.gsr.CleanUp()
    c.drop.CleanUp()
    c.pick.CleanUp()
    c.note.CleanUp()    
end
