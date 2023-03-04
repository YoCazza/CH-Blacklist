# CH-Blacklist
This FiveM resource is an **optimized version** of [kheire007/esx_blacklist](https://github.com/kheire007/esx_blacklist), my version does not include the pedblacklist and is more advanced to bypass the blacklist with a command.

## **This FiveM resource is currently in beta.**

* Easy configuration with instructions in config.lua
* Blacklist vehicles and weapons.
* Client Resmon idle: 0.00ms.
* Client Resmon on remove: *Still checking..*
* Checks every 0.5 seconds if a players has a blacklisted weapon in his hands.
* Checks every 0.5 seconds if a players is a driver in a blacklisted vehicle.
* **This resource is working with ESX and Ace Perms.**

### **How to use:**

This Resource is using Ace Perms, you can change the name in the config.

```lua

-- this is an example for permission setup

add_principal identifier.discord:YOURDISCORDID group.admin

add_ace group.admin CH.Bypass allow

```
Standard command if CH.Bypass is allowed on your group: /toggleb

### **Video Showcase:**
*comming soon..*