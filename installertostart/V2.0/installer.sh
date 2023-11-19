#!/bin/bash

updater=$(curl -O https://raw.githubusercontent.com/Limo123123/limo-subsystem/main/installfilespackages/packages/updater)
chmod u+x,o+x $updater

limo=$(curl -O https://raw.githubusercontent.com/Limo123123/limo-subsystem/main/installfilespackages/packages/limo)
chmod u+x,o+x $limo

# Verschiebe die Dateien nach /usr/bin
sudo mv $updater /usr/bin
sudo mv $limo /usr/bin

# Gebe eine Erfolgsmeldung aus
if [ -f /usr/bin/updater ] && [ -f /usr/bin/limo ]; then
  echo "Erfolgreich installiert!"
else
  echo "Konnte nicht installiert werden."
fi
