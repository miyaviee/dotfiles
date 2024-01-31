# avoid overwriting
export PATH=/usr/local/sbin:$PATH
export PATH=$GOPATH/bin:$PATH
export PATH=~/.asdf/bin:$PATH

# The next line updates PATH for the Google Cloud SDK.
[ -f ~/google-cloud-sdk/path.zsh.inc ] && source ~/google-cloud-sdk/path.zsh.inc

# The next line enables shell command completion for gcloud.
[ -f ~/google-cloud-sdk/completion.zsh.inc ] && source ~/google-cloud-sdk/completion.zsh.inc

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

# asdf
[ -e ~/.asdf/asdf.sh ] && source ~/.asdf/asdf.sh

git () {
    if [ "$1" = "checkout" ]; then
        echo "Don't use checkout; use switch or restore." >&2
        return 1
    else
        command git "$@"
    fi
}
