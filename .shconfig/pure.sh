fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit

PURE_PROMPT_SYMBOL="%B$%b"

zstyle :prompt:pure:path color "#059FFF"
zstyle :prompt:pure:git:branch color "#00FF00"
zstyle :prompt:pure:prompt:success color "#00FF00"
zstyle :prompt:pure:virtualenv color "#C9C9C9"

prompt pure
