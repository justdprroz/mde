# layouts (set Engish(US) and Russian keyboard layouts)
# switch layouts by pressing "Super" and "Space" keys
setxkbmap us,ru
setxkbmap -option 'grp:win_space_toggle'

# playerctd daemon
playerctld daemon

# statusbar
dwmstatus 2>&1 >/dev/null &

# set screen resolution 
xrandr --output DP-0 --mode 1920x1080 --rate 75 --primary --left-of HDMI-0
xrandr --output HDMI-0 --mode 1680x1050 --rate 60 --rigth-of DP-1

# disable screen sleep
xset s off -dpms

# set wallpapers
wallpapergen

# compositor
picom &

# polkit
/usr/libexec/polkit-gnome-authentication-agent-1 &
