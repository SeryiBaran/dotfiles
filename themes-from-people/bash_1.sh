#!/bin/bash

# https://t.me/cubementore

# Colors
CWHITE="\e[0;37m"
CBLACK="\e[0;30m"
CRED="\e[0;31m"
CBLUE="\e[0;34m"
CGREEN="\e[0;32m"
CPURPLE="\e[0;35m"
CORANGE="\e[0;33m"
CCYAN="\e[0;36m"
DRED="\e[1;31m"
DBLUE="\e[1;34m"
DGREEN="\e[1;32m"
DPURPLE="\e[1;35m"
DORANGE="\e[1;33m"
DBLACK="\e[1;30m"
CYELLOW="\e[1;33m"
DYELLOW="\e[1;33m"
DCYAN="\e[1;36m"
DWHITE="\e[1;37m"
BRED="\e[41m"
BBLUE="\e[44m"
BGREEN="\e[42m"
BPURPLE="\e[45m"
BORANGE="\e[43m"
BCYAN="\e[46m"
BWHITE="\e[47m"
BBLACK="\e[40m"
CRESET="\e[0m"

CACCENT=$CCYAN
BACCENT=$BCYAN

export PS1="\[$CWHITE$BACCENT\] ◢\[$BWHITE$DBLACK\] \u\[$CACCENT$BWHITE\]@\[$DBLACK$BWHITE\]\h \[$CWHITE$BACCENT\]◤ \w \[$CACCENT$BWHITE\]◤ \$ \[$CWHITE\]◤\[$CRESET\] "
export PS2="\[$BACCENT\] \[$BWHITE\] \[$CRESET\] "

# PS1 fuckery
function _update_ps1() {
	RES="$?"
	if [[ $RES == 0 ]]; then
	PS1="\[$CWHITE$BACCENT\] ◢\[$BWHITE$DBLACK\] \u\[$CACCENT$BWHITE\]@\[$DBLACK$BWHITE\]\h \[$CWHITE$BACCENT\]◤ \w \[$CACCENT$BWHITE\]◤ \$ \[$CWHITE\]◤\[$CRESET\] "
	else
	PS1="\[$CWHITE$BRED\] $RES ◢\[$BWHITE$DBLACK\] \u\[$CACCENT$BWHITE\]@\[$DBLACK$BWHITE\]\h \[$CWHITE$BACCENT\]◤ \w \[$CACCENT$BWHITE\]◤ \$ \[$CWHITE\]◤\[$CRESET\] "		
	fi

	if [[ ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
	PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
	fi

#	if [[ "$TERM" == "fbterm-256color" || "$TERM" == "linux" || $(pidof fbterm > /dev/null) ]]; then
	if pidof fbterm > /dev/null; then
		_update_ps1_powerline
	fi
}

_update_ps1;
