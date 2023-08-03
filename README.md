![blacklistpreviewbig|690x388](https://media.discordapp.net/attachments/1115592251767271457/1115592507879850044/blacklist_banner.png?width=1193&height=671)
# CH-Blacklist
## ⚠️ If you use this FiveM Resource i highly recommend to change the folder name to something unique that will not be noticed.
This FiveM resource is an **optimized version** of [kheire007/esx_blacklist](https://github.com/kheire007/esx_blacklist), my version does not include the pedblacklist and is more advanced to bypass the blacklist with a command.

## **Information:**

* Easy configuration with instructions in config.lua
* Blacklist vehicles and weapons.
* Client Resmon idle: 0.00ms.
* Client Resmon on vehicle or weapon remove: 0.01ms
* Checks every 0.25 seconds (changeable in config) if a player has a blacklisted weapon equipped.
* Checks every 0.25 seconds (changeable in config) if a player is a driver in a blacklisted vehicle.
* **This resource is working with ESX and Ace Perms.**

## **To-do:**

* Add a option for ox_inventory to remove weapon item.
* ~~Rewrite vehicle and weapon client~~

### **How to use:**

This Resource is using Ace Perms, you can change the name in the config.

```lua

-- this is an example for permission setup

add_principal identifier.discord:YOURDISCORDID group.admin

add_ace group.admin CH.Bypass allow

```

Standard commands:
Bypass blacklisted vehicles: /bypass-v
Bypass blacklisted weapons: /bypass-w

### **Video Showcase:**
[YouTube - CH-Blacklist](https://www.youtube.com/watch?v=zqaLESQZ98o) (outdated)
