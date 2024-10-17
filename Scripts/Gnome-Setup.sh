# Enable fractional scaling on all electron apps under wayland - requires reboot
echo "ELECTRON_OZONE_PLATFORM_HINT=auto" | sudo tee -a /etc/environment


gsettings set org.gnome.desktop.interface enable-hot-corners true
gsettings set org.gnome.settings-daemon.plugins.power ambient-enabled false
# Pointer behaviour
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
gsettings set org.gnome.desktop.wm.preferences focus-mode 'sloppy'
gsettings set org.gnome.desktop.wm.preferences auto-raise false
# Looks
gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'
# gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'
gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface font-antialiasing rgba

# Key bindings - unset for VS Code
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "[]"


# Look

# Change the theme to adw-gtk3-dark for gtk2/3 legacy apps.
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

# Fonts
font_ibm_plex_sans_reg="IBM Plex Sans Regular 11"
font_intel_one_mono="Intel One Mono Regular 11"
gsettings set org.gnome.desktop.interface font-name "$font_ibm_plex_sans_reg"
gsettings set org.gnome.desktop.interface document-font-name "$font_ibm_plex_sans_reg"
gsettings set org.gnome.desktop.interface monospace-font-name "$font_intel_one_mono"
gsettings set org.gnome.na utilus.desktop font "$font_ibm_plex_sans_reg"

gsettings set org.gnome.desktop.interface font-name "IBM Plex Sans Regular 11"
gsettings set org.gnome.desktop.interface document-font-name "IBM Plex Sans Regular 11"
gsettings set org.gnome.desktop.interface monospace-font-name "Intel One Mono Regular 11"
gsettings set org.gnome.na utilus.desktop font "IBM Plex Sans Regular 11"


# Setup dock
gsettings set org.gnome.shell favorite-apps "[
  'brave-browser.desktop',
  'org.gnome.Terminal.desktop',
  'code.desktop',
  'org.gnome.Nautilus.desktop',
  'github-desktop.desktop',
  'org.gnome.Software.desktop'
]"


# Disable Gnome Power Daemon Service
systemctl mask power-profiles-daemon.service
