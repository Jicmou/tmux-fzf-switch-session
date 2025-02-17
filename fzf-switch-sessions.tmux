#! /usr/bin/bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FZF_SWITCH_SESSION=$DIR/scripts/fzf-switch-session.sh

tmux bind-key S run-shell -b "$FZF_SWITCH_SESSION"
