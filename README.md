![CH-Blacklist Preview|690x388](https://i.imgur.com/eIxdkxo.png)
# CH-Blacklist

**⚠️ This resource is now using [ox_lib](https://github.com/overextended/ox_lib)**

This is an optimized version of [kheire007/esx_blacklist](https://github.com/kheire007/esx_blacklist), this version is more advanced and can be bypassed with a command for Staff purposes.

## **Features:**
- Simple setup with detailed instructions in `config.lua`.
- Ability to blacklist specific vehicles and weapons.
- Minimal performance impact: Client Resmon idle at 0.00ms.
- Frequent checks (every 0.25 seconds, adjustable in config) for:
  - Blacklisted weapons equipped by players.
  - Players driving blacklisted vehicles.
- Compatible with ESX framework and ox_lib.

### **Usage:**

This resource utilizes Ace Permissions for administrative controls. Customize permission settings in the `config.lua` file:

```lua
-- Paste this in your server.cfg to make the permissions work
add_principal identifier.discord:YOURDISCORDID group.admin
add_ace group.admin car.bypass allow
```

### **Commands:**
- Use `/bypass-blacklist` for administrative purposes only. This command allows staff to bypass the blacklist checks.

### **Demo Video:**
Check out the [YouTube showcase of CH-Blacklist](https://www.youtube.com/watch?v=zqaLESQZ98o) (note: this video is outdated).
