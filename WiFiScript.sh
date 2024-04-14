!/bin/bash

echo "deb http://httpredir.debian.org/debian/ stretch main contrib non-free" >> /etc/apt/sources.list
echo "deb http://http.debian.net/debian/ jessie main contrib non-free" >> /etc/apt/sources.list

apt-get update
apt-get install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms
sudo apt-get install broadcom-sta-dkms
apt-get upgrade
modprobe -r b44 b43 b43legacy ssb brcmsmac
modprobe wl
apt-get install broadcom-sta-dkms linux-headers-$(uname -r)
apt-get install broadcom-sta-dkms linux-image-4.6.0-kali1-amd64 linux-headers-4.6.0-kali1-amd64
apt-get upgrade
reboot


