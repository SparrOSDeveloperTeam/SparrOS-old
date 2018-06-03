# How to setup drivers for nVidia devices

1. Download CUDA debian packages from <a href="https://developer.nvidia.com/cuda-downloads/">here</a>. Select Linux > x86_64 > Ubuntu > 16.04 > Debian Packages (Local).

2. Download all debs provided for the latest version, including patches.

3. Create a folder in your user directory called 'cuda' by launching `mkdir ~/cuda` and move all .deb files into that folder.

4. Launch the `cuda-install.sh` script in root first before launching `cuda-update.sh` in root.

5. Configure Cuda Toolkit to detect your nVidia devices.
