#!/bin/bash
#

# Install zipdrive driver for Zip(R) Drive 250MB series (SCSI)

# First we will see if ran as root

if [[ $EUID -ne 0 ]]; then
    echo "This script will not execute unless ran as root. For example, run 'sudo bash ./zipdrive-install.sh' from the terminal."
    exit 1
fi

# After passing the test then we will create some folders

mkdir /mnt/zip

# Next we will set up the folder with chmod

chmod 777 /mnt/zip

# Then we will copy zipdrive to /usr/local/sbin/

cp zipdrive /usr/local/sbin/

# Finally we will chmod the executable

chmod 700 /usr/local/sbin/zipdrive

echo "The Zip(R) Drive driver is installed."
echo "Type 'zipdrive -m' to mount the disk."
echo "Type 'zipdrive -u' to umount the disk."
echo "Type 'zipdrive -e' to eject the disk."
