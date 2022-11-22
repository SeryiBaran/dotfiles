source $(dirname $(gem which colorls))/tab_complete.sh

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte-2.91.sh
fi

export EDITOR="micro -colorscheme my"

[[ -f ~/.shconfig/functions.sh ]] && source ~/.shconfig/functions.sh
[[ -f ~/.shconfig/aliases.sh ]] && source ~/.shconfig/aliases.sh

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

export PATH="$PATH:$HOME/zx-scripts:$HOME/sb-tools"

# eval "$(oh-my-posh init $(oh-my-posh get shell) --config ~/omp.json)"
