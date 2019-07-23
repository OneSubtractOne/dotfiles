#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi
#/home/sifr/.screenlayout/layout.sh &
#sleep 5
compton -b & 
lxqt-notificationd &
ckb-next &
steam &
nextcloud &
protonmail-bridge &
#/usr/bin/aa-notify -p -s 1 -w 60 -f /var/log/audit/audit.log &
#feh --bg-scale ~/Pictures/wallpaper/dracula/black-glow-hexagon-white-purple-gradient-1920x1080-c4-000000-ffffff-8a2be2-000000-l2-10-132-a-15-f-6.jpg &
(conky | while read LINE; do xsetroot -name "$LINE"; done) &
#exec herbstluftwm
feh --bg-scale ~/walls/48e390cbf2020d70cedcaa41827941e420b2d7fb.png
exec dwm
