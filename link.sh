#!/bin/sh

# conf
ln -fs ~/dotfiles/.vimrc ~/.vimrc
ln -fs ~/dotfiles/.bash_profile ~/.bash_profile
ln -fs ~/dotfiles/.gemrc ~/.gemrc

# color
mkdir ~/.vim/colors
ln -fs ~/dotfiles/colors/molokai.vim ~/.vim/colors/molokai.vim

