#!/bin/bash
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



mkdir max/.config/
mkdir max/.config/bspwm/
mkdir max/.config/sxhkd/

cp dotfiles/bspwmrc max/.config/bspwm   
cp dotfiles/sxhkdrc max/.config/sxhkd

cp -r dotfiles/polybar max/.config/
cp -r dotfiles/rofi max/

cp dotfiles/starship.toml max/
cp dotfiles/.zshrc max/
cp dotfiles/1.jpg max/

cp dotfiles/.Xresources max/

chmod +x max/.config/bspwm/bspwmrc
chmod +x max/.config/sxhkdrc/sxhkdrc