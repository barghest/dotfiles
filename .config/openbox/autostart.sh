#
# t-3 -l-5 r5 -I0.02 -O0.03 -D4 -fF 
#kdeinit &

#conky &
# exec gnome-session
# exec startkde
#exec gnome-keyring-daemon &
#~/.keyring.sh
xbindkeys &
#exec pypanel &
#fusion-icon &
xmodmap ~/.Xmodmap

#(sleep 5 && exec pypanel) &
#tint &
stalonetray &
#trayer --edge top --align right --margin 83 --widthtype pixel --width 85 --heighttype pixel --height 21 --SetDockType true --SetPartialStrut true --transparent true --alpha 0 --tint 0x101010 --expand true --distance 1 --padding 1 &

# D-bus
if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS"; then
       eval `dbus-launch --sh-syntax --exit-with-session`
fi

#nvidia-settings -a InitialPixmapPlacement=2 &

eval `cat ~/.fehbg` &
#exec xcompmgr -c t-3 -l-5 r5 -I0.02 -O0.03 -D4 -fF &
#(sleep 5 && exec skippy)
exec ~/.conky/conky_start &

