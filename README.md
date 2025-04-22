## Tmux Fzf Switch Session

Selects a running session with fzf fuzzy finder and switch to that session

## Usage

### Key Bindings

- prefix + S

  - Opens a list of running sessions in a central floading pane.
  - Selecting a session with fzf makes that session active.

## Installation

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'jicmou/tmux-fzf-switch-session'

### Manual Install

Clone the repo

```bash
git clone https://github.com/jicmou/tmux-fzf-switch-session ~/clone/path
```

Add the following line to your tmux.conf file

```
run-shell ~/clone/path/tmux-fzf-switch-session/fzf-witch-session.tmux
```

Source your tmux config

```
tmux source-file path/to/.tmux.conf
```
