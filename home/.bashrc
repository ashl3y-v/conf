# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias hx='helix'

my-pdf-qual() {
	local tmp0=$(mktemp)

	gs -o $tmp0 -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress $1
	qpdf --compress-streams=y --object-streams=generate --recompress-flate --optimize-images $tmp0 $2

	rm "$tmp0"
}

my-rank-mirrors() {
	curl -s "https://archlinux.org/mirrorlist/?country=all&protocol=http&protocol=https&ip_version=4&ip_version=6&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | sudo rankmirrors - -p -w -n $1 | sudo tee /etc/pacman.d/mirrorlist
}
