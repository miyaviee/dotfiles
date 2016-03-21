#!/bin/sh

# neobundle
if [ ! -e ~/.vim/autoload/plug.vim ]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
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

vim +:PlugInstall +:q +:q
vim +:PlugClean +:q +:q

# del dead link
for link in ~/.vimrc*
do
  if [ -e "`readlink $link`" ]; then
    continue;
  fi

  unlink $link
done
