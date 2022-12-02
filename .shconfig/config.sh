if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte-2.91.sh
fi

export HISTSIZE=1000000
export EDITOR="micro -colorscheme my"

[[ -f ~/.shconfig/aliases.sh ]] && source ~/.shconfig/aliases.sh

eval "$(oh-my-posh init $(oh-my-posh get shell) --config ~/omp.json)"

export N_PREFIX="$HOME/n"

export PATH="$PATH:$N_PREFIX/bin:$HOME/.shconfig/tools"
