if [ -e /etc/bashrc ]; then
  . /etc/bashrc
fi

source ~/dotfiles/completion/git-completion.bash
type kubectl > /dev/null 2>&1 && source <(kubectl completion bash)

alias vi=nvim
alias rg='rg -i'

export TERM=xterm-256color
export PATH=$HOME/bin:$HOME/.local/bin:$PATH
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

PS1='[\u@\h \W]\$ '

export EDITOR=nvim
eval "$(direnv hook bash)"

export PATH=/usr/local/bin:$PATH

export GOPATH=~/.go
export PATH=$GOPATH/bin:$PATH

export PATH=~/.composer/vendor/bin:$PATH
export PATH=/usr/local/opt/python/libexec/bin:$PATH

export GEM_HOME=~/.gem
export PATH=~/.gem/bin:$PATH

export PATH=~/.gem/ruby/2.4.0/bin:$PATH

export DIRENV_WARN_TIMEOUT=100s

test -z $VIRTUAL_ENV || export PATH=$VIRTUAL_ENV/bin:$PATH
