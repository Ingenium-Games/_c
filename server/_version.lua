-- ====================================================================================--
--  MIT License 2020 : Twiitchter
-- ====================================================================================--

PerformHttpRequest( "https://github.com/Ingenium-Games/ore/version.json", function(err, text, headers)
	Citizen.Wait(1250)
    --	
    local version = c.module.GetVersion()
    local data = json.decode(text)
    --
	c.debug(" ^0[ ^8Update Checking^0 ] ")
	if (data.version ~= version) then
        print("Wrong Version Installed.")
    else
        print(version.. " == " ..data.version)
    end
end)

