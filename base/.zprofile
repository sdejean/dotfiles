. "${HOME}/.profile_methods"

if [[ "$(uname)"  == 'Darwin' ]]; then
    mac_path_helper
fi

# set PATH so it includes user's private bin if it exists
[[ -d "${HOME}/.local/bin" ]] && export PATH="${HOME}/.local/bin:${PATH}"
[[ -d "${HOME}/bin" ]] && export PATH="${HOME}/bin:${PATH}"

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
[[ -f "${HOME}/.shellsetup-rbenv" ]] && . "${HOME}/.shellsetup-rbenv"
[[ -f "${HOME}/.shellsetup-darwin-perl5" ]] && . "${HOME}/.shellsetup-darwin-perl5"

WORKSPACE="${HOME}/work"
if [ -d "${WORKSPACE}/go" ]; then
    export GOPATH="${WORKSPACE}/go" \
    && export PATH="${GOPATH}/bin:${PATH}"
fi
