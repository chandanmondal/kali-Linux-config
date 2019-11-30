#!/usr/bin/env bash
# Anonymous in Kali Linux
apt-get install tor
apt-get install proxychains
nano /etc/resolv.conf
# Open resolve.conf is uncomment by removing hash dynamic_chain
leafpad /etc/proxychains.conf
#add proxy IP and port below if resolv.conf and save
service tor start
#test service is working or not
proxychains firefox www.google.com
#
#If it is not works open nano /etc/resolv.conf and remove proxy
#Install Anon Surf


#anonsurf
# Compile the i2p ppa
echo "deb http://deb.i2p2.no/ unstable main" > /etc/apt/sources.list.d/i2p.list # Default config reads repos from sources.list.d
wget https://geti2p.net/_static/i2p-debian-repo.key.asc -O /tmp/i2p-debian-repo.key.asc # Get the latest i2p repo pubkey
apt-key add /tmp/i2p-debian-repo.key.asc # Import the key
rm /tmp/i2p-debian-repo.key.asc # delete the temp key
apt-get update # Update repos

if [[ -n $(cat /etc/os-release |grep kali) ]]
then
    apt-get install libservlet3.0-java
    wget http://ftp.us.debian.org/debian/pool/main/j/jetty8/libjetty8-java_8.1.16-4_all.deb
    dpkg -i libjetty8-java_8.1.16-4_all.deb # This should succeed without error
    apt-get install libecj-java libgetopt-java libservlet3.0-java glassfish-javaee ttf-dejavu i2p i2p-router libjbigi-jni #installs i2p and other dependencies
    apt-get -f install # resolves anything else in a broken state
fi

apt-get install -y i2p-keyring #this will ensure you get updates to the repository's GPG key
apt-get install -y secure-delete tor i2p # install dependencies, just in case

# Configure and install the .deb
dpkg-deb -b kali-anonsurf-deb-src/ kali-anonsurf.deb # Build the deb package
dpkg -i kali-anonsurf.deb || (apt-get -f install && dpkg -i kali-anonsurf.deb) # this will automatically install the required packages

exit 0

