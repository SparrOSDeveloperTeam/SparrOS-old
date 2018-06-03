#!/bin/bash
#

# Bash script for installing cuda for your linux system.

# First we'll check to see if I'm ran as root

if [[ $EUID -ne 0 ]]; then
    echo "This script will not execute unless ran as root. For example, run 'sudo bash ./cuda-install.sh' from the terminal."
    exit 1
fi

# Now that we passed the test let's install the debian package.

dpkg --install ~/cuda/cuda-repo-ubuntu1604-9-2-local_9.2.88-1_amd64.deb

# Next we will add the key to aptitude

apt-key add /var/cuda-repo-9-2-local/7fa2af80.pub

# Then we update the system

apt-get update

# Finally we install cuda

apt-get install cuda

# Script is done executing

echo "Cuda is now installed."
