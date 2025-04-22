#! /bin/bash

if [ -z "$TMUX" ]; then
  TMUX_CMD='attach'
else
  TMUX_CMD='switch-client'
fi

SELECTED_SESSION=$(
  tmux list-sessions |
    awk -F ':' '{print $1}' |
    fzf-tmux -p --preview="tmux lsw -t {}"
)

if [ -z "$SELECTED_SESSION" ]; then
  # No session selected, exiting gracefully without warning
  # So tmux centered pane just closes
  exit 0
fi

tmux "$TMUX_CMD" -t "$SELECTED_SESSION"
