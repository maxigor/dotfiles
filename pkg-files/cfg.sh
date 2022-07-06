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

chmod +x 02-pacman.sh
chmod +x 03-paru.sh

mkdir /home/max/Downloads
mkdir /home/max/.config/
mkdir /home/max/.config/bspwm/
mkdir /home/max/.config/sxhkd/

mkdir /home/max/wallpaper

cp /home/max/dotfiles/config/bspwmrc /home/max/.config/bspwm   
cp /home/max/dotfiles/config/sxhkdrc /home/max/.config/sxhkd

cp /home/max/dotfiles/config/starship.toml /home/max/
cp /home/max/dotfiles/config/.fehbg /home/max/
cp /home/max/dotfiles/config/.zshrc /home/max/
cp /home/max/dotfiles/wall.jpg /home/max/wallpaper

cp /home/max/dotfiles/.Xresources /home/max/

chmod +x /home/max/.config/bspwm/bspwmrc
chmod +x /home/max/.config/sxhkd/sxhkdrc