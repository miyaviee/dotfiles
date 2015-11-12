if [ -e /etc/bashrc ]; then
  . /etc/bashrc
fi

source ~/.git-completion.bash
source ~/.git-prompt.sh
alias vi=vim

export TERM=xterm-256color
export PS1="\u@\h \w\[\e[36m\]\$(__git_ps1)\n\[\e[37m\]# "

LC_ALL=ja_JP.UTF-8

