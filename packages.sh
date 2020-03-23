#!/bin/sh

utils='
htop
colorls
password-store
'

programming='
python
go
' 

applications='
rxvt-unicode
neovim
mpd
ncmpcpp
mpv
ranger
feh
calcurse
sc
neomutt
lynx
surf
transmission
youtube-dl
dmenu
gimp
zathura
zathura-cb
zathura-djvu
zathura-pdf-mupdf
'

input='
ibus-anthy
ja-fonts-gnu
ja-sazanami-ttf
noto-cjk
'

fonts='
comic-neue
font-awesome
inconsolata-font
'
#TODO Twemoji
#TODO CC Wild Words

doas pkg_add $utils $programming $applications $input $fonts 

# Choose a package when the base name is ambiguous
#TODO automate this too
# python -> python-3.X.X
# neomutt -> neomutt-XXXXXXXXpX-gpgme
