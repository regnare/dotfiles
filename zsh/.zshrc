source ~/.antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundles <<ENDOFBUNDLES
  git
  fzf
  zsh-users/zsh-completions
  zsh-users/zsh-history-substring-search
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-autosuggestions
ENDOFBUNDLES

antigen theme candy
antigen apply

export EDITOR='vim'

if [[ "$TERM" == "screen" ]]; then
    # This is for older systems or simple setups
    export TERM="screen"
elif [[ "$TERM" == "screen-256color" ]]; then
    # This is the modern standard for 256 color support in tmux
    export TERM="screen-256color"
fi

alias tm="tmux a -d -t remote || tmux new -s remote"
alias update="sudo sh -c 'apt update && apt upgrade -y && apt autoremove -y'"
