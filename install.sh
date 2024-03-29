#!/bin/bash
git clone https://github.com/landcat222/dotfiles.git ~/.dotfiles
mkdir ~/.backup

# zsh files backup
if [ -e ~/.zshenv -a ! -L ~/.zshenv ];then
  mv -b ~/.zshenv ~/.backup/zshenv
fi

if [ -e ~/.zshrc -a ! -L ~/.zshrc ];then
  mv -b ~/.zshrc ~/.backup/zshrc
fi

if [ -e ~/.zprofile -a ! -L ~/.zprofile ];then
  mv -b ~/.zprofile ~/.backup/zprofile
fi

if [ -e ~/.zlogin -a ! -L ~/.zlogin ];then
  mv -b ~/.zlogin ~/.backup/zlogin
fi

if [ -e ~/.zlogout -a ! -L ~/.zlogout ];then
  mv -b ~/.zlogout ~/.backup/zlogout
fi

if [ -e ~/.zsh -a ! -L ~/.zsh ];then
  mv -b ~/.zsh ~/.backup/zsh
fi

# vim files backup
if [ -e ~/.vimrc -a ! -L ~/.vimrc ];then
  mv -b ~/.vimrc ~/.backup/vimrc
fi

if [ -e ~/.vim -a ! -L ~/.vim ];then
  mv -b ~/.vim ~/.backup/vim
fi

# xprofile backup
if [ -e ~/.xprofile -a ! -L ~/.xprofile ];then
  mv -b ~/.xprofile ~/.backup/xprofile
fi

# zsh files install
ln -s ~/.dotfiles/zshenv ~/.zshenv
ln -s ~/.dotfiles/zsh ~/.zsh

# Vim files install
ln -s ~/.dotfiles/vim ~/.vim

# xprofile install
ln -s ~/.dotfiles/xprofile ~/.xprofile
