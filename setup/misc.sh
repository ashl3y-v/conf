#!/usr/bin/env bash
if [[ $1 == 0 ]]; then
sudo systemctl enable systemd-oomd.service
sudo systemctl enable tor
sudo systemctl enable sshd

git config --global fetch.prune true
git config --global pull.rebase true

xdg-mime default org.pwmt.zathura.desktop application/pdf

mkdir ~/.config/mpd/playlists
mkdir ~/.local/state/mpd

systemctl --user enable mpd
systemctl --user start mpd
fi
