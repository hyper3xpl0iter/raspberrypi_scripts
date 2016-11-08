#!/bin/bash

################################################################################################################
#
#    filename: package_clean.sh
# description: Automatically clean all Raspbian bloatware
#      author: hyper3xpl0iter
#       email: hyper3xpl0iter@gmail.com
#        date: 11/08/2016
#
################################################################################################################

## Update and Upgrade all packages
sudo apt-get update
sudo apt-get upgrade -y

## Remove all bloatware (leave basic system)
sudo apt-get remove --purge wolfram-engine scratch nuscratch pistore idle3 python3-tk python-picamera \
python3-picamera python3-pifacecommon python3-pifacedigitalio python3-pifacedigital-scratch-handler \
python-pifacecommon python-pifacedigitalio scratch nuscratch debian-reference-en dillo x2x \
timidity

## Remove Games
sudo apt-get remove --purge smartsim penguinspuzzle minecraft-pi python-minecraftpi python3-minecraftpi \
sonic-pi idle python3-pygame python-pygame python-tk python3-tk python3-numpy supercollider-common \
python3-pygame supercollider-supernova supercollider-server python-werkzeug python3-werkzeug pimixer \



## Remove Productivity Packages
sudo apt-get remove --purge libreoffice* poppler-utils xpdf debian-reference-common galculator xarchiver \
netsurf-common netsurf-gtk psmisc poppler-utils squeak-vm squeak-plugins-scratch chromium-browser freepats \
libraspberrypi-doc pypy realvnc-vnc-server rpi-chromium-mods samba-libs pypy-lib epiphany-browser-data \
realvnc-vnc-viewer geany dictionaries-common samba-common 

## Remove system extras
sudo apt-get remove --purge libavcodec56 omxplayer poppler-data greenfoot claws-mail-i18n python3-numpy \
geany-common gstreamer1.0-plugins-bad gstreamer1.0-plugins-good gstreamer1.0-plugins-base \
libgstreamer-plugins-bad1.0-0 cups-client python-gi gstreamer1.0-alsa 

## Remove unnecessary extras
sudo rm -rf /usr/share/doc/* /opt/vc/src/hello_pi/hello_video/test.h264 /home/pi/python_games
find /usr/share/locale/* -maxdepth 0 -type d |grep -v en |xargs sudo rm -rf
find /usr/share/man/* -maxdepth 0 -type d |grep -Pv 'man\d' |xargs sudo rm -rf

## Clean and reboot
apt-get -y autoremove
apt-get -y autoclean
shutdown -r now
