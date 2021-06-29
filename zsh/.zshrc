ANTIGEN_PATH='~/dotfiles'
source $ANTIGEN_PATH/antigen/antigen.zsh

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

alias tm="tmux a -d -t remote || tmux new -s remote"
