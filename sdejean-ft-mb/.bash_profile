# vim:set filetype=sh:
# .bash_profile

# .profile
if [ -f "${HOME}/.profile" ]; then
    . ${HOME}/.profile
fi

# bashrc
if [ -f "${HOME}/.bashrc" ]; then
    . ${HOME}/.bashrc
fi

# User specific environment and startup programs
#

export PATH="$HOME/.cargo/bin:$PATH"
