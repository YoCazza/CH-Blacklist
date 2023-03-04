RegisterServerEvent("ch_checkperms:isAllowed")
AddEventHandler("ch_checkperms:isAllowed", function()
    if IsPlayerAceAllowed(source, CH.BlacklistAcePermsName) then
        TriggerClientEvent("ch_checkperms.returnIsAllowed", source, true)
    else
        TriggerClientEvent("ch_checkperms.returnIsAllowed", source, false)
    end
end)

-- If you have changed the folder name and you dont see any warnings you can delete the code below.
AddEventHandler('onResourceStart', function(resourceName)
  if (GetCurrentResourceName() ~= resourceName) then
    return
  end
  fnames = {'CH-Blacklist', 'Blacklist', 'blacklist', 'black-list', 'CH-Blacklist-main', 'ch-blacklist'}
  Wait(5000)
  for i, fname in ipairs(fnames) do
  if resourceName == fname then
      print("[^1WARNING^0] : We recommend changing the folder name, hackers can easily view folders and stop them, change the folder name to something unique that will not be noticed.")
    end
  end
end)