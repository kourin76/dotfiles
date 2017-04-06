#!/bin/sh

DEIN_DIR=$HOME/.vim/bundle/dein

if ! [ -e "$DEIN_DIR" ]; then
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
  sh ./installer.sh "$DEIN_DIR"
fi

