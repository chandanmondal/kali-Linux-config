#!/usr/bin/env bash
# setting chnages
# setup best resolution
xrandr -s 1280x800
# time zone changed
timedatectl set-timezone Asia/Kolkata
## Source list change
echo deb-src http://http.kali.org/kali kali main non-free contrib >> /etc/apt/sources.list
echo deb http://security.kali.org/kali-security kali/updates main contrib non-free >> /etc/apt/sources.list
echo deb-src http://security.kali.org/kali-security kali/updates main contrib non-free >> /etc/apt/sources.list
echo deb http://kali.cs.nctu.edu.tw/kali kali-rolling main non-free contrib >> /etc/apt/sources.list
echo deb http://kali.cs.nctu.edu.tw/ /kali main contrib non-free >> /etc/apt/sources.list
echo deb http://kali.cs.nctu.edu.tw/ /wheezy main contrib non-free >> /etc/apt/sources.list
echo deb http://kali.cs.nctu.edu.tw/kali kali-dev main contrib non-free >> /etc/apt/sources.list
echo deb http://kali.cs.nctu.edu.tw/kali kali-dev main/debian-installer >> /etc/apt/sources.list
echo deb-src http://kali.cs.nctu.edu.tw/kali kali-dev main contrib non-free >> /etc/apt/sources.list
echo deb http://kali.cs.nctu.edu.tw/kali kali main contrib non-free >> /etc/apt/sources.list
echo deb http://kali.cs.nctu.edu.tw/kali kali main/debian-installer >> /etc/apt/sources.list
echo deb-src http://kali.cs.nctu.edu.tw/kali kali main contrib non-free >> /etc/apt/sources.list
echo deb http://kali.cs.nctu.edu.tw/kali-security kali/updates main contrib non-free >> /etc/apt/sources.list
echo deb-src http://kali.cs.nctu.edu.tw/kali-security kali/updates main contrib non-free >> /etc/apt/sources.list
echo deb http://kali.cs.nctu.edu.tw/kali kali-bleeding-edge main >> /etc/apt/sources.list
echo deb http://http.kali.org/kali kali-rolling main non-free contrib >> /etc/apt/sources.list
echo deb-src http://http.kali.org/kali kali-rolling main non-free contrib >> /etc/apt/sources.list
echo deb http://http.kali.org/kali kali-rolling main non-free contrib >> /etc/apt/sources.list
echo deb http://ftp.harukasan.org/kali kali-rolling main non-free contrib >> /etc/apt/sources.list
echo deb-src http://ftp.harukasan.org/kali kali-rolling main non-free contrib >> /etc/apt/sources.list
echo deb https://mirrors.ocf.berkeley.edu/kali kali-rolling main non-free contrib >> /etc/apt/sources.list
echo deb-src https://mirrors.ocf.berkeley.edu/kali kali-rolling main non-free contrib >> /etc/apt/sources.list
echo deb http://ch.archive.ubuntu.com/ubuntu/ saucy main restricted >> /etc/apt/sources.list
echo deb-src http://ch.archive.ubuntu.com/ubuntu/ saucy main restricted >> /etc/apt/sources.list
echo deb http://httpredir.debian.org/debian jessie main >> /etc/apt/sources.list
echo deb-src http://httpredir.debian.org/debian jessie main >> /etc/apt/sources.list
echo deb http://deb.torproject.org/torproject.org wheezy main >> /etc/apt/sources.list
echo deb http://security.debian.org/debian-security wheezy/updates main >> /etc/apt/sources.list
