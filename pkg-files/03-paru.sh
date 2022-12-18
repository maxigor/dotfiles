
#!/usr/bin/env bash
#-------------------------------------------------------------------------
#
#    █████╗ ██████╗  ██████╗██╗  ██╗███╗   ███╗ █████╗ ██╗  ██╗
#   ██╔══██╗██╔══██╗██╔════╝██║  ██║████╗ ████║██╔══██╗╚██╗██╔╝
#   ███████║██████╔╝██║     ███████║██╔████╔██║███████║ ╚███╔╝ 
#   ██╔══██║██╔══██╗██║     ██╔══██║██║╚██╔╝██║██╔══██║ ██╔██╗ 
#   ██║  ██║██║  ██║╚██████╗██║  ██║██║ ╚═╝ ██║██║  ██║██╔╝ ██╗
#   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝
#
#            Arch Linux Post Install Setup and Config
#
#-------------------------------------------------------------------------


echo
echo "INSTALLING AUR SOFTWARE"
echo

echo "Please enter username:"
read username

cd "${HOME}"

echo "CLONING: PARU"
git clone "https://aur.archlinux.org/paru.git"


PKGS=(

    # UTILITIES -----------------------------------------------------------
    
    'ly'						# Display Manager
    'i3lock-fancy'              # Screen locker
    'timeshift'                 # Backup and Restore
    '7-zip-full'
    'xdo'
    'xdf-user-dirs'
    'python-xdg'
    'moreutils'
    'plank'
    'upscayl-bin'               # AI Image Upscaler
  
    # COMMUNICATIONS ------------------------------------------------------

    'brave-bin'                 # Brave

    # THEMES --------------------------------------------------------------

    'autojump'                  # Zsh plugin
    'plymouth'                  # graphical boot process

    # WIFI TP-LINK --------------------------------------------------------------

    'rtl88xxau-aircrack-dkms-git'
    
    # APPS ----------------------------------------------------------------

    'discord'                       # Chat for gamers
    'octopi'
    'librewolf-bin'
    'tor-browser'
    'rpi-imager'
    'snapd'
    'shell-color-scripts'
    'plex-media-server'
    'nordvpn-bin'
    'spotify'
    'obinskit'

    # CONTROL -----------------------------------------------------------

    'backlight_control'
    'pulseaudio-control' 
    
    # FONTS -------------------------------------------------------------

    'ttf-ms-fonts'
    'nerd-fonts-complete'

)

cd ${HOME}/paru
makepkg -si

for PKG in "${PKGS[@]}"; do
    paru -S $PKG --noconfirm --needed
done

# Change default shell
chsh -s $(which zsh)

sudo systemctl enable ly.service
sudo systemctl enable plexmediaserver
sudo systemctl start plexmediaserver

groupadd -r nordvpn
gpasswd -a $USER nordvpn

sudo systemctl enable nordvpnd.service
sudo systemctl start nordvpnd.service

echo
echo "Done!"
echo




