#!/bin/bash
set -e

echo ">>> Disabling Proxmox enterprise repos..."
sed -i 's|^deb https://enterprise\.proxmox\.com|# deb https://enterprise.proxmox.com|' /etc/apt/sources.list /etc/apt/sources.list.d/*.list 2>/dev/null

echo ">>> Adding Proxmox VE no-subscription repo..."
echo "deb http://download.proxmox.com/debian/pve bookworm pve-no-subscription" > /etc/apt/sources.list.d/pve-no-subscription.list

echo ">>> Adding Ceph no-subscription repo (if you use Ceph)..."
echo "deb http://download.proxmox.com/debian/ceph-quincy bookworm no-subscription" > /etc/apt/sources.list.d/ceph-no-subscription.list

echo ">>> Updating package lists..."
apt update

echo ">>> Upgrading packages..."
apt full-upgrade -y

echo ">>> All done! Reboot if kernel was updated."
