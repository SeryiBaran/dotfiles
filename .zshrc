export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"

plugins=(zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# eval "$(starship init zsh)"
# eval "$(oh-my-posh init zsh --config '~/omp.json')"

# [[ -f ~/.shconfig/pure.sh ]] && source ~/.shconfig/pure.sh
# [[ -f ~/.shconfig/pure.sh ]] && source ~/.shconfig/agnoster.sh
[[ -f ~/.shconfig/config.sh ]] && source ~/.shconfig/config.sh

# PROMPT="
# %F{#0D73CC}%~%{$reset_color%}
# %F{green}$%{$reset_color%} "

# https://unix.stackexchange.com/questions/273529/shorten-path-in-zsh-prompt
PS1="
 $c[bold]$c[green]╭─%n$c[reset] at $c[bold]$c[magenta]%M$c[reset] in $c[bold]$c[blue]%(5~|%-1~/…/%3~|%4~)$c[reset]
 $c[bold]$c[green]╰─λ$c[reset] "
