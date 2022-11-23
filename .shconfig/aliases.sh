alias aliases="$EDITOR ~/.shconfig/aliases.sh"

# alias ll='ls -aF --group-directories-first'
# alias l='ls -alF --group-directories-first'

alias ll="exa -aF -s type --group-directories-first"
alias l="exa -alF -s type --group-directories-first"
alias ct='l --tree --ignore-glob ".git|node_modules|.parcel-cache|.cache"'

alias m="$EDITOR"
alias q="exit"
alias c="clear"

alias npa="npm-check-updates -u --interactive --format group"
alias cla="bat --theme TwoDark"
alias tb="nc termbin.com 9999"
alias xtrm='xterm -fa "Cascadia Code" -fs 12'
alias jk="bundle exec jekyll s --host=0.0.0.0"

alias recas="asciinema rec"
alias recasbash="asciinema rec -c bash"

alias ping='ping -c 5'
alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p' && curl https://ipinfo.io/ip"
alias checkport='sudo netstat -alnp | grep'

alias qr='qrencode -m 2 -t utf8 <<< "$1"'
alias qrpng='qrencode -m 2 -t png -o qr.png <<< "$1"'
alias qru='qrcp $1 --port 3000 -k'
alias qrd='qrcp receive --port 3000 -k'

alias copy='xclip -i -selection clipboard'
alias paste='xclip -o -selection clipboard'
