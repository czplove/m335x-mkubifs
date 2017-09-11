#!/bin/sh
dd if=/dev/zero of=/dev/shm/disk bs=1024 count=10240
insmod /lib/modules/usb/g_mass_storage.ko stall=0 file=/dev/shm/disk removable=1
#mkfs.vfat /dev/usb2
#mkdir /media/otg
#mount -vfat /dev/usb2/ /media/otg
