alias aliases="$EDITOR ~/.shconfig/aliases.sh"

# alias ll='ls -aF --group-directories-first'
# alias l='ls -alF --group-directories-first'

alias ll="exa -Fa -s type --group-directories-first"
alias l="exa -Flah -s type --group-directories-first"
alias ct='l --tree --ignore-glob ".git|node_modules|.parcel-cache|.cache"'

alias q="exit"
alias c="tput reset"
alias m="$EDITOR"
alias cla="$MYPAGER"
alias npa="npm-check-updates -u --interactive --format group"
alias tb="nc termbin.com 9999"
alias zmux="zellij"
alias jk="bundle exec jekyll s --host=0.0.0.0"
alias vcp="rsync -ah --progress"
alias ip="ip -color=auto"
alias neofetch-table='neofetch --ascii_distro LFS --color_blocks off | column -ts ":" -o "" && neofetch --off --disable $(cat .config/neofetch/config.conf | grep -oP "(?<=info )\w+|(?<=.\" )\w+" | sed -e "/^cols$/d" | tr "\n" " ") | tail -n +2'

alias recas="asciinema rec"
alias recasbash="asciinema rec -c bash"

alias ping='ping -c 5'
alias checkport='sudo netstat -alnp | grep'

alias qr="qrencode -m 2 -t utf8 $argv"
alias qrpng="qrencode -m 2 -t png -o qr.png $argv"
alias qru="qrcp $argv --port 3000 -k"
alias qrd="qrcp receive --port 3000 -k"
alias qrserve="miniserve -Dzgq --readme --upload-files -p 3000 -i 0.0.0.0 ."

alias copy='xclip -i -selection clipboard'
alias paste='xclip -o -selection clipboard'

alias add-ssh-key-fish="eval (ssh-agent -c) && ssh-add ~/.ssh/sbgithub"
alias add-ssh-key="eval '`ssh-agent -s`' && ssh-add ~/.ssh/sbgithub"

alias create-tar="tar -zcvf"
