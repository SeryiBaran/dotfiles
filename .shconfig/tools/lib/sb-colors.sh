#!/bin/bash

# Gustavo Arnosti Neves - Dec 2018

# Modified from many other snippets
# Adapted to work virtually anywhere
# Works on busybox/ash

# This script:  https://gist.github.com/tavinus/925c7c9e67b5ba20ae38637fd0e06b07
# SO reference: https://stackoverflow.com/questions/16843382/colored-shell-script-output-library

ESeq="\x1b["
RCol="$ESeq"'0m' # Text Reset

# Regular               Bold                    Underline               High Intensity          BoldHigh Intens         Background              High Intensity Backgrounds
Bla="$ESeq"'0;30m';     BBla="$ESeq"'1;30m';    UBla="$ESeq"'4;30m';    IBla="$ESeq"'0;90m';    BIBla="$ESeq"'1;90m';   On_Bla="$ESeq"'40m';    On_IBla="$ESeq"'0;100m';
Red="$ESeq"'0;31m';     BRed="$ESeq"'1;31m';    URed="$ESeq"'4;31m';    IRed="$ESeq"'0;91m';    BIRed="$ESeq"'1;91m';   On_Red="$ESeq"'41m';    On_IRed="$ESeq"'0;101m';
Gre="$ESeq"'0;32m';     BGre="$ESeq"'1;32m';    UGre="$ESeq"'4;32m';    IGre="$ESeq"'0;92m';    BIGre="$ESeq"'1;92m';   On_Gre="$ESeq"'42m';    On_IGre="$ESeq"'0;102m';
Yel="$ESeq"'0;33m';     BYel="$ESeq"'1;33m';    UYel="$ESeq"'4;33m';    IYel="$ESeq"'0;93m';    BIYel="$ESeq"'1;93m';   On_Yel="$ESeq"'43m';    On_IYel="$ESeq"'0;103m';
Blu="$ESeq"'0;34m';     BBlu="$ESeq"'1;34m';    UBlu="$ESeq"'4;34m';    IBlu="$ESeq"'0;94m';    BIBlu="$ESeq"'1;94m';   On_Blu="$ESeq"'44m';    On_IBlu="$ESeq"'0;104m';
Pur="$ESeq"'0;35m';     BPur="$ESeq"'1;35m';    UPur="$ESeq"'4;35m';    IPur="$ESeq"'0;95m';    BIPur="$ESeq"'1;95m';   On_Pur="$ESeq"'45m';    On_IPur="$ESeq"'0;105m';
Cya="$ESeq"'0;36m';     BCya="$ESeq"'1;36m';    UCya="$ESeq"'4;36m';    ICya="$ESeq"'0;96m';    BICya="$ESeq"'1;96m';   On_Cya="$ESeq"'46m';    On_ICya="$ESeq"'0;106m';
Whi="$ESeq"'0;37m';     BWhi="$ESeq"'1;37m';    UWhi="$ESeq"'4;37m';    IWhi="$ESeq"'0;97m';    BIWhi="$ESeq"'1;97m';   On_Whi="$ESeq"'47m';    On_IWhi="$ESeq"'0;107m';

if [[ "$1" == "--debug" ]]; then
	printInfo() {
	        echo -e "${BICya}>>>> ${BIYel}${1}${RCol}"
	}

	printInfo "REGULAR"
	echo -e "${Bla}BLACK ${Blu}BLUE ${Red}RED ${Gre}GREEN ${Yel}YELLOW ${Pur}PURPLE ${Cya}CYAN ${Whi}WHITE ${RCol}\n"

	# Using printf
	#printf "${Bla}BLACK ${Blu}BLUE ${Red}RED ${Gre}GREEN ${Yel}YELLOW ${Pur}PURPLE ${Cya}CYAN ${Whi}WHITE ${RCol}\n\n"

	printInfo "BOLD"
	echo -e "${BBla}BLACK ${BBlu}BLUE ${BRed}RED ${BGre}GREEN ${BYel}YELLOW ${BPur}PURPLE ${BCya}CYAN ${BWhi}WHITE ${RCol}\n"

	printInfo "UNDERLINE"
	echo -e "${UBla}BLACK ${UBlu}BLUE ${URed}RED ${UGre}GREEN ${UYel}YELLOW ${UPur}PURPLE ${UCya}CYAN ${UWhi}WHITE ${RCol}\n"

	printInfo "HIGH INTENSITY"
	echo -e "${IBla}BLACK ${IBlu}BLUE ${IRed}RED ${IGre}GREEN ${IYel}YELLOW ${IPur}PURPLE ${ICya}CYAN ${IWhi}WHITE ${RCol}\n"

	printInfo "BOLD HIGH INTENSITY"
	echo -e "${BIBla}BLACK ${BIBlu}BLUE ${BIRed}RED ${BIGre}GREEN ${BIYel}YELLOW ${BIPur}PURPLE ${BICya}CYAN ${BIWhi}WHITE ${RCol}\n"

	printInfo "BACKGROUND"
	echo -e "${On_Bla}BLACK ${On_Blu}BLUE ${On_Red}RED ${On_Gre}GREEN ${On_Yel}YELLOW ${On_Pur}PURPLE ${On_Cya}CYAN ${On_Whi}WHITE ${RCol}\n"

	printInfo "HIGH INTENSITY BACKGROUND"
	echo -e "${On_IBla}BLACK ${On_IBlu}BLUE ${On_IRed}RED ${On_IGre}GREEN ${On_IYel}YELLOW ${On_IPur}PURPLE ${On_ICya}CYAN ${On_IWhi}WHITE ${RCol}\n"
fi
