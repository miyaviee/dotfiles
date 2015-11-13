#!/bin/sh

# neobundle
if [ ! -e ~/.vim/bundle/neobundle.vim ]; then
  mkdir -p ~/.vim/bundle
  git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim
fi

# conf
for dotfile in .??*
do
  ln -fs `pwd`/$dotfile ~/$dotfile
done

# color
if [ ! -e ~/.vim/colors ]; then
  mkdir -p ~/.vim/colors
fi
ln -fs `pwd`/colors/molokai.vim ~/.vim/colors/molokai.vim

vim +:NeoBundleInstall +:q

# snippets
if [ ! -e ~/.vim/snippets ]; then
  mkdir -p ~/.vim/snippets
fi
cp `pwd`/snippets/* ~/.vim/snippets

