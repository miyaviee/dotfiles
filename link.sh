#!/bin/sh

# neobundle
if [ ! -e ~/.vim/bundle/neobundle.vim ]; then
  mkdir -p ~/.vim/bundle
  git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim
fi

# conf
ln -fs `pwd`/.vimrc ~/.vimrc
ln -fs `pwd`/.gemrc ~/.gemrc
ln -fs `pwd`/.bash_profile ~/.bash_profile
ln -fs `pwd`/.git-prompt.sh ~/.git-prompt.sh

# color
if [ ! -e ~/.vim/colors ]; then
  mkdir -p ~/.vim/colors
fi
ln -fs `pwd`/colors/molokai.vim ~/.vim/colors/molokai.vim

vim +:NeoBundleInstall +:q

# snippets
if [ ! -e ~/.vim/bundle/neosnippet-snippets/snippets ]; then
  mkdir -p ~/.vim/bundle/neosnippet-snippets/snippets
fi
cp `pwd`/snippets/* ~/.vim/bundle/neosnippet-snippets/snippets

