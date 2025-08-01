# avoid overwriting
export PATH=/usr/local/sbin:$PATH
export PATH=$GOPATH/bin:$PATH

# The next line updates PATH for the Google Cloud SDK.
[ -f ~/google-cloud-sdk/path.zsh.inc ] && source ~/google-cloud-sdk/path.zsh.inc

# The next line enables shell command completion for gcloud.
[ -f ~/google-cloud-sdk/completion.zsh.inc ] && source ~/google-cloud-sdk/completion.zsh.inc

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

# brew
if [[ $(uname -m) == "x86_64" ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
else
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# direnv
eval "$(direnv hook zsh)"

# mise
eval "$(mise activate zsh --shims)"

# include local setting
[ -f ~/.local.zsh.inc ] && source ~/.local.zsh.inc
