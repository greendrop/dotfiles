#!/bin/bash

DOT_FILES=(.vimrc .tmux.conf .tmux-linux.conf .tmux-osx.conf)

for file in ${DOT_FILES[@]}
do
  ln -fs $HOME/dotfiles/$file $HOME/$file
done
