#!/bin/sh
tmux new-session -d mutt
tmux new-window -n vim vim
tmux new-window -n bash bash
tmux -2 attach-session -d
