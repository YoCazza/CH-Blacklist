RegisterServerEvent("blacklist:isAllowed")
AddEventHandler("blacklist:isAllowed", function()
    TriggerClientEvent("blacklist:isAllowed:return", source, IsPlayerAceAllowed(source, CH.AceName))
end)

-- Remove this code if you have changed the folder name.
local blacklistNames = {'CH-Blacklist', 'Blacklist', 'blacklist', 'CH-Blacklist-main'}

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end
    Citizen.Wait(5000)
    for _, name in ipairs(blacklistNames) do
        if resourceName == name then
            print("^1[WARNING]^0: The folder name '" .. resourceName .. "' contains 'blacklist'.\nWe recommend changing the folder name to something unique that won't attract attention.")
            break
        end
    end
end)