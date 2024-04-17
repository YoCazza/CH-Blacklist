local HasPermissions = false
local bypass = false

Citizen.CreateThread(function()
	TriggerServerEvent("blacklist:isAllowed")
end)

RegisterNetEvent("blacklist:isAllowed:return")
AddEventHandler("blacklist:isAllowed:return", function(isAllowed)
    HasPermissions = isAllowed
end)

RegisterCommand(CH.Command, function(source, args, rawCommand)
	if HasPermissions then
		bypass = not bypass
		lib.notify({ title = 'Blacklist Notification', description = bypass and CH.LangBypassOn or CH.LangBypassOff, type = bypass and 'success' or 'info' })
	else
		lib.notify({ title = 'Blacklist Notification', description = CH.LangNoPermissions, type = 'info' })
	end
end)

Citizen.CreateThread(function()
    while true do
        Wait(CH.CheckTime)
        local playerPed = PlayerPedId()
		local _, weapon = GetCurrentPedWeapon(playerPed, true)
        if not bypass then
            if IsPedInAnyVehicle(playerPed, false) then
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                if GetPedInVehicleSeat(vehicle, -1) == playerPed then
                    checkCar(vehicle)
                end
            end

            if isWeaponBlacklisted(weapon) then
                RemoveWeaponFromPed(playerPed, weapon)
                lib.notify({ type = 'info', description = CH.LangWeaponBlacklisted })
            end
        end
    end
end)

function checkCar(car)
    if car and isCarBlacklisted(GetEntityModel(car)) then
        DeleteEntity(car)
        lib.notify({ type = 'ban', description = CH.LangVehicleBlacklisted })
    end
end

function isCarBlacklisted(model)
	for _, blacklistedCar in pairs(CH.Vehicles) do
		if model == GetHashKey(blacklistedCar) then
			return true
		end
	end
	return false
end

function isWeaponBlacklisted(model)
	for _, blacklistedWeapon in pairs(CH.Weapons) do
		if model == GetHashKey(blacklistedWeapon) then
			return true
		end
	end
	return false
end

function _DeleteEntity(entity)
	Citizen.InvokeNative(0xAE3CBE5BF394C9C9, Citizen.PointerValueIntInitialized(entity))
end