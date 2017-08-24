#!/usr/bin/env rc

xhost +SI:localuser:jordan
pulseaudio --start
xmodmap $home/.xmodmaprc
$home/.fehbg
xrdb $home/.Xresources
. $home/.current-colors && xrdb -merge <{tmpl2xdefaults}
compton -f -r 20 -o 0.4 &

if (! ~ $WM ()) {
  exec $WM >[2] $home/.xinit.err
} else {
  exec startfluxbox >[2] $home/.xinit.err
}
