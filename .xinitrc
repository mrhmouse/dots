#!/usr/bin/env rc

pulseaudio --start
xmodmap $home/.xmodmaprc
$home/.fehbg
xrdb $home/.Xresources
. $home/.current-colors && xrdb -merge <{tmpl2xdefaults}

if (! ~ $WM ()) {
  exec $WM >[2] $home/.xinit.err
} else {
  . $home/.dwm.rc
  exec dwm >[2] $home/.xinit.err
}
