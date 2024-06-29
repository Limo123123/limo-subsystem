#!/bin/bash

mkdir installfilesfrominstall
cd installfilesfrominstall
wget https://raw.githubusercontent.com/Limo123123/limo-subsystem/main/installfilespackages/packages/updater
wget https://raw.githubusercontent.com/Limo123123/limo-subsystem/main/installfilespackages/packages/limo

chmod u+x updater
chmod u+x limo

sudo cp limo /usr/bin/
sudo cp updater /usr/bin/

cd

rm -r installfilesfrominstall

echo "Install Complete"
