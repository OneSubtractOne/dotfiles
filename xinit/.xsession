#!/bin/sh
xrdb -merge .Xresources
compton -b &
lxqt-notificationd &
#ckb-next &
#steam &
#nextcloud &
protonmail-bridge &
feh --bg-scale ~/walls/48e390cbf2020d70cedcaa41827941e420b2d7fb.png
(conky | while read LINE; do xsetroot -name "$LINE"; done) &
exec dwm
