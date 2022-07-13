

Clone this repo:
 ```
pacman -Sy git
git clone https://github.com/maxigor/dotfiles
cd dotfiles
```

Install the pkgs on the pkgs-files folder

```
./cfg.sh

```

1. Eww

Elkowar's wacky widgets are the main widgets that we are gonna use in our system. It is a very essential dependency that you need. First you need the nightly version of rust and also GTK3. A speedy way would be to directly install the binary package of rust nightly from the AUR using your favorite AUR helper:


```
paru -S rust-nightly-bin gtk3
```
Then we just need to run a few commands assuming you have git installed:

```
cd ~/Downloads
git clone https://github.com/elkowar/eww.git
cd eww
cargo build --release -j $(nproc)
cd target/release
sudo mv eww /usr/bin/eww
```
That installs eww to our root filesystem, which is then sourced from the $PATH.

2. xqp

xqp comes from the author of bspwm. It outputs the pointer ID under the window, basically, it is needed for the right click menu to function when clicking the root window in bspwm. The method of doing this was taken from beyond9thousand

NOTE: You need base-devel installed before this:

```
sudo pacman -S base-devel
```

Then you just gotta do:
```
cd ~/Downloads
git clone https://github.com/baskerville/xqp.git
cd xqp
make
sudo make install
```
