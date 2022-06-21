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



mkdir $HOME/.config/
mkdir $HOME/.config/bspwm/
mkdir $HOME/.config/sxhkd/

cp bspwmrc $HOME/.config/bspwm   
cp sxhkdrc $HOME/.config/sxhkd

cp -r polybar $HOME/.config/
cp -r rofi $HOME/

cp starship.toml $HOME/
cp .zshrc $HOME/
cp 1.jpg $HOME/

cp .Xresources $HOME/

chmod +x $HOME/.config/bspwm/bspwmrc
chmod +x $HOME/.config/sxhkdrc/sxhkdrc