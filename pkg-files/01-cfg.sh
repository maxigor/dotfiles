#!/usr/bin/env bash
#-------------------------------------------------------------------------
#
#	 █████╗ ██████╗  ██████╗██╗  ██╗███╗   ███╗ █████╗ ██╗  ██╗
#	██╔══██╗██╔══██╗██╔════╝██║  ██║████╗ ████║██╔══██╗╚██╗██╔╝
#	███████║██████╔╝██║     ███████║██╔████╔██║███████║ ╚███╔╝ 
#	██╔══██║██╔══██╗██║     ██╔══██║██║╚██╔╝██║██╔══██║ ██╔██╗ 
#	██║  ██║██║  ██║╚██████╗██║  ██║██║ ╚═╝ ██║██║  ██║██╔╝ ██╗
#	╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝
#	
#            Arch Linux Post Install Setup and Config
#
#-------------------------------------------------------------------------


mkdir /home/max/Downloads
mkdir /home/max/wallpaper

cp /home/max/dotfiles/wall.jpg /home/max/wallpaper

cp -r /home/max/dotfiles/configs/.config /home/max/
cp /home/max/dotfiles/configs/.Xresources /home/max/
cp /home/max/dotfiles/configs/.xinitrc /home/max/
cp /home/max/dotfiles/configs/.zshrc /home/max/

chmod +x /home/max/.config/bspwm/bspwmrc
chmod +x /home/max/.config/sxhkd/sxhkdrc
chmod +x /home/max/.config/.fehbg
chmod +x /home/max/.config/polybar/launch.sh


# git config
git config --global user.email "maxigor.ferreira@gmail.com"
git config --global user.name "Max"


