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
~/.screenlayout/mainlayout.sh &
compton -b & 
dunst &
ckb-next &
urxvtd &
steam &
nextcloud &
protonmail-bridge &
(conky | while read LINE; do xsetroot -name "$LINE"; done) &
feh --bg-scale ~/Pictures/59bsn5hgnojy.jpg &
pasystray &
xss-lock -l sxlock &
exec dwm
