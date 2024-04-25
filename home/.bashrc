# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PS1='λ '

alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
