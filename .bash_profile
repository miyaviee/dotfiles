# for Mac
[ -f ~/.bashrc ] && . ~/.bashrc

# The next line updates PATH for the Google Cloud SDK.
[ -f ~/google-cloud-sdk/path.bash.inc ] && source ~/google-cloud-sdk/path.bash.inc

# The next line enables shell command completion for gcloud.
[ -f ~/google-cloud-sdk/completion.bash.inc ] && source ~/google-cloud-sdk/completion.bash.inc

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

# asdf
[ -e ~/.asdf/asdf.sh ] && source ~/.asdf/asdf.sh
