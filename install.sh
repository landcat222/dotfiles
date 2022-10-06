#!/bin/bash
git clone https://github.com/landcat222/dotfiles.git ~/.dotfiles
mkdir ~/.backup

# zsh files backup
if [ -e ~/.zshenv ];then
  mv -b ~/.zshenv ~/.backup/zshenv
fi

if [ -e ~/.zshrc ];then
  mv -b ~/.zshrc ~/.backup/zshrc
fi

if [ -e ~/.zprofile ];then
  mv -b ~/.zprofile ~/.backup/zprofile
fi

if [ -e ~/.zlogin ];then
  mv -b ~/.zlogin ~/.backup/zlogin
fi

if [ -e ~/.zlogout ];then
  mv -b ~/.zlogout ~/.backup/zlogout
fi

if [ -e ~/.zsh ];then
  mv -b ~/.zsh ~/.backup/zsh
fi

# vim files backup
if [ -e ~/.vimrc ];then
  mv -b ~/.vimrc ~/.backup/vimrc
fi

if [ -e ~/.vim ];then
  mv -b ~/.vim ~/.backup/vim
fi
