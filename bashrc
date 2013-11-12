#!/bin/bash
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

if [[ -f ${HOME}/.bash_aliases ]]; then
    . ${HOME}/.bash_aliases
fi

# ignore duplicates in history, ignore spaces
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=1024
HISTFILESIZE=4096

# append to history, don't replace
shopt -s histappend
# update the values of LINES and COLUMNS after each command
shopt -s checkwinsize

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# color prompt if $COLORTERM is set
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
elif [ -e /usr/share/terminfo/x/xterm-16color ]; then
        export TERM='xterm-16color'
else
        export TERM='xterm-color'
fi

## ENVIRONMENT-BASED BASH PROMPT COLORIZATION ##
# Define color pallete
red=$(tput setaf 1)
ylw=$(tput setaf 3)
grn=$(tput setaf 2)
wht=$(tput setaf 7)
reset=$(tput sgr0)

if [[ ${TERM} =~ "xterm" ]]; then
    shopt -s compat31   # Bash 3.1 behavior for "=~" matching
    if [[ ${HOSTNAME} =~ ".*prd.*" ]]; then         # PRD
        PS1='[\[${red}\]\u@\h:\[${reset}\] \W]\$ '
    elif [[ ${HOSTNAME} =~ ".*stg.*" ]]; then       # STG
        PS1='[\[${ylw}\]\u@\h:\[${reset}\] \W]\$ '
    elif [[ ${HOSTNAME} =~ ".*dev.*" ]]; then       # DEV
        PS1='[\[${grn}\]\u@\h:\[${reset}\] \W]\$ '
    else
        PS1='[\[${wht}\]\u@\h:\[${reset}\] \W]\$ '
    fi
    export PS1
    # solarized
    if [ -f ${HOME}/src/dircolors-solarized/dircolors.ansi-dark ]; then
        eval $(dircolors ${HOME}/src/dircolors-solarized/dircolors.ansi-dark)
    fi
fi

# powerline
#if [ -f ${HOME}/powerline/scripts/powerline ]; then
#    export PATH=${PATH}:${HOME}/powerline/scripts
#fi
#if [ -f ~/powerline/powerline/bindings/bash/powerline.sh ]; then
#    echo . ~/powerline/powerline/bindings/bash/powerline.sh
#fi

