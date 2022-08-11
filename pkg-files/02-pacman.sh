#!/usr/bin/env bash
#-------------------------------------------------------------------------
#
#    █████╗ ██████╗  ██████╗██╗  ██╗███╗   ███╗ █████╗ ██╗  ██╗
#   ██╔══██╗██╔══██╗██╔════╝██║  ██║████╗ ████║██╔══██╗╚██╗██╔╝
#   ███████║██████╔╝██║     ███████║██╔████╔██║███████║ ╚███╔╝ 
#   ██╔══██║██╔══██╗██║     ██╔══██║██║╚██╔╝██║██╔══██║ ██╔██╗ 
#   ██║  ██║██║  ██║╚██████╗██║  ██║██║ ╚═╝ ██║██║  ██║██╔╝ ██╗
#   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝
#
#            Arch Linux Post Install Setup and Config
#
#-------------------------------------------------------------------------

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(

    # SYSTEM --------------------------------------------------------------

   #'linux-lts'             # Long term support kernel
    'base-devel'            # important
    'nautilus'              # file manager
    'pulseaudio'

    # TERMINAL UTILITIES --------------------------------------------------

    'bash-completion'       # Tab completion for Bash
    'bc'                    # Precision calculator language
    'bleachbit'             # File deletion utility
    'curl'                  # Remote content retrieval
    'elinks'                # Terminal based web browser
    'feh'                   # Terminal-based image viewer/manipulator
    'file-roller'           # Archive utility
    'keepassxc'             # System password storage
    'gtop'                  # System monitoring via terminal
    'gufw'                  # Firewall manager
    'hardinfo'              # Hardware info app
    'htop'                  # Process viewer
    'inxi'                  # System information utility
    'jq'                    # JSON parsing library
    'jshon'                 # JSON parsing library
    'neofetch'              # Shows system info when you launch terminal
    'ntp'                   # Network Time Protocol to set time via network.
    'openssh'               # SSH connectivity tools
    'rsync'                 # Remote file sync utility
    'speedtest-cli'         # Internet speed via terminal
    'terminus-font'         # Font package with some bigger fonts for login terminal
    'unrar'                 # RAR compression program
    'unzip'                 # Zip compression program
    'wget'                  # Remote content retrieval
    'alacritty'             # Terminal emulator
    'zenity'                # Display graphical dialog boxes via shell scripts
    'zip'                   # Zip compression program
    'zsh'                   # ZSH shell
    'zsh-completions'       # Tab completion for ZSH
    'starship'              # Customizable prompt
    'github-cli'            # github cli helper
   
   # DISK UTILITIES ------------------------------------------------------

    'autofs'                # Auto-mounter
    'exfat-utils'           # Mount exFat drives
    'gparted'               # Disk utility
    'gnome-disks'           # Disk utility
    'ntfs-3g'               # Open source implementation of NTFS file system
    'parted'                # Disk utility

    # GENERAL UTILITIES ---------------------------------------------------

    'catfish'               # Filesystem search
    'nemo'                  # Filesystem browser
    'veracrypt'             # Disc encryption utility
    'variety'               # Wallpaper changer
    'polybar'               # Status Bar
    'qbittorrent'           # Torrent
    'font-manager'          # Font Manager

    # DEVELOPMENT ---------------------------------------------------------
    
    'vim'                   # Text editor
    'neovim'                # Text editor
    'apache'                # Apache web server
    'clang'                 # C Lang compiler
    'cmake'                 # Cross-platform open-source make system
    'electron'              # Cross-platform development using Javascript
    'git'                   # Version control system
    'gcc'                   # C/C++ compiler
    'glibc'                 # C libraries
    'mariadb'               # Drop-in replacement for MySQL
    #'meld'                  # File/directory comparison
    'nodejs'                # Javascript runtime environment
    'npm'                   # Node package manager
    'php'                   # Web application scripting language
    'php-apache'            # Apache PHP driver
    #'postfix'              # SMTP mail server
    'python'                # Scripting language
    'python-pip'
    #'qtcreator'             # C++ cross platform IDE
    #'qt5-examples'          # Project demos for Qt

    # WEB TOOLS -----------------------------------------------------------

    'firefox'               # Web browser
    'filezilla'             # FTP Client

    # COMMUNICATIONS ------------------------------------------------------

    'hexchat'               # Multi format chat
    'irssi'                 # Terminal based IIRC

    # MEDIA ---------------------------------------------------------------

    'lollypop'              # Music player
    'simplescreenrecorder'  # Record your screen
    'vlc'                   # Video player
    'xfce4-screenshooter'   # Screen capture.

    # GRAPHICS AND DESIGN -------------------------------------------------

    'gcolor2'               # Colorpicker
    'gimp'                  # GNU Image Manipulation Program
    'inkscape'              # Vector image creation app
    'imagemagick'           # Command line image manipulation tool
    'nomacs'                # Image viewer
    'pngcrush'              # Tools for optimizing PNG images
    'ristretto'             # Multi image viewer
    
    # PICOM PIJULUS DEPENDENCIES -----------------------------------------

    'libconfig'
    'libev'
    'libxdg-basedir'
    'pcre'
    'pixman'
    'xcb-util-image'
    'xcb-util-renderutil'
    'hicolor-icon-theme'
    'libglvnd'
    'libx11'
    'libxcb'
    'libxext'
    'libdbus'
    'asciidoc'
    'uthash'

    # PRODUCTIVITY --------------------------------------------------------

    'galculator'            # Gnome calculator
    'hunspell'              # Spellcheck libraries
    'hunspell-en'           # English spellcheck library
    'libreoffice-fresh'     # Libre office with extra features
    'xpdf'                  # PDF viewer
    'rofi'
    'plank'
    'dunst'
    'jgmenu'
    'starship'
    'exa'

    # FONTS ---------------------------------------------------------------

    'ttf-font-awesome'
    'ttf-roboto'
    'ttf-roboto-mono'

    # VIRTUALIZATION ------------------------------------------------------

    'virtualbox'
    'virtualbox-guest-utils'
    'virtualbox-host-modules-arch'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

    sudo systemctl enable vboxservice.service --noconfirm --needed

echo
echo "Done!"
echo
