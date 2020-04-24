export ZSH="/home/ben/.oh-my-zsh"
ZSH_THEME="candy"
plugins=(git)
if [[ -e  $ZSH/oh-my-zsh.sh ]]; then
  source $ZSH/oh-my-zsh.sh
else
  if read -q "?oh-my-zsh is not installed. Install it?: "; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    rm ~/.zshrc
    mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc
  fi
fi
export EDITOR='vim'
source $HOME/.regnare