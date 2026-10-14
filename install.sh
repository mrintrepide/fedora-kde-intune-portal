#!/bin/bash

# Add Microsoft Prod RHEL 10 repository
sudo tee /etc/yum.repos.d/microsoft-prod.repo > /dev/null <<EOF
[microsoft-prod]
name=Microsoft Prod
baseurl=https://packages.microsoft.com/rhel/10/prod/
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft-2025.asc
sslverify=1
EOF

# Install missing GNOME Keyring dependency and intune-portal
sudo dnf install gnome-keyring-pam intune-portal

# Enable user's gnome-keyring-daemon service
# Start the service before reboot not work
systemctl --user enable gnome-keyring-daemon

# Reboot
echo "Need a reboot!"
