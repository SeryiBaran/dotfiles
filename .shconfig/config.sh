if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte-2.91.sh
fi

export HISTSIZE=1000000
export EDITOR="micro -colorscheme my"
export MYPAGER="bat --theme TwoDark"
# export MANPAGER="$PAGER"
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

[[ -f ~/.shconfig/zsh_colors.sh ]] && source ~/.shconfig/zsh_colors.sh
[[ -f ~/.shconfig/aliases.sh ]] && source ~/.shconfig/aliases.sh

[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

export N_PREFIX="$HOME/n"

export PATH="$PATH:$N_PREFIX/bin:$HOME/.shconfig/tools"
