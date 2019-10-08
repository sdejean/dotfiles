#!/bin/bash
# vim:set filetype=sh:

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    alias less='less --RAW-CONTROL-CHARS'
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -la'
alias llr='ls -latrhF'

if [ $(uname) == 'Darwin' ]; then
    alias ls='ls -G'
    alias ll='ls -la'
    alias llr='ls -latrhFG'
fi
