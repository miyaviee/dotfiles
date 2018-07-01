export TERM=xterm-256color
export PATH=$HOME/bin:$HOME/.local/bin:$PATH
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR=nvim

export PATH=/usr/local/bin:$PATH

export GOPATH=~/go
export PATH=$GOPATH/bin:$PATH

export GEM_HOME=~/.gem
export PATH=~/.gem/bin:$PATH

export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000

export DIRENV_WARN_TIMEOUT=100s
export PIPENV_VENV_IN_PROJECT=1

export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH

test -z $VIRTUAL_ENV || export PATH=$VIRTUAL_ENV/bin:$PATH
