#!/bin/sh

# conf
ln -fs ~/dotfiles/.vimrc ~/.vimrc
ln -fs ~/dotfiles/.gemrc ~/.gemrc

# color
mkdir -p ~/.vim/colors
ln -fs ~/dotfiles/colors/molokai.vim ~/.vim/colors/molokai.vim

