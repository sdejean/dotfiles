. "${HOME}/.profile_methods"

if [[ "$(uname)"  == 'Darwin' ]]; then
    mac_path_helper
    export HOMEBREW_GITHUB_API_TOKEN=b374cee74e007cdb063451672c4079b14d0444b6
fi

[[ -d "${HOME}/.local/bin" ]] && export PATH="${HOME}/.local/bin:${PATH}"
[[ -d "${HOME}/bin" ]] && export PATH="${HOME}/bin:${PATH}"

if [ -d "${HOME}/.rbenv/bin" ]; then
    export PATH="${HOME}/.rbenv/bin:${PATH}"
    if [ "$(type rbenv)" ]; then
        eval "$(rbenv init -)"
    fi
fi

[[ -d "${HOME}/opt/arcanist/bin" ]] && export PATH="${HOME}/opt/arcanist/bin:${PATH}"
[[ -d "${HOME}/opt/hub/hub" ]] && export PATH="${HOME}/opt/hub/hub:${PATH}"


export EDITOR="$(which vim)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
