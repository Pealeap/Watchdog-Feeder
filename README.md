# Watchdog-Feeder
Keeps feeding the watchdog after you hotboot a custom ROM using OneLineage, so the phone doesn't reboot

# How does it work
#### Once you switch to the custom ROM, the app will set the prop vendor.hotboot.rom to 1

#### Service.sh keeps waiting until this prop is set to 1

#### Once it's 1, service.sh keeps feeding softdog so it doesn't reboot the device:
```bash
echo "1" > /dev/softdog
```

---

# How to use
#### This module is meant to be flashed on a jailbroken KernelSU setup, it might not work with other managers.

#### Step 1: Install [Hybrid Mount](https://github.com/Hybrid-Mount/meta-hybrid_mount)
#### Step 2: Install this module
#### Step 3: Switch to your custom ROM using OneLineage, OneLemon or OneOS

---

# Credits
#### Me for the module
#### The credits for Hybrid Mount, OneOS, Lemon UI and OneLineage goes to the original developers.
