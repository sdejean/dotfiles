# vim:set filetype=sh:
# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022
# Profile helper methods
. "${HOME}/.profile_methods"

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# if on a mac, lets do the path_helper
if [ "$(uname)" == 'Darwin' ] ; then
    mac_path_helper
fi

# set PATH so it includes user's private bin if it exists
if [ -d "${HOME}/.local/bin" ] ; then
    export PATH="${HOME}/.local/bin:${PATH}"
fi

if [ -d "${HOME}/bin" ] ; then
    export PATH="${HOME}/bin:${PATH}"
fi

# set EDITOR
if [ -x /usr/bin/vim ] ; then
    export EDITOR=/usr/bin/vim
elif [ -x $(which vim) ] ; then
    export EDITOR=$(which vim)
elif [ -x $(which vi) ] ; then
    export EDITOR=$(which vi)
fi

# arcanist/phabricator
if [ -d "${HOME}/opt/arcanist/bin" ] ; then
    export PATH="${HOME}/opt/arcanist/bin:${PATH}"
fi

# rbenv
if [ -d "${HOME}/.rbenv/bin" ] ; then
    export PATH="${HOME}/.rbenv/bin:${PATH}"
    if [[ $(type rbenv) ]]; then
        eval "$(rbenv init -)"
    fi
fi

# powerline general
if [ -f "${HOME}/opt/powerline/scripts/powerline" ]; then
    export PATH="${PATH}:${HOME}/opt/powerline/scripts"
fi

# github's hub tool, https://github.com/github/hub
if [ -x "${HOME}/opt/hub/hub" ]; then
    export PATH="${PATH}:${HOME}/opt/hub"
fi
