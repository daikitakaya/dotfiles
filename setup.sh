#!/bin/bash

  DOT_FILES=(.zsh .zshrc .vimrc .zinit .p10k.zsh)

 for file in ${DOT_FILES[@]}
 do
     ln -s $HOME/dotfiles/$file $HOME/$file
 done
