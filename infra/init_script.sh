#!/bin/bash

cd /home/kali

echo '* libraries/restart-without-asking boolean true' | sudo debconf-set-selections

sudo apt-get -y update

sudo apt-get -y install wordlists

sudo apt-get -y install htop

sudo apt-get -y install htop

sudo apt-get -y install nmap

sudo apt-get -y install amass

sudo apt-get -y install netcat-traditional

sudo apt-get -y install net-tools

sudo apt-get -y install hydra

sudo apt-get -y install ffuf

sudo apt-get -y install nikto

sudo apt-get -y install dirsearch

sudo apt-get -y --force-yes install metasploit-framework

wget https://github.com/Stratus-Security/Subdominator/releases/latest/download/Subdominator

chmod 755 Subdominator

echo alias c=clear >> ./.bashrc
echo alias c=clear >> ./.zshrc
echo alias mpip=\"curl https://checkip.amazonaws.com\" >> ./.bashrc
echo alias mpip=\"curl https://checkip.amazonaws.com\" >> ./.zshrc
echo alias l=\"ls -lah\" >> ./.bashrc
echo alias l=\"ls -lah\" >> ./.zshrc

wget "https://raw.githubusercontent.com/ifconfig-me/Directory-Traversal-Payloads/refs/heads/main/payloads.txt" -O ./directory_traversal_payloads

git clone https://github.com/iamj0ker/bypass-403
cd bypass-403
chmod +x bypass-403.sh
sudo apt-get -y install figlet
sudo apt-get -y install jq
cd ..
