# Proxmox-no-subscription
## Run it
```
bash Proxmox-no-subscription/fix-proxmox-repos.sh
```
### Notes:
* This script assumes Debian Bookworm + Proxmox VE 8.x + Ceph Quincy.
* If you don’t use Ceph, you can delete or comment out the Ceph section in the script.
* Running apt full-upgrade may install a new kernel → reboot required.
