#
# ~/.bashrc
#

source ~/.git-prompt.sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Variables from git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true

PS1='\[\e[1;32m\] \w\[\e[1;37m\] $(__git_ps1 "(%s)")\$\[\e[1;37m\] '