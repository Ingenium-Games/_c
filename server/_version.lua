-- ====================================================================================--
--  MIT License 2020 : Twiitchter
-- ====================================================================================--
--	
local version = c.module.GetVersion()
local OnlineVersion = nil

PerformHttpRequest("https://github.com/Ingenium-Games/ore/version.txt", function(err, text, headers)
    Citizen.Wait(1250)
    OnlineVersion = text
    --
    c.debug(" ^0[ ^8Update Checking^0 ] ")
    if (OnlineVersion ~= version) then
        print("Wrong Version Installed.")
    else
        print(version.. " == " ..OnlineVersion)
    end
end, "GET")
