local allowedToUsewepwep = false
local bypasswep = false

Citizen.CreateThread(function()
	TriggerServerEvent("ch_checkperms_wep:isAllowed")
end)

RegisterNetEvent("ch_checkperms_wep.returnIsAllowed")
AddEventHandler("ch_checkperms_wep.returnIsAllowed", function(isAllowed)
    allowedToUsewep = isAllowed
end)

function isWeaponBlacklisted(model)
	for _, blacklistedWeapon in pairs(CH.BlacklistWeapons) do
		if model == GetHashKey(blacklistedWeapon) then
			return true
		end
	end
	return false
end

function CheckWeaponBlacklist()
	weapons = CH.BlacklistWeapons
	for i, weapons in pairs(weapons) do
		print("- "..weapons)
	end
end

-- Prints blacklisted weapons in client console.
RegisterCommand(CH.BlacklistPrintBlacklistedWeapons, function(source, args, rawCommand)
	if allowedToUsewep then
		CheckWeaponBlacklist()
	else
		ShowMessage(CH.NoPerms)
	end
end)

RegisterCommand(CH.BlacklistBypassWeaponsCommand, function(source, args, rawCommand)
	if allowedToUsewep then
		if not bypasswep then
			bypasswep = true
			ShowMessage(CH.wBypassOn)
		elseif bypasswep then
			bypasswep = false
			ShowMessage(CH.wBypassOff)
		end
	else
		ShowMessage(CH.NoPerms)
	end
end)

Citizen.CreateThread(function()
	while true do
		Wait(CH.CheckTime)
		playerPed = GetPlayerPed(-1)
		if playerPed then
			nothing, weapon = GetCurrentPedWeapon(playerPed, true)
			if not bypasswep then
				if isWeaponBlacklisted(weapon) then
					RemoveWeaponFromPed(playerPed, weapon)
					if CH.ShowNotifyOnDelete then
					ShowMessage(CH.wBlacklisted)
					end
				end
			end
		end
	end
end)