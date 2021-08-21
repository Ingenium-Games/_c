-- ====================================================================================--
--  MIT License 2020 : Twiitchter
-- ====================================================================================--
c.file = {}
--[[

]]--
-- ====================================================================================--

function c.file.Exists(file)
    local f = io.open(GetResourcePath(GetCurrentResourceName()..file, "r")
    if f then f:close() end
    return f ~= nil
end

function c.file.Read(file)
    local f = io.open(GetResourcePath()..file, "r")
    local content = f:read("a")
    f:close()
    return content
end
  
-- Write a string to a file.
function c.file.Write(file, content)
    local f = io.open(GetResourcePath(GetCurrentResourceName()..file,  "w+")
    f:write(content)
    f:flush()
    f:close()
end