-- ====================================================================================--
--  MIT License 2020 : Twiitchter
-- ====================================================================================--
c.ace = {}
c.aces = {}
--[[
NOTES
    This is used to loop the lists of chat suggestions based on player loading in and the client receiving the infromation they need.
    this is client sided, so if they wanted too they COULD look at this, but really this is only an attempt at limiting the displayed 
    commands in chat to reduce clutter.
]]--
math.randomseed(c.Seed)
-- ====================================================================================--

c.aces.public = {
    TriggerEvent("chat:addSuggestion", "/switch", "Use to change your character(s)."),


}

c.aces.mod = {
    TriggerEvent("chat:addSuggestion", "/setjob", "Admin Permission(s) Required.", {
        {name = "1", help ="Server ID"},
        {name = "2", help ="Job Name"},
        {name = "3", help ="Job Grade"},
    }),


}

c.aces.admin = {
    TriggerEvent("chat:addSuggestion", "/ban", "Admin Permission(s) Required.", {
        {name = "1", help ="Server ID"},
    }),

    TriggerEvent("chat:addSuggestion", "/kick", "Admin Permission(s) Required.", {
        {name = "1", help ="Server ID"},
    }),


}


c.aces.superadmin = {


}

c.aces.developer = {


}

c.aces.owner = {


}