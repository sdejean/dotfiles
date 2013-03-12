#!/bin/bash

# import shell-agnostic settings
if [ -f ~/.profile ]; then
        source ~/.profile
fi

# import aliases
if [ -f ~/.bash_aliases ]; then
        source ~/.profile
fi

# ignore duplicates in history, ignore spaces
HISTCONTROL=ignoredups:ignorespace
HISTFILESIZE=4096
6HISTSIZE=1024

# append to history, don't replace
shopt -s histappend

# color prompt if $COLORTERM is set
if [[ -n ${COLORTERM} ]]; then
        PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
fi
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
elif [ -e /usr/share/terminfo/x/xterm-16color ]; then
        export TERM='xterm-16color'
else
        export TERM='xterm-color'
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && \
            eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

    alias less='less --RAW-CONTROL-CHARS'
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
