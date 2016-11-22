#!/bin/sh

git fetch -p
git merge origin/master

# neobundle
if [ ! -e ~/.vim/autoload/plug.vim ]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# filetype conf
for name in `ls -a`
do
  if [[ "$name" =~ ^(.|..|.git*)$ ]]; then
    continue;
  fi
  if [ -d $name ]; then
    mkdir -p ~/.vim/$name
    for file in $name/*
    do
      ln -fs `pwd`/$file ~/.vim/$file
    done
    continue;
  fi
  if [[ "$name" =~ ^\..*$ ]]; then
    ln -fs `pwd`/$name ~/$name
  fi
done

vim +:PlugInstall +:q vim +:PlugClean +:q +:q
vim install.go +:GoInstallBinaries +:q

# del dead link
for link in ~/.*
do
  if [ ! -L $link ]; then
    continue;
  fi
  if [ -e "`readlink $link`" ]; then
    continue;
  fi

  unlink $link
done
