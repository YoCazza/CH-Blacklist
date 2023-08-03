-- Check ace permissions
RegisterServerEvent("ch_checkperms_veh:isAllowed")
AddEventHandler("ch_checkperms_veh:isAllowed", function()
    if IsPlayerAceAllowed(source, CH.AcePermsVehicle) then
        TriggerClientEvent("ch_checkperms_veh.returnIsAllowed", source, true)
    else
        TriggerClientEvent("ch_checkperms_veh.returnIsAllowed", source, false)
    end
end)

RegisterServerEvent("ch_checkperms_wep:isAllowed")
AddEventHandler("ch_checkperms_wep:isAllowed", function()
    if IsPlayerAceAllowed(source, CH.AcePermsWeapon) then
        TriggerClientEvent("ch_checkperms_wep.returnIsAllowed", source, true)
    else
        TriggerClientEvent("ch_checkperms_wep.returnIsAllowed", source, false)
    end
end)

-- If you already changed the folder name you can remove this code.
local fnames = {'CH-Blacklist', 'Blacklist', 'blacklist', 'CH-Blacklist-main'}
AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then
        return
    end
    Wait(5000)
    for i, fname in ipairs(fnames) do
        if resourceName == fname then
            print("[^1WARNING^0]: The folder name '" .. resourceName .. "' contains the word 'blacklist'.")
            print("[^1WARNING^0]: We recommend changing the folder name to something unique that will not be noticed.")
            break
        end
    end
end)