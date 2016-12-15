#!/bin/bash

################################################################################
#
#    filename: rpi_firefox_inst.sh
# description: script to download and install Firefox on RPI3
#       email: hyper3xpl0iter@gmail.com      
#     website: https://www.th3c1inic.org 
#         GPG: 4375 A9A8 A7B0 BCBC 44BD  DB42 4761 C4EF 2A01 1C69
#     bitcoin: 13xSeXftdyJWXo6vsQ2pUvBEqPFn9q8o79
#        date: Thu Dec 15 10:14:14 EST 2016                                                       
#
################################################################################

### INSTALL FIREFOX
cd /tmp
wget https://launchpad.net/~ubuntu-mozilla-security/+archive/ubuntu/ppa/+build/11198626/+files/firefox_50.0+build2-0ubuntu0.14.04.2_armhf.deb
wget https://launchpad.net/~ubuntu-mozilla-security/+archive/ubuntu/ppa/+build/11198626/+files/firefox-globalmenu_50.0+build2-0ubuntu0.14.04.2_armhf.deb
wget https://launchpad.net/~ubuntu-mozilla-security/+archive/ubuntu/ppa/+build/11198626/+files/firefox-dbg_50.0+build2-0ubuntu0.14.04.2_armhf.deb   

sudo dpkg -i firefox_*.deb && sudo dpkg -i firefox-dbg*.deb && sudo dpkg -i firefox-globalmenu*.deb
