if [ -e /etc/bashrc ]; then
  . /etc/bashrc
fi

source ~/.git-completion.bash
alias vi=vim
alias sudo='sudo -E'
alias docker-start='docker-machine start default'
alias docker-env='eval "$(docker-machine env default)"'
alias docker-stop='docker-machine stop default'

export TERM=xterm-256color
export PATH=$HOME/bin:$PATH
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH=/usr/local/bin:$PATH

PS1='[\u@\h \W]\$ '

