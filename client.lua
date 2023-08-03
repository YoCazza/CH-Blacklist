local allowedToUsevehveh = false
local bypassveh = false
local allowedToUsewepwep = false
local bypasswep = false

Citizen.CreateThread(function()
	TriggerServerEvent("ch_checkperms_veh:isAllowed")
	TriggerServerEvent("ch_checkperms_wep:isAllowed")
end)

RegisterNetEvent("ch_checkperms_veh.returnIsAllowed")
AddEventHandler("ch_checkperms_veh.returnIsAllowed", function(isAllowed)
    allowedToUseveh = isAllowed
end)

RegisterNetEvent("ch_checkperms_wep.returnIsAllowed")
AddEventHandler("ch_checkperms_wep.returnIsAllowed", function(isAllowed)
    allowedToUsewep = isAllowed
end)

function ShowMessage(text)
	BeginTextCommandThefeedPost("STRING")
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandThefeedPostTicker(true, false)
end

function checkCar(car)
	if not bypassveh and car then
		local carModel = GetEntityModel(car)
		if isCarBlacklisted(carModel) then
			DeleteEntity(car)
			if CH.ShowNotifyOnDelete then
				ShowMessage(CH.vBlacklisted)
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
		ShowMessage(CH.NoPerms)
	end
end)

RegisterCommand(CH.BlacklistBypassVehiclesCommand, function(source, args, rawCommand)
	if allowedToUseveh then
		bypassveh = not bypassveh
		ShowMessage(bypassveh and CH.vBypassOn or CH.vBypassOff)
	else
		ShowMessage(CH.NoPerms)
	end
end)

Citizen.CreateThread(function()
	while true do
		Wait(CH.CheckTime)
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
		bypasswep = not bypasswep
		ShowMessage(bypasswep and CH.wBypassOn or CH.wBypassOff)
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