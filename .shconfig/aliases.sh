alias aliases='$EDITOR .shconfig/aliases.sh'

# Kubuntu default ls
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Color ls
# alias l='colorls -A --gs --sd'
# alias la='colorls -lA --gs --sd'
# alias ct="colorls --tree"
# alias l="exa -alF -s type --group-directories-first --icons"
# alias ll="exa -aF -s type --group-directories-first --icons"
alias l="exa -alF -s type --group-directories-first"
alias ll="exa -aF -s type --group-directories-first"
alias ct='l --tree --ignore-glob ".git|node_modules|.parcel-cache|.cache"'

# alias ll='ls -alF --group-directories-first'
# alias la='ls -A --group-directories-first'
# alias l='ls -alF --group-directories-first'


alias m="$EDITOR"
alias chr="~/chromium/run.sh"
alias novnc="~/novnc/utils/novnc_proxy"
alias npa="npm-check-updates -u --interactive --format group"
alias cla="bat --theme TwoDark"

# Use like so:
#   echo "Hello termbin" | tb
alias tb="nc termbin.com 9999"

alias recas="asciinema rec"
alias recasbash="asciinema rec -c bash"
alias recasgif='rm -f asciicast.cast asciicast.gif && asciinema rec ./asciicast.cast && agg ./asciicast.cast ./asciicast.gif --font-family "MesloLGS NF"'
alias recasmp4='rm -f asciicast.cast asciicast.gif asciicast.mp4 && asciinema rec ./asciicast.cast && agg ./asciicast.cast ./asciicast.gif --font-family "MesloLGS NF" && ffmpeg -i asciicast.gif -movflags faststart asciicast.mp4'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Archives
alias tarc="tar czvf" # Create tar
alias tarx="tar xzvf" # Extract tar

# Short
alias q="exit"
alias c="clear"

# Ping
alias ping='ping -c 5'
alias ping100="ping -c 100 -i 0.5"

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

# Docker
alias ddnginx='docker run --rm -p 80:80 -v "$PWD:/usr/share/nginx/html:ro" nginx:alpine'
alias ddapache='docker run --rm -p 80:80 -v "$PWD":/usr/local/apache2/htdocs/ httpd:alpine'
alias ddssh='ssh-keygen -f "~/.ssh/known_hosts" -R "[n1.loc]:3000" && ssh-copy-id -p 3000 user@n1.loc && ssh -p 3000 user@n1.loc'
alias ddalpine='docker run -it --rm alpine sh'
alias ddubuntu='docker run -it --rm ubuntu bash'

alias checkport='sudo netstat -alnp | grep'

# Copy/paste
alias copy='xclip -i -selection clipboard'
alias paste='xclip -o -selection clipboard'

# Network
alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p' && curl https://ipinfo.io/ip"

# Offices
alias foword="~/freeoffice/textmaker"
alias foexcel="~/freeoffice/planmaker"
alias lbo="libreoffice"

# AppImages
alias krita="~/krita.appimage"
alias asbru="~/asbruCm.appimage"
alias respapp="~/responsivelyApp.appimage"
alias marktext="~/marktext.appimage"

# Minecraft
alias tl="java -jar ~/TLauncher-2.86/TLauncher-2.86.jar"
alias tll="java -jar ~/TLLegacy/TL_legacy.jar"
