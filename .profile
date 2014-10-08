# If running bash
if [ -n "$BASH_VERSION" ]; then
    # Include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# Set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

# Set editor
EDITOR="vim"

# Start xmonad
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx >/dev/null 2>/dev/null
