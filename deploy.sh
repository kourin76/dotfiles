#!/bin/sh

DEIN_DIR=$HOME/.vim/bundle/dein

if ! [ -e "$DEIN_DIR" ]; then
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
  sh ./installer.sh "$DEIN_DIR"
fi

for dotfile in .?*
do
  if [ $dotfile = '..' ] || [ $dotfile = '.git' ]; then
    continue
  fi
  #echo $dotfile
  if [ -L ~/$dotfile ]; then
    echo Symbolic link ~/$dotfile is already created
  elif [ -f ~/${dotfile}_ ]; then
    echo Backup for ~/${dotfile}_ is already created
  else
    echo Create backup and symbolic link for ~/${dotfile}
    mv ~/$dotfile ~/${dotfile}_
    ln -Fis ${PWD}/$dotfile ~
  fi
done
