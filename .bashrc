if [ -e /etc/bashrc ]; then
  . /etc/bashrc
fi

source ~/dotfiles/completion/git-completion.bash
type kubectl > /dev/null 2>&1 && source <(kubectl completion bash)

alias vi=nvim

export TERM=xterm-256color
export PATH=$HOME/bin:$HOME/.local/bin:$PATH
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

PS1='[\u@\h \W]\$ '

export EDITOR=nvim
type direnv > /dev/null 2>&1 && eval "$(direnv hook bash)"
type pipenv > /dev/null 2>&1 && eval "$(pipenv --completion)"

export PATH=/usr/local/bin:$PATH

export GOPATH=~/go
export PATH=$GOPATH/bin:$PATH

export GEM_HOME=~/.gem
export PATH=~/.gem/bin:$PATH

export DIRENV_WARN_TIMEOUT=100s
export PIPENV_VENV_IN_PROJECT=1

test -z $VIRTUAL_ENV || export PATH=$VIRTUAL_ENV/bin:$PATH
