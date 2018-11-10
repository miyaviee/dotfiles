if [ -e /etc/bashrc ]; then
  . /etc/bashrc
fi

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

export DIRENV_WARN_TIMEOUT=100s
export PIPENV_VENV_IN_PROJECT=1

export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH

test -z $VIRTUAL_ENV || export PATH=$VIRTUAL_ENV/bin:$PATH

alias vi=nvim

type kubectl > /dev/null 2>&1 && source <(kubectl completion bash)

type direnv > /dev/null 2>&1 && eval "$(direnv hook bash)"

# type pipenv > /dev/null 2>&1 && eval "$(pipenv --completion)"

test -z $VIRTUAL_ENV && type pyenv > /dev/null 2>&1 && eval "$(pyenv init -)"
