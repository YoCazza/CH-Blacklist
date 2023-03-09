local allowedToUsevehveh = false
local bypassveh = false

Citizen.CreateThread(function()
	TriggerServerEvent("ch_checkperms_veh:isAllowed")
end)

RegisterNetEvent("ch_checkperms_veh.returnIsAllowed")
AddEventHandler("ch_checkperms_veh.returnIsAllowed", function(isAllowed)
    allowedToUseveh = isAllowed
end)

function ShowMessage(text)
	BeginTextCommandThefeedPost("STRING")
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandThefeedPostTicker(true, false)
end

function checkCar(car)
	if not bypassveh then
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

function CheckVehicleBlacklist()
	cars = CH.BlacklistVehicles
	for i, cars in pairs(cars) do
		print("- "..cars)
	end
end

-- Prints blacklisted vehicles in client console.
RegisterCommand(CH.BlacklistPrintBlacklistedVehicles, function(source, args, rawCommand)
	if allowedToUseveh then
		CheckVehicleBlacklist()
	else
		ShowMessage(CH.BlacklistNoPerms)
	end
end)

RegisterCommand(CH.BlacklistBypassVehiclesCommand, function(source, args, rawCommand)
	if allowedToUseveh then
		if not bypassveh then
			bypassveh = true
			ShowMessage(CH.BlacklistBypassVehON)
		elseif bypassveh then
			bypassveh = false
			ShowMessage(CH.BlacklistBypassVehOFF)
		end
	else
		ShowMessage(CH.BlacklistNoPerms)
	end
end)

Citizen.CreateThread(function()
	while true do
		Wait(500)
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
