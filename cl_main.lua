local allowedToUse = false
local bypass = false

Citizen.CreateThread(function()
	TriggerServerEvent("ch_checkperms:isAllowed")
end)

RegisterNetEvent("ch_checkperms.returnIsAllowed")
AddEventHandler("ch_checkperms.returnIsAllowed", function(isAllowed)
    allowedToUse = isAllowed
end)

function ShowMessage(text)
	BeginTextCommandThefeedPost("STRING")
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandThefeedPostTicker(true, false)
end

function checkCar(car)
	if not bypass then
		if car then
			carModel = GetEntityModel(car)
			carName = GetDisplayNameFromVehicleModel(carModel)

			if isCarBlacklisted(carModel) then
				_DeleteEntity(car)
				ShowMessage(CH.VehicleIsBlacklisted)
			end
		end
	end
end

function isCarBlacklisted(model)
	for _, blacklistedCar in pairs(CH.BlacklistVehicles) do
		if model == GetHashKey(blacklistedCar) then
			return true
		end
	end
	return false
end

function _DeleteEntity(entity)
	Citizen.InvokeNative(0xAE3CBE5BF394C9C9, Citizen.PointerValueIntInitialized(entity))
end

function isWeaponBlacklisted(model)
	for _, blacklistedWeapon in pairs(CH.BlacklistWeapons) do
		if model == GetHashKey(blacklistedWeapon) then
			return true
		end
	end
	return false
end

RegisterCommand(CH.BlacklistBypassCommand, function(source, args, rawCommand)
	if allowedToUse then
		if not bypass then
			bypass = true
			ShowMessage(CH.BlacklistBypassON)
		elseif bypass then
			bypass = false
			ShowMessage(CH.BlacklistBypassOFF)
		end
	else
		ShowMessage(CH.BlacklistNoPerms)
	end
end)

Citizen.CreateThread(function()
	while true do
		Wait(200)
		if IsPedInAnyVehicle(GetPlayerPed(-1)) then
		v = GetVehiclePedIsIn(playerPed, false)
		end
		playerPed = GetPlayerPed(-1)
		if playerPed and v then
		if GetPedInVehicleSeat(v, -1) == playerPed then
			checkCar(GetVehiclePedIsIn(playerPed, false))
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Wait(200)
		playerPed = GetPlayerPed(-1)
		if playerPed then
			nothing, weapon = GetCurrentPedWeapon(playerPed, true)
			if not bypass then
				if isWeaponBlacklisted(weapon) then
					RemoveWeaponFromPed(playerPed, weapon)
					ShowMessage(CH.WeaponIsBlacklisted)
				end
			end
		end
	end
end)