# layouts (set Engish(US) and Russian keyboard layouts)
setxkbmap us,ru
# switch layouts by pressing "Super" and "Space" keys
setxkbmap -option 'grp:win_space_toggle'

# use random wallpaper
feh --bg-fill Pictures/wallpapers/$(ls Pictures/wallpapers/ | shuf -n 1)

# statusbar
dwmstatus 2>&1 >/dev/null &

# init keyring
eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

# start dwm
exec dbus-launch dwm