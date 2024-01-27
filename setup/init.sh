#!/usr/bin/env bash
if [[ $1 == 0 ]]; then
sudo pacman -Syyu --needed git base-devel rustup

rustup default stable
rustup update

mkdir -p ~/g/ ~/i/ ~/n/ ~/t/ ~/.ssh/ ~/.ssh/sockets/
cd ~/t
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -i

sudo rm -rf ~/t/paru

paru -S --needed firefox clang leftwm helix dmenu mold jq

paru -Rns awesome slock alacritty nano xterm terminus-font htop
paru -S --needed nvidia-open
paru -Rns dkms

sudo cp /etc/X11/xinit/xinitrc ~/.xinitrc
chmod u+x ~/.xinitrc
vim ~/.xinitrc

sudo vim /etc/ssh/sshd_config
sudo systemctl daemon-reload

elif [[ $1 == 1 ]]; then
cp -af ~/g/conf/.config/ ~/
cp -af ~/g/conf/home/. ~/

fi
