CH = {
	-- Options Ace perms and checktime.
    AcePermsVehicle = "CH.bypassveh", -- Your ace perms vehicle bypass name.
    AcePermsWeapon = "CH.bypasswep", -- Your ace perms weapon bypass name.
    CheckTime = 250, -- The time for checking if a player has a blacklisted weapon / vehicle.

    -- Commands
    BlacklistBypassVehiclesCommand = "bypass-v", -- With this command you have a bypass so you can drive in every blacklisted vehicle.
    BlacklistBypassWeaponsCommand = "bypass-w", -- With this command you have a bypass so you can shoot every blacklisted weapon.

    -- Language.
    ShowNotifyOnDelete = true, -- Show notifications on weapon / vehicle delete?
    vBypassOn = "Vehicle bypass on",
    vBypassOff = "Vehicle bypass off",
    wBypassOn = "Weapon bypass on",
    wBypassOff = "Weapon bypass off",
    NoPerms = "You dont have permissions for this command!",
    vBlacklisted = "This vehicle is blacklisted",
    wBlacklisted = "This weapon is blacklisted",

    -- Blacklist Weapons.
    BlacklistWeapons = {
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
        --"add more",
    },

    -- Blacklist Vehicles.
    BlacklistVehicles = {
        "jet",
        "lazer",
        --"add more",
    }
}