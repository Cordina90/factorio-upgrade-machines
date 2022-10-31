function round(num)
    under = math.floor(num)
    upper = math.floor(num) + 1
    underV = -(under - num)
    upperV = upper - num
    if (upperV > underV) then
        return under
    else
        return upper
    end
end

function in_table(table, item)
    for _,v in pairs(table) do
        if v == item then
            return true
        end
    end
    return false
end

function table.unsetKeys(table, keys)
for k, v in pairs(keys) do
    if table[v] ~= nil then
        table[v] = nil
    end
end
return table
end


function var_dump(table)
    --if settings.startup.upgrade_machines_debug == nil or settings.startup.upgrade_machines_debug.value ~= true then
    --    return
    --end

    if game ~= nil then -- during control stage
        game.print(serpent.block(table))
    end
    if data ~= nil then -- during data stage
        log(serpent.block(table))
    end
end
