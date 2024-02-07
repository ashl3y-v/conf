# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias hx='helix'

change-mac() {
	sudo ip link set $1 down
	if [[ $2 == "" ]]; then
		sudo macchanger -a $1
	else
		sudo macchanger -m $2 $1
	fi
	sudo ip link set $1 up
}

change-mac-auto() {
	while true; do
		sudo ip link set $1 down
		sudo macchanger -a $1
		sudo ip link set $1 up
		sleep $2
	done
}

copy-conf() {
	cp -rf ~/g/conf/.config/ ~/
}

copy-home() {
	cp -af ~/g/conf/home/. ~/
}

my-pdf-qual() {
	local tmp0=$(mktemp)

	gs -o $tmp0 -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress $1
	qpdf --compress-streams=y --object-streams=generate --recompress-flate --optimize-images $tmp0 $2

	rm "$tmp0"
}

my-rank-mirrors() {
	curl -s "https://archlinux.org/mirrorlist/?country=all&protocol=http&protocol=https&ip_version=4&ip_version=6&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | sudo rankmirrors - -p -n $1 | sudo tee /etc/pacman.d/mirrorlist
}

my-update-pacman() {
	paru -c --noconfirm
	paru -Sc --aur --noconfirm
	paru -Syu --noconfirm
}

my-update-pip() {
	pip list -o | awk '{print $1}' | sed "1,2d" | xargs -n 1 pip install --pre --upgrade
}

repeat-connect-auto() {
	while true; do
		nmcli connection up $1
		sleep $2
	done
}
