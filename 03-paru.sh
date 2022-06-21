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

    # COMMUNICATIONS ------------------------------------------------------

    'brave-bin'                 # Brave

    # THEMES --------------------------------------------------------------

    'lightdm-webkit-theme-aether'   # Lightdm Login Theme - https://github.com/NoiSek/Aether#installation
    'materia-gtk-theme'             # Desktop Theme
    'papirus-icon-theme'            # Desktop Icons
    'capitaine-cursors'             # Cursor Icons
    'autojump'                      # Zsh plugin

    # APPS ----------------------------------------------------------------

    'discord'                       # Chat for gamers
    'youtubemusic-nativefier'        # Music

)

cd ${HOME}/paru
makepkg -si

# Change default shell
chsh -s $(which zsh)

for PKG in "${PKGS[@]}"; do
    paru -S --noconfirm $PKG
done

echo
echo "Done!"
echo




