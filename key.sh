#!/usr/bin/env bash

arg="$1"

#1:test, 2:make, 3:run, 4:split

if [ "$arg" = "1" ]; then
    cargo test 2>&1 || ture
elif [ "$arg" = "2" ]; then
    cargo build 2>&1 || ture
elif [ "$arg" = "3" ]; then
    cargo run 2>&1 || ture
elif [ "$arg" = "4" ]; then
    tmux split-window -v -p 60;
    tmux send "cht.sh --shell rust" ENTER
elif [ "$arg" = "5" ]; then
    echo "you have binding wrong key!"
else
    echo "you have binding wrong key!"
fi




