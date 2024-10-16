%packages
nautilus
gnome-terminal

@hardware-support
@printing

# Network & Wifi
ModemManager
NetworkManager
NetworkManager-adsl
NetworkManager-openconnect-gnome
NetworkManager-openvpn-gnome
NetworkManager-ppp
NetworkManager-pptp-gnome
NetworkManager-ssh-gnome
NetworkManager-vpnc-gnome
NetworkManager-wifi
NetworkManager-wwan

# Multimedia
evince  # Document Viewer
loupe   # Image Viewer
snapshot  # Camera App 
gnome-music
gnome-backgrounds
desktop-backgrounds-gnome

# Utilities
baobab  # Disk Usage Analyzer
gnome-calculator
gnome-calendar
gnome-characters
gnome-clocks
gnome-disk-utility
gnome-font-viewer
gnome-software
gnome-system-monitor
gnome-tweaks
gnome-weather

# Extensions
gnome-extensions-app
gnome-browser-connector
gnome-shell-extension-dash-to-dock
gnome-shell-extension-appindicator
gnome-shell-extension-system-monitor
gnome-shell-extension-just-perfection  # Additional gnome tweaking app
gnome-shell-extension-launch-new-instance
# gnome-shell-extension-rounded-window-corners  # https://extensions.gnome.org/extension/7048/rounded-window-corners-reborn/
# gnome-shell-extension-rounded-tilingshell  # https://extensions.gnome.org/extension/7065/tiling-shell/

adw-gtk3-theme  # Gtk 2/3 dark compability theme for legacy applications 

# @fonts
ibm-plex-mono-fonts
ibm-plex-sans-fonts
ibm-plex-serif-fonts
intel-one-mono-fonts

# Commands and Utilities
wget
pciutils

# Remove
# -firefox # You need firefox for the live iso it can't be removed due to dependencies
-gnome-tour

%end
