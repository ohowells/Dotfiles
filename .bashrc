#
# ~/.bashrc
#

source ~/.git-prompt.sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\e[1;32m\] \w\[\e[1;37m\] $(__git_ps1 "(%s)") \$\[\e[1;37m\] '
