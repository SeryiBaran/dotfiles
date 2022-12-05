export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# eval "$(starship init zsh)"

# [[ -f ~/.shconfig/pure.sh ]] && source ~/.shconfig/pure.sh
[[ -f ~/.shconfig/config.sh ]] && source ~/.shconfig/config.sh

directory() {
  echo "%4~"
}

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

precmd() {
  PROMPT="\
%{$bg[blue]$fg[black]%} $(directory) %{$reset_color%}\
%{$fg[blue]%}%{$reset_color%}\
%{$fg[green]%}$(git_prompt_info)%{$reset_color%}
%{$fg[green]%}❯%{$reset_color%} "	
}
