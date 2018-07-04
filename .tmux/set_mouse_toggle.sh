#!/bin/bash
toggle_mouse_mode () {
    if [[ $(tmux show-options -g | grep mouse | cut -d ' ' -f 2) != on ]]; then 
        tmux set-option -g mouse on && tmux display 'Mouse: ON' 
    else tmux set-option -g  mouse off && tmux display 'Mouse: OFF'
fi
}

toggle_mouse_mode

