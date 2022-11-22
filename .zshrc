export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export SHELLS_CONFIGS_DIR="$HOME/shells_configs"

# eval "$(starship init zsh)"

# if [ -f $SHELLS_CONFIGS_DIR/agnoster.sh ]; then
    # . $SHELLS_CONFIGS_DIR/agnoster.sh
# fi

if [ -f $SHELLS_CONFIGS_DIR/pure.sh ]; then
    . $SHELLS_CONFIGS_DIR/pure.sh
fi

if [ -f $SHELLS_CONFIGS_DIR/config.sh ]; then
    . $SHELLS_CONFIGS_DIR/config.sh
fi

if [ -f $SHELLS_CONFIGS_DIR/zsh_aliases.sh ]; then
    . $SHELLS_CONFIGS_DIR/zsh_aliases.sh
fi
