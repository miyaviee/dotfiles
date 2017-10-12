if [ -e ~/.bashrc ]; then
  . ~/.bashrc
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f ~/google-cloud-sdk/path.bash.inc ]; then source ~/google-cloud-sdk/path.bash.inc; fi

# The next line enables shell command completion for gcloud.
if [ -f ~/google-cloud-sdk/completion.bash.inc ]; then source ~/google-cloud-sdk/completion.bash.inc; fi
