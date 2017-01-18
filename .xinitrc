#!/usr/bin/env rc

pulseaudio --start
xmodmap $home/.xmodmaprc
$home/.fehbg
xrdb $home/.Xresources
. $home/.current-colors && xrdb -merge <{tmpl2xdefaults}
exec dwm
