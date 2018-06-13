#!/bin/bash
#

# First we will see if ran as root

if [[ $EUID -ne 0 ]]; then
    echo "This script will not execute unless ran as root. For example, run 'sudo bash ./make.sh' from the terminal."
    exit 1
fi

# After passing the test we will need to chmod the postinst and control files

chmod 0775 zipdrive-driver-1.0.0_ubuntu3.1_all/DEBIAN/control
chmod 0775 zipdrive-driver-1.0.0_ubuntu3.1_all/DEBIAN/postinst

# Now we compile

dpkg-deb --build zipdrive-driver-1.0.0_ubuntu3.1_all

# We finally have the new package

echo "Package compiling complete"
