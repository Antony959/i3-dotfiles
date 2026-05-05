#!/bin/bash

selected=$(rofi -modi "clipboard:greenclip print" -show clipboard -run-command '{cmd}' -format s)

if [ -n "$selected" ]; then
    notify-send "Copiado para clipboard" "${selected:0:60}..."
fi
