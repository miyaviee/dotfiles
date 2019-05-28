[ -e /etc/bashrc ] && . /etc/bashrc

export TERM=xterm-256color
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

PS1='[\u@\h \W]\$ '

export EDITOR=nvim

export PATH=/usr/local/bin:$PATH

export GOPATH=~/go
export PATH=$GOPATH/bin:$PATH
export CGO_ENABLED=0

export DIRENV_WARN_TIMEOUT=100s
export PIPENV_VENV_IN_PROJECT=1

export GIT_MERGE_AUTOEDIT=no

alias vi=nvim

type kubectl > /dev/null 2>&1 && source <(kubectl completion bash)

type direnv > /dev/null 2>&1 && eval "$(direnv hook bash)"
