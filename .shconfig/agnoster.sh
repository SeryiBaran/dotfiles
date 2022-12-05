prompt_context() {}

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

PROMPT="%{%f%b%k%}$(build_prompt)
%F{green}❯%f "
