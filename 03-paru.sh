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


# Aur Helper
cd ~
cd Downloads
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si


# Shell Color Script
# git clone https://gitlab.com/dwt1/shell-color-scripts.git


# Display Manager
paru -S ly
sudo systemctl enable ly.service


#





