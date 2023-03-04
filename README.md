![blacklistpreviewbig|690x388](https://cdn.discordapp.com/attachments/1078248796896641145/1081590528249958450/blacklistpreviewbig.png)
# CH-Blacklist
This FiveM resource is an **optimized version** of [kheire007/esx_blacklist](https://github.com/kheire007/esx_blacklist), my version does not include the pedblacklist and is more advanced to bypass the blacklist with a command.

⚠️ **Please read:**
If you use this FiveM Resource i highly recommend to change the folder name to something unique that will not be noticed.

## **Information:**

* Easy configuration with instructions in config.lua
* Blacklist vehicles and weapons.
* Client Resmon idle: 0.00ms.
* Client Resmon on vehicle or weapon remove: 0.01ms
* Checks every 0.5 seconds if a player has a blacklisted weapon equipped.
* Checks every 0.5 seconds if a player is a driver in a blacklisted vehicle.
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
[YouTube - CH-Blacklist](https://www.youtube.com/watch?v=zqaLESQZ98o)