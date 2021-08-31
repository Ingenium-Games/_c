-- ====================================================================================--
--  MIT License 2020 : Twiitchter
-- ====================================================================================--
c.wanted = {} -- function level
--[[
NOTES.
    -
    -
    -
]]--
math.randomseed(c.Seed)
-- ====================================================================================--

---- This shouldnt really be needed to use, as on the client, we are setting maximum wanted stars as 0 and the ignore stars is a just incase, as the flag SHOULD stop the raising of wantedness.
function c.wanted.StopLoop()
    local yield = c.sec
    local function Do()
        local xPlayers = c.data.GetPlayers()
        local yield = c.sec
        for _,v in pairs(xPlayers) do
            local wanted = GetPlayerWantedLevel(v)
            if wanted then
                SetPlayerWantedLevel(0, v, false)
            else
                yield = yield + 150
            end
        end
        if yield < c.sec then yield = c.sec end
        SetTimeout(Do, yield) 
    end
    SetTimeout(Do, yield)
end