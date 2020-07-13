#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
brew install ringojs
brew install narwhal

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install homebrew/php/php56 --with-gmp

# Install homebrew CASK
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng    #-> 802.11 WEP and WPA-PSK keys cracking program that can recover keys once enough data packets have been captured.
#brew install bfg    #-> an alias for java -jar bfg.jar.
#brew install binutils    #-> collection of binary tools
#brew install binwalk    #-> fast, easy to use tool for analyzing and extracting firmware images.
#brew install cifer    #-> Work on automating classical cipher cracking in C
#brew install dex2jar    #-> Tools to work with android .dex and java .class files
#brew install dns2tcp   #-> a network tool designed to relay TCP connections through DNS traffic.
#brew install fcrackzip   #-> FCrackZip is a free and fast zip password cracker
#brew install foremost   #-> console program to recover files based on their headers, footers, and internal data structures.
#brew install hashpump    #-> A tool to exploit the hash length extension attack in various hashing algorithms
#brew install hydra     #- > A very fast network logon cracker which support many different services.
#brew install john   #-> An implementation of one of the modern password hashes found in John is also available separately for use in your software or on your servers.
#brew install knock  #-> is the accompanying port-knock client, though telnet or netcat could be used for simple TCP knocks instead.
#brew install netpbm  #-> a toolkit for manipulation of graphic images, including conversion of images between a variety of different formats.
#brew install nmap    #-> a security scanner used to discover hosts and services on a computer network, thus creating a "map" of the network.
#brew install pngcheck #-> verifies the integrity of PNG, JNG and MNG files.
#brew install socat   #-> a relay for bidirectional data transfer between two independent data channels.
#brew install sqlmap   #-> an open source penetration testing tool that automates the process of detecting and exploiting SQL injection flaws and taking over of database servers.
#brew install tcpflow  #-> a program that captures data transmitted as part of TCP connections (flows), and stores the data in a way that is convenient for protocol analysis and debugging.
#brew install tcpreplay   #-> a suite of free Open Source utilities for editing and replaying previously captured network traffic.
#brew install tcptrace  #->  for analysis of TCP dump files.
#brew install ucspi-tcp # `tcpserver` etc.    #-> for building TCP client-server applications
#brew install xpdf   #-> pdf viewer
#brew install xz   #-> a command line tool with syntax similar to that of gzip.

# Install other useful binaries.
brew install ack    #-> tool like grep, optimized for programmers Designed for programmers with large heterogeneous trees of source code
brew install node    #-> This installs `npm` too using the recommended installation method
#brew install exiv2    #-> C++ library and a command line utility to manage image metadata
brew install git    #-> free and open source distributed version control system
brew install git-lfs    #-> managing large files with Git.
brew install imagemagick --with-webp    #-> software suite to create, edit, compose, or convert bitmap images
brew install lua    #-> powerful, fast, lightweight, embeddable scripting language.
brew install lynx    #-> Lynx is the text web browser.
brew install p7zip    #-> a port of 7za.exe for POSIX systems like Unix (Linux, Solaris, OpenBSD, FreeBSD, Cygwin, AIX, ...), MacOS X and also for BeOS and Amiga.
brew install pigz    #-> A parallel implementation of gzip for modern multi-processor, multi-core machines
brew install pv    #-> monitor the progress of data through a pipeline between any two processes, giving a progress bar, ETA, etc.
brew install rename    #-> renames files according to modification rules specified on the command line
brew install rhino    #-> javascript on the server side
brew install speedtest-cli    #-> testing internet bandwidth using speedtest.net
brew install ssh-copy-id    #-> script that uses ssh to  log  into  a  remote  machine
brew install tree    #-> recursive directory listing command that produces a depth indented listing of files
brew install webkit2png    #-> creates screenshots of webpages
# brew install zopfli   #->compression library programmed in C to perform very good, but slow, deflate or zlib compression.
brew install ffmpeg --with-libvpx    #-> cross-platform solution to record, convert and stream audio and video
brew install android-platform-tools

# Install useful applications
brew cask install firefox
brew cask install google-chrome
brew cask install opera

brew cask install alfred
brew cask install keepingyouawake
#brew cask install appcleaner
brew cask install gas-mask
brew cask install flux
brew cask install hyperswitch

brew cask install sublime-text
brew cask install atom
# brew install mysql
# brew cask install mysqlworkbench

brew cask install virtualbox
brew cask install vagrant
brew cask install vlc

brew cask install discord
brew cask install spotify
brew cask install thunderbird
brew cask install spectacle
brew cask install evernote
brew cask install nordvpn
#brew cask install imageoptim
brew cask install anaconda
brew cask install slack

# Remove outdated versions from the cellar.
brew cleanup
