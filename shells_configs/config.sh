source $(dirname $(gem which colorls))/tab_complete.sh

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte-2.91.sh
fi

export EDITOR="micro"

if [ -f ~/shells_configs/aliases.sh ]; then
    . ~/shells_configs/aliases.sh
fi

if [ -f ~/shells_configs/functions.sh ]; then
    . ~/shells_configs/functions.sh
fi

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

export PATH="$PATH:$HOME/zx-scripts"
export PATH="$PATH:$HOME/sb-tools"

# eval "$(oh-my-posh init $(oh-my-posh get shell) --config ~/omp.json)"
