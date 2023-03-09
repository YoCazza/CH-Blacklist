CH = {}

-- This will be the ACE Perms name for your group(s).
CH.AcePermsVehicle = "CH.bypass"
CH.AcePermsWeapon = "CH.bypass"

-- This will be your in-game slash command.
CH.BlacklistBypassVehiclesCommand = "bypassvehicles"
CH.BlacklistBypassWeaponsCommand = "bypassweapons"

-- This will be your in-game slash command to print all the vehicles or weapons in client console (F8)
-- The command will only work if you have the bypass ace perms.
CH.BlacklistPrintBlacklistedVehicles = "printblacklistedvehicles"
CH.BlacklistPrintBlacklistedWeapons = "printblacklistedweapons"

-- Language Vehicles (standard: ENG)
CH.BlacklistNoPerms = "You dont have the right permissions to use this command."
CH.BlacklistBypassVehON = "Vehicle bypass ~g~ON~s~."
CH.BlacklistBypassVehOFF = "Vehicle bypass ~r~OFF~s~."
CH.VehicleIsBlacklisted = "This vehicle is ~r~blacklisted~s~."

-- Language Weapons (standard: ENG)
CH.BlacklistBypassWepON = "Weapon bypass ~g~ON~s~."
CH.BlacklistBypassWepOFF = "Weapon bypass ~r~OFF~s~."
CH.WeaponIsBlacklisted = "This weapon is ~r~blacklisted~s~."

-- The weapons that you want to blacklist.
CH.BlacklistWeapons = {
	"WEAPON_EMPLAUNCHER",
	"WEAPON_RAYMINIGUN",
	"WEAPON_COMPACTLAUNCHER",
	"WEAPON_HOMINGLAUNCHER",
	"WEAPON_RAILGUN",
	"WEAPON_FIREWORK",
	"WEAPON_GRENADELAUNCHER_SMOKE",
	"WEAPON_GRENADELAUNCHER",
	"WEAPON_RPG",
	"WEAPON_GRENADE",
	"WEAPON_BZGAS",
	"WEAPON_MOLOTOV",
	"WEAPON_STICKYBOMB",
	"WEAPON_PROXMINE",
	"WEAPON_PIPEBOMB",
	"WEAPON_SMOKEGRENADE",
	"WEAPON_RAYCARBINE",
	"WEAPON_RAYPISTOL",
	"WEAPON_FLAREGUN",
	"WEAPON_FLARE",
}

-- The vehicles that you want to blacklist.
CH.BlacklistVehicles = {
    "lazer",
    "jet",
}