#!/bin/bash

# Get the current keyboard layout
current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

# Check the current layout and switch it
if [ "$current_layout" = "us" ]; then
    # Change layout to Spanish (Colombia)
    setxkbmap -layout es
    dunstify -t 5000 -u normal "Keyboard layout changed to ES"
elif [ "$current_layout" = "es" ]; then
    # Change layout to US
    setxkbmap -layout us
    dunstify -t 5000 -u normal "Keyboard layout changed to US"
else
    dunstify -t 5000 -u normal "Current layout is neither US nor ES"
fi
