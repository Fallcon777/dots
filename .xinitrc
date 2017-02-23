#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
xset s noblank
xset s off
# xmodmap -e "pointer = 1 2 3 4 5 6 7" &
#xmodmap -e "pointer = 1 2 3 4 5 6 7" &
#exec startlxde
#exec i3 -V >> ~/.i3/i3log 2>&1
#xrdb -merge $HOME/.Xresources 
xbindkeys
urxvtd -q -f -o &
exec i3
#exec sway
#exec icewm-session
#exec startkde
#exec cinnamon-session
