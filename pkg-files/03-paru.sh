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
  
    # COMMUNICATIONS ------------------------------------------------------

    'brave-bin'                 # Brave

    # THEMES --------------------------------------------------------------

    'autojump'                      # Zsh plugin

    # APPS ----------------------------------------------------------------

    'discord'                       # Chat for gamers
    'octopi'
    'librewolf-bin'
    'tor-browser'
    'rpi-imager'
    'snapd'
    'shell-color-scripts'

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

echo
echo "Done!"
echo




