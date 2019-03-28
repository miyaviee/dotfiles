# The next line updates PATH for the Google Cloud SDK.
[ -f ~/google-cloud-sdk/path.zsh.inc ] && source ~/google-cloud-sdk/path.zsh.inc

# The next line enables shell command completion for gcloud.
[ -f ~/google-cloud-sdk/completion.zsh.inc ] && source ~/google-cloud-sdk/completion.zsh.inc

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

type anyenv > /dev/null 2>&1 && eval "$(anyenv init -)"
