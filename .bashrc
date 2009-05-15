export TERM=rxvt-unicode
alias ls='ls --color=auto'
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -iv"
alias aur="yaourt -Su --aur"
alias Syu="yaourt -Syu"
alias Su='su -l'

#PS1='[\u@\h \W]\$ '

complete -cf sudo
#acroread=/usr/share/Adobe/Reader8/bin/acroread
export OOO_FORCE_DESKTOP=Gnome

# bunt machen
COLOR_RED="\[\e[31;40m\]"
COLOR_GREEN="\[\e[32;40m\]"
COLOR_YELLOW="\[\e[33;40m\]"
COLOR_BLUE="\[\e[34;40m\]"
COLOR_MAGENTA="\[\e[35;40m\]"
COLOR_CYAN="\[\e[36;40m\]"

COLOR_RED_BOLD="\[\e[31;1m\]"
COLOR_GREEN_BOLD="\[\e[32;1m\]"
COLOR_YELLOW_BOLD="\[\e[33;1m\]"
COLOR_BLUE_BOLD="\[\e[34;1m\]"
COLOR_MAGENTA_BOLD="\[\e[35;1m\]"
COLOR_CYAN_BOLD="\[\e[36;1m\]"

COLOR_NONE="\[\e[0m\]"

PS1="\[\u: ${COLOR_GREEN_BOLD}\w\n${COLOR_YELLOW_BOLD}\$ \[\e[1;37m\] "
#PS1='\[\e[0;32m\]\u \[\e[1;34m\]\w \[\e[1;32m\]\$ \[\e[1;37m\] '

#nochmal Farben
export LS_COLORS='di=01;36:*.zip=33:*.tar=33:*.tar.gz=33:*.tar.bz2=33:*.jpg=35:*.JPG=35:*.PNG=35:*.png=35:*.rar=33:*.ico=35:*.gif=35:*.svg=35:*.cpp=31:*.h=31'

function biggestProgs()
{
	echo "-----+---------+---------------------------"
	echo " POS | SIZE MB |            NAME " 
	echo "-----+---------+---------------------------"
	pacman -Qs|awk '/local/{print substr($3,2)" "substr($1,7)}'|sort -rn|head -$1|awk '{printf "%4d | %7s | %s\n",NR,$1,$2}'
}

#xsession
if [ "$(tty)" = "/dev/vc/1" ]; then
  startx
  logout
fi
