#!/bin/bash

DOT_FILES=(.vimrc .tmux.conf .tmux.conf.linux .tmux.conf.osx)

for file in ${DOT_FILES[@]}
do
  ln -fs $HOME/dotfiles/$file $HOME/$file
done
