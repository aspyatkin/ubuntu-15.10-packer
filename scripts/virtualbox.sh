#!/bin/bash

set -e
set -x

sudo apt-get -y install dkms
sudo apt-get -y install make

sudo mount -o loop,ro ~/VBoxGuestAdditions.iso /mnt/
sudo /mnt/VBoxLinuxAdditions.run || :
sudo umount /mnt/
rm -f ~/VBoxGuestAdditions.iso
