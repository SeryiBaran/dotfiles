if status is-interactive
    # Commands to run in interactive sessions can go here
end

if test -e ~/.shconfig/aliases.sh
    source ~/.shconfig/aliases.sh
end

export HISTSIZE=1000000
export EDITOR="micro -colorscheme my"

set -x N_PREFIX "$HOME/n"; contains $N_PREFIX $PATH; or set -a PATH $N_PREFIX # Added by n-install (see http://git.io/n-install-repo).
export PATH="$PATH:$HOME/.shconfig/tools"
