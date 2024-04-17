CH = {
    -- Permissions and timing configuration
    AceName = "car.bypass",      -- Ace permission for bypassing vehicle blacklist
    CheckTime = 250,                  -- Interval (ms)
    Command = "bypass-blacklist",     -- Command to toggle blacklist bypass

    -- Notification messages
    LangBypassOn = "Bypass has been enabled",
    LangBypassOff = "Bypass has been disabled",
    LangNoPermissions = "You dont have permissions for this command!", 
    LangVehicleBlacklisted = "This vehicle is blacklisted",
    LangWeaponBlacklisted = "This weapon is blacklisted",

    -- List of blacklisted weapons
    Weapons = {
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
        -- Add more weapons as needed
    },

    -- List of blacklisted vehicles
    Vehicles = {
        "jet",
        "rhino",
        "apc",
        -- Add more vehicles as needed
    }
}