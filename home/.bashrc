# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias hx='helix'
alias ip='ip -color=auto'
alias ls='ls --color=auto'

PS1='\[\e[1;36m\][\[\e[33m\]\u@\h \[\e[32m\]\W\[\e[31m\]\[\e[36m\]]\[\e[0m\] '
PS2='\[\e[1;33m\]>\[\e[0m\] '
