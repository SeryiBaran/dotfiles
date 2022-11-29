if status is-interactive
    # Commands to run in interactive sessions can go here
end

export HISTSIZE=1000000
export EDITOR="micro -colorscheme my"

set N_PREFIX "$HOME/n"

set -U fish_user_paths $fish_user_paths $N_PREFIX/bin $HOME/.shconfig/tools

if test -e ~/.shconfig/aliases.sh
    source ~/.shconfig/aliases.sh
end
