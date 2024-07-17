chosen_layout=$(echo -e "Extend\nMirror" | rofi -i -dmenu -p "Select Keyboard " -l 2 -config ~/dotfiles/rofi/keyboard-selector.rasi)

if [ "$chosen_layout" == "Extend" ]; then
  $(xrandr --output HDMI-1-0 --auto --left-of eDP-1)
elif [ "$chosen_layout" == "Mirror" ]; then
  $(xrandr --output HDMI-1-0 --auto --same-as eDP-1)
fi
