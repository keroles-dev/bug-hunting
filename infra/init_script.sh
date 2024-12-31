#!/bin/bash

cd

sudo apt-get -y update

sudo apt-get -y install htop

sudo apt-get -y install nmap

sudo apt-get -y install amass

sudo apt-get -y install netcat-traditional

wget https://github.com/Stratus-Security/Subdominator/releases/latest/download/Subdominator

chmod 755 Subdominator

echo alias c='clear' >> ./.bashrc

#alias c='clear'
#alias l='ls'
#alias ll='ls -lh'
#alias lll='ls -lah'
