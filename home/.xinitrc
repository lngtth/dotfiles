#!/bin/sh

# Other ibus variables
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# Start ibus Daemon
ibus-daemon -drx

# Shorter keypress delay
xset r rate 250 25 &

# Run URxvt as a daemon
urxvtd -q -f -o

# Hide mouse when not in use
unclutter -idle 1 &

#exec awesome

exec sxhkd &
exec bspwm

