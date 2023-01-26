# dotfiles

Мои "dotfiles".

Структура сохранена.

Программы, шрифты и т.д. - [programs.md](programs.md)

P.S. Директория `.github` нужна **только** на GitHub.

## Установка

Инструкций **нет** и **не будет**. Лень писать =)

## Скриншоты

- [Oh My Posh](.github/omp.png)
- [Терминал](.github/terminal.png)

## Программы

### GUI

- Yandex Browser
- Chromium
- Firefox
- Tor Browser
- Crow Translate
- Audacious
- qBitTorrent
- VirtualBox
- QEMU
- Telegram
- Discord
- Jami
- KeePassXC
- Sublime Text
- VSCode
- LibreOffice
- FreeOffice
- TLauncher
- VokoscreenNG
- Kdenlive
- Obdidian.md
- Foliate
- Flameshot
- Stacer
- KolourPaint
- GIMP
- MyPaint
- Krita
- SMPlayer
- MPV
- VLC
- VideoMass
- HandBrake
- Play On Linux
- Golly
- Remmina
- NoVNC
- Filezilla
- HardInfo
- Flatpak
- Ventoy
- Balena Etcher
- Asbru CM
- Kitty
- Terminator
- Tilix
- Alacritty
- Yakuake
- Cool Retro Term
- Screenkey
- Ark
- PeaZip
- Baobab
- Rofi
- Mockoon

### CLI

- micro
- nvim
- tmux
- zellij
- bash
- zsh (+ oh-my-zsh + pure + plugins (git zsh-autosuggestions zsh-syntax-highlighting thefuck))
- fish (+ fisher plugins (pure))
- bat
- exa
- htop
- btop
- screenfetch
- neofetch
- mkcert
- qrcp
- qrencode
- docker
- colorls
- lazygit
- asciinema + agg
- caddy
- git
- httpie
- miniserve
- zoxide

### ЯП'Ы

- Node.js (https://github.com/tj/n) (+ Yarn)
- Python 3
- Ruby (+ `bundle` & Jekyll)

## Шрифты

## I: NF - nerd fonts

- Terminus (TTF)
- Cascadia Code
- Caskaydia Code NF
- MesloLGS NF
- Ubuntu Mono
- Fira Code
- Courier New
- Iosevka
- Roboto Mono
- Hack

## Иконки

- Papirus

## Расширения в VSCode

- "christian-kohler.path-intellisense"
- "davidanson.vscode-markdownlint"
- "dbaeumer.vscode-eslint"
- "dsznajder.es7-react-js-snippets"
- "eamodio.gitlens"
- "editorconfig.editorconfig"
- "formulahendry.code-runner"
- "foxundermoon.shell-format"
- "oderwat.indent-rainbow"
- "pmneo.tsimporter"
- "styled-components.vscode-styled-components"
- "stylelint.vscode-stylelint"
- "xabikos.javascriptsnippets"
- "zhuangtongfa.material-theme"
- "wakatime.vscode-wakatime"
- "esbenp.prettier-vscode"

## P.S.

### Команда для копирования настроек Sublime в репо
```bash
rsync --mkpath -arv ~/.config/sublime-text/Installed\ Packages ~/allfiles/files/A.ВАЖНЫЕ/dotfiles/.config/sublime-text/ && rsync --mkpath -arv --exclude='Waka*' --exclude='waka*' ~/.config/sublime-text/Packages/User ~/allfiles/files/A.ВАЖНЫЕ/dotfiles/.config/sublime-text/Packages
```
