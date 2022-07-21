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
	'rust-nightly-bin'
        'gtk3'
    	'gtk-engines'
    	'gtk-engine-murrine'
	'picom-pijulius-git'    
)

    for PKG in "${PKGS[@]}"; do
    	paru -S $PKG
    done

    # EWW -----------------------------------------------------------------
    cd /home/max/Downloads
    git clone https://github.com/elkowar/eww.git
    cd eww
    cargo build --release -j $(nproc)
    cd target/release
    sudo mv eww /usr/bin/eww

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
    sudo cp -r /home/max/dotfiles/.fonts/* /usr/share/fonts/TTF
    sudo fc-cache -fv
