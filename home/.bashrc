# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias hx='helix'

pdfqual() {
	gs -q -o $2 -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dEmbedAllFonts=true -dSubsetFonts=true $1
	qpdf --compress-streams=y --object-streams=generate --recompress-flate --optimize-images --compression-level=9 --replace-input $2
}
