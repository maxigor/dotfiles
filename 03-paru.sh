#!/usr/bin/env bash
#-------------------------------------------------------------------------
#
#                                      ______    ______  
#                                     /      \  /      \ 
#   ______ ____    ______   __    __ |  $$$$$$\|  $$$$$$\
#  |      \    \  |      \ |  \  /  \| $$  | $$| $$___\$$
#  | $$$$$$\$$$$\  \$$$$$$\ \$$\/  $$| $$  | $$ \$$    \ 
#  | $$ | $$ | $$ /      $$  >$$  $$ | $$  | $$ _\$$$$$$\
#  | $$ | $$ | $$|  $$$$$$$ /  $$$$\ | $$__/ $$|  \__| $$
#  | $$ | $$ | $$ \$$    $$|  $$ \$$\ \$$    $$ \$$    $$
#   \$$  \$$  \$$  \$$$$$$$ \$$   \$$  \$$$$$$   \$$$$$$ 
#
#            Arch Linux Post Install Setup and Config
#
#-------------------------------------------------------------------------


# AUR HELPER
echo
echo "INSTALLING AUR SOFTWARE"
echo

cd "${HOME}"

echo "CLONING: PARU"

git clone https://aur.archlinux.org/paru.git

cd {$HOME}/paru
makepkg -si

PKGS=(

    # UTILITIES -----------------------------------------------------------

    'ly'						# ly display manager
    #'i3lock-fancy'              # Screen locker
    'timeshift'                 # Backup and Restore

    # COMMUNICATIONS ------------------------------------------------------

    'brave-bin'                 # Brave

    # THEMES --------------------------------------------------------------

    'lightdm-webkit-theme-aether'   # Lightdm Login Theme - https://github.com/NoiSek/Aether#installation
    'materia-gtk-theme'             # Desktop Theme
    'papirus-icon-theme'            # Desktop Icons
    'capitaine-cursors'             # Cursor Icons
   
)


for PKG in "${PKGS[@]}"; do
    paru -S --noconfirm $PKG
done


sudo systemctl enable ly.service

echo
echo "Done!"
echo







