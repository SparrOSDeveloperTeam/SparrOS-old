#!/bin/bash
#

# Uninstall zipdrive driver for Zip(R) Drive 250MB series (SCSI)

echo "Please unmount any mounted zip disks. Use 'zipdrive -u' and 'zipdrive -e' to umount and eject disks."

# First we will see if ran as root

if [[ $EUID -ne 0 ]]; then
    echo "This script will not execute unless ran as root. For example, run 'sudo bash ./zipdrive-install.sh' from the terminal."
    exit 1
fi

# After passing test we will chmod some files

chmod 777 /mnt/zip
chmod 777 /usr/local/sbin/zipdrive

# Next we will remove the dir 'zip'

rm -rf /mnt/zip

# Finally we will remove the executable

rm -r /usr/local/sbin/zipdrive

echo "Zipdrive driver uninstalled successfully."
