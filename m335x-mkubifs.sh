#!/bin/sh
#sudo tar xvf rootfs.tar
echo "start make ubifs images"
sudo ./mkfs.ubifs -F -r  rootfs -e 0x1f000 -c 511 -m 2048 -o rootfs.ubifs

