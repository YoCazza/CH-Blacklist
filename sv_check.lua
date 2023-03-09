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

-- If you have changed the folder name you can delete the code below.
AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    fnames = {'CH-Blacklist', 'Blacklist', 'blacklist', 'black-list', 'CH-Blacklist-main'}
    Wait(5000)
    for i, fname in ipairs(fnames) do
    if resourceName == fname then
        print("[^1WARNING^0] : We recommend changing the folder name, hackers can easily view folders and stop them, change the folder name to something unique that will not be noticed.")
    end
    end
end)