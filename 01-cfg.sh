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


mkdir /home/max/Downloads
mkdir /home/max/.config/
mkdir /home/max/.config/bspwm/
mkdir /home/max/.config/sxhkd/

cp /home/max/dotfiles/bspwmrc /home/max/.config/bspwm   
cp /home/max/dotfiles/sxhkdrc /home/max/.config/sxhkd

cp -r /home/max/dotfiles/polybar /home/max/.config/
cp -r /home/max/dotfiles/rofi /home/max/

cp /home/max/dotfiles/starship.toml /home/max/
cp /home/max/dotfiles/.fehbg /home/max/
cp /home/max/dotfiles/.zshrc /home/max/
cp /home/max/dotfiles/1.jpg /home/max/

cp /home/max/dotfiles/.Xresources /home/max/

chmod +x /home/max/.config/bspwm/bspwmrc
chmod +x /home/max/.config/sxhkd/sxhkdrc