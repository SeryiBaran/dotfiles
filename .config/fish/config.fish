if status is-interactive
    # Commands to run in interactive sessions can go here
end

set HISTSIZE 1000000
set EDITOR "micro -colorscheme my"

set -a PATH "$N_PREFIX/bin"
set -a PATH "$HOME/.shconfig/tools"

if test -e ~/.shconfig/aliases.sh
    source ~/.shconfig/aliases.sh
end
