#!/bin/sh

# neobundle
if [ ! -e ~/.vim/bundle/neobundle.vim ]; then
  mkdir ~/.vim/bundle
  git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim
fi

# conf
ln -fs ~/dotfiles/.vimrc ~/.vimrc
ln -fs ~/dotfiles/.gemrc ~/.gemrc

# git
ln -fs ~/dotfiles/.git-completion.bash ~/.git-completion.bash
if [ -z "$(grep 'git-completion' ~/.bashrc)" ]; then
  echo "source ~/.git-completion.bash" >> ~/.bashrc
fi

# color
if [ -e ~/.vim/colors ]; then
  mkdir -p ~/.vim/colors
fi
ln -fs ~/dotfiles/colors/molokai.vim ~/.vim/colors/molokai.vim

vim +:NeoBundleInstall +:q

# snippets
if [ ! -e ~/dotfiles/snippets ]; then
  mkdir -p ~/.vim/bundle/neosnippet-snippets/snippets
fi
cp ~/dotfiles/snippets/* ~/.vim/bundle/neosnippet-snippets/snippets

# alias
if [ -z "$(grep 'alias vi=vim' ~/.bashrc)" ]; then
  echo "alias vi=vim" >> ~/.bashrc
fi

