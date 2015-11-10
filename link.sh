#!/bin/sh

# neobundle
mkdir ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim

# conf
ln -fs ~/dotfiles/.vimrc ~/.vimrc
ln -fs ~/dotfiles/.gemrc ~/.gemrc

# color
mkdir -p ~/.vim/colors
ln -fs ~/dotfiles/colors/molokai.vim ~/.vim/colors/molokai.vim

# alias
echo "alias vi=vim" >> ~/.bash_profile
