alias aliases="$EDITOR ~/.shconfig/aliases.sh"

# Default ls
# alias ll='ls -aF --group-directories-first'
# alias l='ls -alF --group-directories-first'

# Color ls
alias ll="exa -aF -s type --group-directories-first"
alias l="exa -alF -s type --group-directories-first"

alias ct='l --tree --ignore-glob ".git|node_modules|.parcel-cache|.cache"'

alias m="$EDITOR"
alias npa="npm-check-updates -u --interactive --format group"
alias cla="bat --theme TwoDark"

# Use like so:
#   echo "Hello termbin" | tb
alias tb="nc termbin.com 9999"

alias recas="asciinema rec"
alias recasbash="asciinema rec -c bash"
# Short
alias q="exit"
alias c="clear"

# Network
alias ping='ping -c 5'
alias ping100="ping -c 100 -i 0.5"
alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p' && curl https://ipinfo.io/ip"

alias calcul="bc -l"

# QR Codes
alias qr='qrencode -m 2 -t utf8 <<< "$1"'
alias qrpng='qrencode -m 2 -t png -o qr.png <<< "$1"'
alias qru='qrcp $1 --port 3000 -k'
alias qrd='qrcp receive --port 3000 -k'

# Node.js utils aliases
alias brs='browser-sync start --server --files "**/*"'

# Terminals
alias xtrm='xterm -fa "Cascadia Code" -fs 12'

# Ruby
alias jk="bundle exec jekyll s --host=0.0.0.0"

alias checkport='sudo netstat -alnp | grep'

# Copy/paste
alias copy='xclip -i -selection clipboard'
alias paste='xclip -o -selection clipboard'
