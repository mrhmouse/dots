#!/usr/bin/zsh

pulseaudio --start
xmodmap ~/.xmodmaprc
~/.fehbg
xrdb ~/.Xresources
source ~/.current-colors && xrdb -merge <(tmpl2xdefaults)
# exec herbstluftwm
exec dwm
