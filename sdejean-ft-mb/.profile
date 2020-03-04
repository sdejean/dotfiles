#!/bin/bash
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
# shellcheck source=.profile_methods
. "${HOME}/.profile_methods"

# if running bash
if [ -n "${BASH_VERSION}" ]; then
    # include .bashrc if it exists
    # shellcheck source=.bashrc
    if [ -f "${HOME}/.bashrc" ]; then
        . "${HOME}/.bashrc"
    fi
fi

# if on a mac, lets do the path_helper
if [ "$(uname)" = 'Darwin' ] ; then
    echo "Mac Path Helper"
#   mac_path_helper
fi

# set PATH so it includes user's private bin if it exists
if [ -d "${HOME}/.local/bin" ] ; then
    export PATH="${HOME}/.local/bin:${PATH}"
fi
if [ -d "${HOME}/bin" ] ; then
    export PATH="${HOME}/bin:${PATH}"
fi

# set EDITOR
which vi >/dev/null && export EDITOR && EDITOR="$(which vi)"
which vim >/dev/null && export EDITOR && EDITOR="$(which vim)"


# External tool setup:
# - homebrew github api-key token
# - hub
# - rbenv
# - manually installed perl5 for Mac OS
[[ -f "${HOME}/.shellsetup-brew-token" ]] && . "${HOME}/.shellsetup-brew-token"
[[ -f "${HOME}/.shellsetup-hub" ]] && . "${HOME}/.shellsetup-hub"
# [[ -f "${HOME}/.shellsetup-pyenv" ]] && . "${HOME}/.shellsetup-pyenv"
[[ -f "${HOME}/.shellsetup-rbenv" ]] && . "${HOME}/.shellsetup-rbenv"
[[ -f "${HOME}/.shellsetup-darwin-perl5" ]] && . "${HOME}/.shellsetup-darwin-perl5"


WORKSPACE="${HOME}/work"
if [ -d "${WORKSPACE}/go" ]; then
    export GOPATH="${WORKSPACE}/go"
    export PATH="${GOPATH}/bin:${PATH}"
fi

export ANSIBLE_VAULT_PASSWORD_FILE_ADMIN="${HOME}/.ansible/adminpass"
export ANSIBLE_VAULT_PASSWORD_FILE_PROD="${HOME}/.ansible/prodpass"
export ANSIBLE_VAULT_PASSWORD_FILE_DEV="${HOME}/.ansible/devpass"

export PATH="$HOME/.cargo/bin:$PATH"
