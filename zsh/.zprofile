umask 022

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Start ssh-agent if it's not alreaddy running
[ -n "$SSH_AUTH_SOCK" ] || eval `ssh-agent`

if [[ $(command -v neofetch) ]]; then
  neofetch
fi
