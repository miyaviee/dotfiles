if [ -e /etc/bashrc ]; then
  . /etc/bashrc
fi

source ~/dotfiles/completion/git-completion.bash
alias vi=vim

export TERM=xterm-256color
export PATH=$HOME/bin:$HOME/.local/bin:$PATH
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

PS1='[\u@\h \W]\$ '

export EDITOR=vim
eval "$(direnv hook bash)"

export PATH=/usr/local/bin:$PATH

export GOPATH=~/.go
export PATH=$GOPATH/bin:$PATH

export PATH=~/.composer/vendor/bin:$PATH
export PATH=/usr/local/opt/python/libexec/bin:$PATH
