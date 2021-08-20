-- ====================================================================================--
--  MIT License 2020 : Twiitchter
-- ====================================================================================--

c.module = {}

function c.module.GetVersion()
	return GetResourceMetadata(GetCurrentResourceName(), "version")
end