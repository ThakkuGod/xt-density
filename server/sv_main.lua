ESX = exports["es_extended"]:getSharedObject()

local lib = lib
local globalState = GlobalState
local config = lib.load('configs.server')

-- Sets Density, Returns Bool --
local function setDensity(type, amount)
    local newStates = {}
    for densityType in pairs(globalState.density) do
        if densityType == type then
            newStates[densityType] = amount
        else
            newStates[densityType] = globalState.density[densityType]
        end
    end

    globalState.density = newStates

    if (globalState.density[type] == amount) then
        setDensityKVP(type, amount)
    end

    return (globalState.density[type] == amount)
end

lib.callback.register('xt-density:server:setDensity', function(source, type, amount)
    local xPlayer = ESX.GetPlayerFromId(source)

    -- Check if the player is an admin or superadmin
    if xPlayer.getGroup() ~= 'admin' and xPlayer.getGroup() ~= 'superadmin' then
        return
    end
    
    return setDensity(type, amount)
end)

lib.callback.register('xt-density:server:toggleServerDensity', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    -- Check if the player is an admin or superadmin
    if xPlayer.getGroup() ~= 'admin' and xPlayer.getGroup() ~= 'superadmin' then
        return
    end

    local setState = not globalState.disableDensity
    globalState.disableDensity = setState

    if globalState.disableDensity == setState then
        setDisableDensityKVP(setState)
    end

    return globalState.disableDensity == setState
end)

lib.callback.register('xt-density:server:hasDensityMenuPerm', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    -- Check if the player is an admin or superadmin
    if xPlayer.getGroup() == 'admin' or xPlayer.getGroup() == 'superadmin' then
        return true
    else
        return false
    end
end)

lib.addCommand(config.commandName, {
    help = 'Server Vehicle / Ped Density (Admin Only)',
    params = {},
    restricted = 'group.admin'
}, function(source, args, raw)
    TriggerClientEvent('xt-density:client:densityMenu', source)
end)

if config.blacklisted.enableBlacklist then
    AddEventHandler('entityCreating', function(handle)
        local entityModel = GetEntityModel(handle)

        if config.blacklisted.models[entityModel] then
            CancelEvent()
        end
    end)
end
