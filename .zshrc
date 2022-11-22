export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# eval "$(starship init zsh)"

# if [ -f ~/shells_configs/agnoster.sh ]; then
    # . ~/shells_configs/agnoster.sh
# fi

if [ -f ~/shells_configs/pure.sh ]; then
    . ~/shells_configs/pure.sh
fi

if [ -f ~/shells_configs/config.sh ]; then
    . ~/shells_configs/config.sh
fi

if [ -f ~/shells_configs/zsh_aliases.sh ]; then
    . ~/shells_configs/zsh_aliases.sh
fi
