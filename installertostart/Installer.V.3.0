#!/bin/bash

# Überprüfen, ob der Benutzer root ist
if [ "$(id -u)" -ne 0 ]; then
    echo "Dieses Skript muss als root ausgeführt werden. Bitte führen Sie es mit sudo aus."
    exit 1
fi

# Funktion zum Installieren von Updates
install_updates() {
    echo "Führe 'sudo apt update' aus..."
    sudo apt update

    echo "Führe 'sudo apt upgrade -y' aus..."
    sudo apt upgrade -y
}

# Funktion zum Rebooten des Systems
reboot_system() {
    echo "Das System wird neu gestartet..."
    sudo reboot
}

# Installationsverzeichnis
INSTALL_DIR="/usr/bin"

# Hinzufügen des 'update'-Befehls
echo -e "#!/bin/bash\ninstall_updates" | sudo tee "$INSTALL_DIR/update" > /dev/null

# Hinzufügen des 'update_and_reboot'-Befehls
echo -e "#!/bin/bash\ninstall_updates\nreboot_system" | sudo tee "$INSTALL_DIR/update_and_reboot" > /dev/null

# Hinzufügen des 'limo'-Befehls
echo -e "#!/bin/bash\nif [ \"\$(id -u)\" -eq 0 ]; then\necho \"Du bist root!\"\nelse\necho \"Du bist kein root.\"\nfi" | sudo tee "$INSTALL_DIR/limo" > /dev/null

# Ausführbare Rechte setzen
sudo chmod +x "$INSTALL_DIR/update"
sudo chmod +x "$INSTALL_DIR/update_and_reboot"
sudo chmod +x "$INSTALL_DIR/limo"

echo "Die Befehle 'update', 'update_and_reboot' und 'limo' wurden erfolgreich hinzugefügt."
