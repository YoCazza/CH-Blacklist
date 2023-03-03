RegisterServerEvent("ch_checkperms:isAllowed")
AddEventHandler("ch_checkperms:isAllowed", function()
    if IsPlayerAceAllowed(source, CH.BlacklistAcePermsName) then
        TriggerClientEvent("ch_checkperms.returnIsAllowed", source, true)
    else
        TriggerClientEvent("ch_checkperms.returnIsAllowed", source, false)
    end
end)