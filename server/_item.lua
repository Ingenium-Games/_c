-- ====================================================================================--
--  MIT License 2020 : Twiitchter
-- ====================================================================================--
c.item = {} -- function level
--[[
NOTES.
    -
    -
    -
]] --

math.randomseed(c.Seed)
-- ====================================================================================--

function c.item.Exists(name)
    if c.items[name] then
        return true
    else
        return false
    end
end

function c.item.GetItem(name)
    if c.item.Exists(name) then
        return c.items[name]
    end 
end

function c.item.AddItem(t)
    if not c.items[t.Label] then
        table.insert(c.items, t.Label)
        c.items[t.Label] = t
    else
        c.debug("Item :"..t.Label.." - Not added due to already existing, please remove duplicate.")
    end
end

function c.item.DegradeCycle()
    local xPlayers = c.data.GetPlayers()
    for k,v in ipairs(xPlayers) do
        if v then
            local xPlayer = c.data.GetPlayer(k)
        
        end
    end
end

function c.item.CraftItem(name, xplayer)
    if c.item.IsCraftable(name) then
        local item = c.item.GetItem(name)
        local xPlayer = c.data.GetPlayer(xplayer)
    else
        c.debug("Item: "..name.." is not craftable")
    end
end


function c.item.CreateDrop()

end

function c.item.IsCraftable(name)
    return c.items[name].Craftable
end

function c.item.IsWeapon(name)
    return c.items[name].Weapon
end

function c.item.CanDegrade(name)
    return c.items[name].Degrade
end

function c.item.CanStack(name)
    return c.items[name].Stackable
end

function c.item.FindNext()

end

function c.item.FindFirst()

end

function c.item.Find()

end


function c.item.BuildData()
    for k,v in pairs(c.items) do
        
    end
end
