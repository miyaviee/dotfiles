if [ -e /etc/bashrc ]; then
  . /etc/bashrc
fi

source ~/.git-completion.bash
alias vi=vim

export TERM=xterm-256color
export PATH=$HOME/bin:$PATH
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

PS1='[\u@\h \W]\$ '

