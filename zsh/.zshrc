umask 022
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

DISABLE_AUTO_TITLE="true"
case $TERM in
  xterm*)
    precmd() { echo -en "\e]0;$USER@$HOST:${PWD/$HOME/~}\a" }
    ;;
esac

export ZSH="/home/ben/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
source ~/.powerlevel10k/powerlevel10k.zsh-theme
plugins=(git tmux)
export EDITOR='vim'
source $HOME/.regnare

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
