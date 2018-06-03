#!/bin/bash
#

# First we will check to see if ran as root
if [[ $EUID -ne 0 ]]; then
    echo "This script will not execute unless ran as root. For example, run 'sudo bash ./cuda-install.sh' from the terminal."
    exit 1
fi

# After passing the test, we will install the debian archive

dpkg --install ~/cuda/cuda-repo-ubuntu1604-9-2-local-cublas-update-1_1.0-1_amd64.deb

# Finally we update cuda

apt-get update

echo "Cuda is now updated."
