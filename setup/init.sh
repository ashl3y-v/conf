#!/bin/sh
sudo pacman -Syyu --needed --noconfirm git base-devel rustup

rustup default stable
rustup update

mkdir -p ~/g/ ~/n/ ~/t/ ~/.ssh/ ~/.ssh/sockets/
cd ~/t
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -i

sudo rm -rf ~/t/paru

paru -S --needed --noconfirm firefox helix jq nvidia-open

sudo vim /etc/ssh/sshd_config
sudo systemctl daemon-reload
