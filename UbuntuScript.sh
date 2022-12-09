#!/bin/bash
clear
echo "Created by Minjun Kim & Sachin Raja, Team 1, Troy High School, Fullerton, CA, USA"
echo "In dedication to Matthew DuBruh, patron saint of Team 1"
echo "Last Modified on"
echo "Linux Ubuntu Script All-Purpose"

touch ~/Desktop/Script.log
echo > ~/Desktop/Script.log
chmod 777 ~/Desktop/Script.log

clear
echo "Check for any user folders that do not belong to any users in /home/."
ls -a /home/ >> ~/Desktop/Script.log

clear
echo "Check for any files for users that should not be administrators in /etc/sudoers.d."
ls -a /etc/sudoers.d >> ~/Desktop/Script.log

clear
apt-get install ufw -y -qq
ufw enable
ufw deny 1337
echo "Firewall enabled and port 1337 blocked."

clear
chmod 777 /etc/apt/apt.conf.d/10periodic
cp /etc/apt/apt.conf.d/10periodic ~/Desktop/backups/
echo -e "APT::Periodic::Update-Package-Lists \"1\";\nAPT::Periodic::Download-Upgradeable-Packages \"1\";\nAPT::Periodic::AutocleanInterval \"1\";\nAPT::Periodic::Unattended-Upgrade \"1\";" > /etc/apt/apt.conf.d/10periodic
chmod 644 /etc/apt/apt.conf.d/10periodic
echo "Daily update checks, download upgradeable packages, autoclean interval, and unattended upgrade enabled."

clear
echo "Script is complete."
