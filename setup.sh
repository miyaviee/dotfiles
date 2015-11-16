#!/bin/sh

# neobundle
if [ ! -e ~/.vim/bundle/neobundle.vim ]; then
  mkdir -p ~/.vim/bundle
  git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim
fi

# conf
for dotfile in .??*
do
  if [ -d $dotfile ]; then
    continue;
  fi
  ln -fs `pwd`/$dotfile ~/$dotfile
done

# color
if [ ! -e ~/.vim/colors ]; then
  mkdir -p ~/.vim/colors
fi

# filetype conf
for name in *
do
  if [ -d $name ]; then
    mkdir -p ~/.vim/$name
    for file in $name/*
    do
      ln -fs `pwd`/$file ~/.vim/$file
    done
  fi
done

vim +:NeoBundleInstall +:q
