#!/bin/sh

###############################################################################
### COPIED FROM /etc/X11/xinit/xinitrc
###############################################################################

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


###############################################################################
### CUSTOM CONFIGURATION
###############################################################################

## I want to fix the issue with the FontAwesome glyphs not displaying at all
## and I found this topic on reddit that could be of help:
## /r/unixporn/comments/34e4z4/urxvt_using_glyphs_with_urxvt
xset +fp ~/.fonts
xset +fp /usr/share/fonts
xset +fp /usr/share/fonts/TTF
xset fp rehash

## Set the keyboard to french, because azerty
setxkbmap fr

## Start the ssh-agent with the X session: thanks to this the ssh-agent will
## live with the X session, no need to relaunch it in every terminal
eval $(ssh-agent)

## Finally, launch I3!
exec i3
