export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# eval "$(starship init zsh)"

# [[ -f ~/.shconfig/pure.sh ]] && source ~/.shconfig/pure.sh
[[ -f ~/.shconfig/config.sh ]] && source ~/.shconfig/config.sh

PROMPT="%K{blue}%F{black} %~ %f%k%F{blue}%f
%F{green}❯%f "
