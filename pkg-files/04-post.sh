#!/usr/bin/env bash
#-------------------------------------------------------------------------
#
#        █████╗ ██████╗  ██████╗██╗  ██╗███╗   ███╗ █████╗ ██╗  ██╗
#       ██╔══██╗██╔══██╗██╔════╝██║  ██║████╗ ████║██╔══██╗╚██╗██╔╝
#       ███████║██████╔╝██║     ███████║██╔████╔██║███████║ ╚███╔╝
#       ██╔══██║██╔══██╗██║     ██╔══██║██║╚██╔╝██║██╔══██║ ██╔██╗
#       ██║  ██║██║  ██║╚██████╗██║  ██║██║ ╚═╝ ██║██║  ██║██╔╝ ██╗
#       ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝
#
#            Arch Linux Post Install Setup and Config
#
#-------------------------------------------------------------------------

    PKGS=(
	'gtk3'
    'gtk-engines'
    'gtk-engine-murrine'
	'picom-pijulius-git'    
)

    for PKG in "${PKGS[@]}"; do
    	paru -S $PKG
    done

      # XQP -----------------------------------------------------------------
    cd /home/max/Downloads
    git clone https://github.com/baskerville/xqp.git
    cd xqp
    make
    sudo make install

    # XDO -----------------------------------------------------------------
    cd /home/max/Downloads
    git clone https://github.com/baskerville/xdo
    cd xdo
    make
    sudo make install

    sudo usermod -aG adm $USER

    # FONTS INSTALL ------------------------------------------------------
    sudo cp -r /home/max/dotfiles/configs/.fonts/* /usr/share/fonts/TTF sudo fc-cache -fv 

    # NVIDIA XORG FILE ---------------------------------------------------- 
    sudo cp /home/max/dotfiles/configs/20-nvidia.conf /etc/X11/xorg.conf.d/
