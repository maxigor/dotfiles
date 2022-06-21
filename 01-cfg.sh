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

cp bspwmrc max/.config/bspwm   
cp sxhkdrc max/.config/sxhkd

cp -r polybar max/.config/
cp -r rofi max/

cp starship.toml max/
cp .zshrc max/
cp 1.jpg max/

cp .Xresources max/

chmod +x max/.config/bspwm/bspwmrc
chmod +x max/.config/sxhkdrc/sxhkdrc