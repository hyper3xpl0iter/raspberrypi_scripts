#!/bin/bash

################################################################################################################
#
#    filename: raspbian_fresh_inst.sh
# description: Automatically clean all unused Raspbian bloatware
#      author: hyper3xpl0iter
#       email: devel@introsec.ca
#         GPG: 4375 A9A8 A7B0 BCBC 44BD  DB42 4761 C4EF 2A01 1C69
#     bitcoin: 1LHsfZrES8DksJ41JAXULimLJjUZJf7Qns
#        date: 11/29/2016
#
################################################################################

### REMOVE BLOAT PACKAGES
apt-get purge --remove epiphany-browser xpdf weston omxplayer chromium-browser \
libreoffice* claws-mail claws-mail-i18n \
galculator geany geany-common leafpad omxplayer realvnc-vnc-server \
realvnc-vnc-viewer samba-common samba-common-bin supercollider* \
whiptail idle python3-pygame python-pygame python-tk idle3 \
python3-tk python3-rpi.gpio python-serial python3-serial python-picamera \
python3-picamera python3-pygame python-pygame python-tk python3-tk \
debian-reference-en dillo x2x scratch nuscratch timidity smartsim \
penguinspuzzle sonic-pi python3-numpy python3-pifacecommon \
python3-pifacedigitalio python3-pifacedigital-scratch-handler \
python-pifacecommon python-pifacedigitalio oracle-java8-jdk \
minecraft-pi python-minecraftpi wolfram-engine

### Clean and remove leftover software
sudo apt-get autoclean
sudo apt-get autoremove

