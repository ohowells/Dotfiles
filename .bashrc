#
# ~/.bashrc
#

source ~/.git-prompt.sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias lsa='ls -a'
alias update='sudo pacman -Syu'
alias reboot='sudo reboot'
alias poweroff='sudo poweroff'

# '[r]emove [o]rphans' - recursively remove ALL orphaned packages
alias pacro="/usr/bin/pacman -Qtdq > /dev/null && sudo /usr/bin/pacman -Rns \$(/usr/bin/pacman -Qtdq | sed -e ':a;N;\$!ba;s/\n/ /g')"

# A quick way to get out of current directory
alias .='cd ..'
alias ..='cd ../../'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .5='cd ../../../../../'

# Variables from git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWUPSTREAM="auto"

#PS1='\[\e[1;32m\] \w\[\e[1;37m\] $(__git_ps1 "(%s)")\$\[\e[1;37m\] '

PROMPT_COMMAND='__git_ps1 "\[\e[1;32m\] \w\[\e[1;37m\] " "\\\$\[\e[1;37m\] "'
