prompt_context() {
  prompt_segment '#4e4e4e' '#DD4814' '\uf31b '
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment '#4e4e4e' default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

prompt_status() {
  local symbols
  symbols=()
  [[ $RETVAL -ne 0 ]] && symbols+="%{%F{red}%}✘"
  [[ $UID -eq 0 ]] && symbols+="%{%F{yellow}%}⚡"
  [[ $(jobs -l | wc -l) -gt 0 ]] && symbols+="%{%F{cyan}%}⚙"

  [[ -n "$symbols" ]] && prompt_segment "#383C3E" default "$symbols"
}

prompt_dir() {
  prompt_segment blue $CURRENT_FG '%25<...<%~%<<'
}

ZSH_THEME_NVM_PROMPT_PREFIX="  "
ZSH_THEME_NVM_PROMPT_SUFFIX=" "

RPROMPT='$FG[064]$(nvm_prompt_info)%{$reset_color%}'
