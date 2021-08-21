-- ====================================================================================--
--  MIT License 2020 : Twiitchter
-- ====================================================================================--
c.version = {}
--
function c.version.Check()
    local version = c.module.GetVersion()
    PerformHttpRequest("https://raw.githubusercontent.com/Ingenium-Games/ore/main/version.txt", function(err, text, headers)
        --
        c.debug(" ^0[ ^8UpdateCheck^0 ] ")
        if (text ~= nil) then
            if version == text then
                c.debug("^0[ ^4Up-To-Date! ^0] ")
            else
                print("\n")
                c.alert("[ Old : "..version.." ] ")
                c.alert("[ New : "..text.." ] ")        
                print("\n")
            end
        else
            c.debug("Seems like there is an issue getting an updated version, Please tell me about this!")
        end
    end, "GET", "", "")
end