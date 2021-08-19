-- ====================================================================================--
--  MIT License 2020 : Twiitchter
-- ====================================================================================--
c.file = {}
--[[
]]--
-- ====================================================================================--

function c.file.Exists(file)
    local f = io.open(file, "r")
    if f then f:close() end
    return f ~= nil
end

function c.file.Read(filename)
    local f = io.open(filename, "r")
    local content = f:read("a")
    f:close()
    return content
end
  
-- Write a string to a file.
function c.file.Write(filename, content)
    local f = io.open(filename, "w+")
    f:write(content)
    f:flush()
    f:close()
end