# layouts (set Engish(US) and Russian keyboard layouts)
setxkbmap us,ru
# switch layouts by pressing "Super" and "Space" keys
setxkbmap -option 'grp:win_space_toggle'

# use random wallpaper
feh --bg-fill Pictures/wallpapers/$(ls Pictures/wallpapers/ | shuf -n 1)

# statusbar
dwmstatus 2>&1 >/dev/null &

# init keyring
# eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
# export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK

# set screen resolution 
xrandr --output DP-0 --mode 1920x1080 --rate 75 --primary --left-of HDMI-0
xrandr --output HDMI-0 --mode 1680x1050 --rate 60 --rigth-of DP-1

# start dwm
exec dbus-launch dwm

