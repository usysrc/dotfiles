setxkbmap us
setxkbmap -option caps:escape
xrdb -merge ~/.xresources 
xrandr --dpi 125.37
~/.fehbg &
sxhkd -c $HOME/.config/sxhkd/sxhkdrc &
exec dwm
