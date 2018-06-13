## Setting up zipdrive driver

To setup the zipdrive driver, download `zipdrive-driver-1.0.0_ubuntu3.1_all.deb` from <a href="#">here</a>, and run

`sudo dpkg --install zipdrive-driver-1.0.0_ubuntu3.1_all.deb`

The package will install.

## Removing the driver

To remove the driver, run the command

`sudo dpkg --remove zipdrive-driver`

and rm the `/mnt/zip` folder.

## zipdrive commands

* `sudo zipdrive -m` mounts the diskette.
* `sudo zipdrive -u` umounts the diskette.
* `sudo zipdrive -e` ejects the diskette from the physical drive.
