My configuration is personalized to utilize keyboard shortcuts as well as mouse actions to keep my workflow meaningful and flexible under varying conditions.

- **Color Scheme:** Tokyo Night + Ant-Dracula
- **Window Manager:** [bspwm](https://github.com/baskerville/bspwm)
- **Terminal:** [alacritty](https://github.com/alacritty/alacritty)
- **Shell:** [zsh](https://www.zsh.org/)
- **Panel:** [polybar](https://github.com/polybar/polybar)
- **Dock:** [plank](https://github.com/ricotz/plank)
- **Compositor:** [picom-ibhagwan-git*](https://github.com/ibhagwan/picom-ibhagwan-git)
- **Editor:** [neovim](https://github.com/neovim/neovim)
- **Notification Manager:** [dunst](https://github.com/dunst-project/dunst)
- **Application Launcher:** [rofi](https://github.com/davatorium/rofi)
- **Application Menu:** [jgmenu](https://github.com/johanmalm/jgmenu)
*****

## Fonts
| Font List |
| -------------- | --- |
| [`Roboto`](https://github.com/googlefonts/roboto) | Main Font |
| [`Font Awesome`](https://github.com/FortAwesome/Font-Awesome) | Main Icon Font |
| [`JetBrainsMono Nerd Font`](https://github.com/jtbx/jetbrainsmono-nerdfont) | Main UI Font |

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

3. xdo

Then you just gotta do:
```
cd ~/Downloads
git clone https://github.com/baskerville/xdo
cd xdo
make
sudo make install
```
