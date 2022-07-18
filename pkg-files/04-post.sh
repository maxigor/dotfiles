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
    )

    for PKG in "${PKGS[@]}"; do
    	paru -S $PKG
    done

    # PICOM PIJULIUS -----------------------------------------------------
    cd ~/home/max/Downloads
    echo "Cloning Picom Pijulius..."
    git clone https://github.com/pijulius/picom.git
    cd /home/max/Downloads/picom/
    meson --buildtype=release . build --prefix=/usr -Dwith_docs=true
    sudo ninja -C build install

    # EWW -----------------------------------------------------------------
    cd ~/home/max/Downloads
    git clone https://github.com/elkowar/eww.git
    cd /home/max/Downloads/eww
    cargo build --release -j $(nproc)
    cd target/release
    sudo mv eww /usr/bin/eww

    # XQP -----------------------------------------------------------------
    cd ~/home/max/Downloads
    git clone https://github.com/baskerville/xqp.git
    cd xqp
    make
    sudo make install

    # XDO -----------------------------------------------------------------
    cd ~/home/max/Downloads
    git clone https://github.com/baskerville/xdo
    cd xdo
    make
    sudo make install

    sudo usermod -aG adm $USER

    # FONTS INSTALL ------------------------------------------------------
    sudo cp -r /home/max/dotfiles/.fonts/* /usr/share/fonts/TTF
    sudo fc-cache -fv
