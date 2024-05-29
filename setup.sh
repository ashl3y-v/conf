#!/usr/bin/env bash
sudo pacman -Syyu --needed --noconfirm git base-devel rustup

rustup default stable
rustup update

mkdir -p ~/g/ ~/n/ ~/.ssh/ ~/.ssh/sockets/
cd ~/n
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -i

sudo rm -rf ~/n/paru

paru -S --needed --noconfirm firefox helix jq

sudo helix /etc/ssh/sshd_config
sudo systemctl daemon-reload

sudo systemctl enable sshd
sudo systemctl enable systemd-oomd

git config --global fetch.prune true
git config --global pull.rebase true

# xdg-mime default org.pwmt.zathura.desktop application/pdf
