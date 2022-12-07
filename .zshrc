# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
