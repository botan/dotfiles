if [ -f '/Users/botan/.zsh-autocomplete/zsh-autocomplete.plugin.zsh' ]; then . '/Users/botan/.zsh-autocomplete/zsh-autocomplete.plugin.zsh'; fi

function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1] /p'
}
setopt PROMPT_SUBST
export PROMPT='%B%F{9}%n:%f %F{15}%~%f %F{39}$(parse_git_branch)%f> %f%b'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/botan/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/botan/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/botan/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/botan/google-cloud-sdk/completion.zsh.inc'; fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
