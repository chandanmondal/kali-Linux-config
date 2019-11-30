#!/bin/bash

# Ensure we are being ran as root
if [ $(id -u) -ne 0 ]; then
    echo "This script must be ran as root"
    exit 1
fi
# For upgrades and sanity check, remove any existing i2p.list file
#rm -f /etc/apt/sources.list.d/i2p.list

## additional tools for kali linux from github or official cloning.
#lsof /var/lib/dpkg/lock
#sudo rm /var/lib/dpkg/lock
#
sudo apt update
apt-get update
apt list --upgradable
sudo apt-get --show-upgraded dist-upgrade
#sudo apt upgrade
apt --fix-broken install
#apt full-upgrade
#sudo apt autoremove
#
#
apt-get install kali-linux-all
apt-get install wine
apt-get install libigdgmm9
apt-get install libx265-176
apt-get install tor
apt-get install tor deb.torproject.org-keyring
apt-get install libunbound2
apt-get install proxychains
apt-get install build-essential fakeroot devscripts
apt-get build-dep tor
apt-get install gnome-tweak-tool
apt-get install initramfs-tools
apt-get install gdebi
sudo apt-get install cherrytree
apt-get install initramfs-tools
apt install rpcbind nfs-common
sudo apt install -y nfs-kernel-server
apt-get install cuckoo
sudo apt-get install git mongodb libffi-dev build-essential python-django python python-dev python-pip python-pil python-sqlalchemy python-bson python-dpkt python-jinja2 python-magic python-pymongo python-gridfs python-libvirt python-bottle python-pefile python-chardet tcpdump -y
apt-get -f install && dpkg -i kali-anonsurf-1.0.deb
apt-get install tcpdump




#wine
#
apt-get install wine
# installing Immunity
cd Win_tools
wine ./ImmunityDebugger_1_85_setup.exe
apt --fix-broken install
cd ..
#


#Mobile packages
install_ios_tools(){
    apt-get install -y ifuse ipheth-utils iphone-backup-analyzer libimobiledevice-utils libimobiledevice2 python-imobiledevice usbmuxd
}

install_msf_on_iphone(){
    apt-get update && apt-get dist-upgrade && apt-get install wget subversion

    wget http://ininjas.com/repo/debs/ruby_1.9.2-p180-1-1_iphoneos-arm.deb
    wget http://ininjas.com/repo/debs/iconv_1.14-1_iphoneos-arm.deb
    wget http://ininjas.com/repo/debs/zlib_1.2.3-1_iphoneos-arm.deb

    dpkg -i iconv_1.14-1_iphoneos-arm.deb
    dpkg -i zlib_1.2.3-1_iphoneos-arm.deb
    dpkg -i ruby_1.9.2-p180-1-1_iphoneos-arm.deb

    cd /private/var
    svn co https://www.metasploit.com/svn/framework3/trunk/ msf3
    ruby msfconsole
}

install_android_tools(){
    apt-get install -y abootimg smali android-sdk apktool dex2jar
    apt_add_repo ppa:nilarimogard/webupd8
    apt-get install -y android-tools-adb android-tools-fastboot
}

install_phone_tools()
{
    apt-get install gammu

    if ask "Install tools for iOS hacking?" Y; then
        install_ios_tools
    fi

    if ask "Install tools for Andoid hacking?" Y; then
        install_android_tools
    fi
}

if [ "${0##*/}" = "phone.sh" ]; then
    install_phone_tools
fi

