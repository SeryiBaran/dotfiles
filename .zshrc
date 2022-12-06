export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"

plugins=(zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# eval "$(starship init zsh)"
eval "$(oh-my-posh init $(oh-my-posh get shell) --config '~/omp.json')"

# [[ -f ~/.shconfig/pure.sh ]] && source ~/.shconfig/pure.sh
# [[ -f ~/.shconfig/pure.sh ]] && source ~/.shconfig/agnoster.sh
[[ -f ~/.shconfig/config.sh ]] && source ~/.shconfig/config.sh

# PROMPT="
# %F{#0D73CC}%~%{$reset_color%}
# %F{green}$%{$reset_color%} "
