[ -e /etc/bashrc ] && . /etc/bashrc

export TERM=xterm-256color
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

PS1='[\u@\h \W]\$ '

export EDITOR=nvim

export PATH=/usr/local/bin:$PATH

export GOPATH=~/go
export PATH=$GOPATH/bin:$PATH

export GEM_HOME=~/.gem
export PATH=~/.gem/bin:$PATH
export PATH=/usr/local/opt/ruby/bin:$PATH

export DIRENV_WARN_TIMEOUT=100s
export PIPENV_VENV_IN_PROJECT=1

[ -z $VIRTUAL_ENV ] || export PATH=$VIRTUAL_ENV/bin:$PATH

export GIT_MERGE_AUTOEDIT=no

alias vi=nvim

type anyenv > /dev/null 2>&1 && eval "$(anyenv init -)"

type kubectl > /dev/null 2>&1 && source <(kubectl completion bash)

type direnv > /dev/null 2>&1 && eval "$(direnv hook bash)"

# type pipenv > /dev/null 2>&1 && eval "$(pipenv --completion)"
