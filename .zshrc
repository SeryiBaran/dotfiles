export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# plugins=(git zsh-autosuggestions zsh-syntax-highlighting thefuck)
plugins=(zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# eval "$(starship init zsh)"

[[ -f ~/.shconfig/agnoster.sh ]] && source ~/.shconfig/agnoster.sh
# [[ -f ~/.shconfig/pure.sh ]] && source ~/.shconfig/pure.sh
[[ -f ~/.shconfig/config.sh ]] && source ~/.shconfig/config.sh

# PROMPT="
# %F{#0D73CC}%~%f
# %F{green}$%f "
