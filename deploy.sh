#!/bin/sh

DEIN_DIR=$HOME/.vim/bundle/dein

if ! [ -e "$DEIN_DIR" ]; then
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
  sh ./installer.sh "$DEIN_DIR"
fi

for dotfile in .?*; do
  case $dotfile in
    ..)
      continue;;
    .git)
      continue;;
    *)
      if [ -L ~/$dotfile ]; then
        echo ~/$dotfile is symbolic link.
      else
        if [ -f ~/$dotfile ]; then
          echo ~/$dotfile  is found, create backup.
          mv ~/$dotfileg ~/dotfile + '_'
        fi
        ln -Fis "$PWD/$dotfile" ~
     fi
  esac
done
