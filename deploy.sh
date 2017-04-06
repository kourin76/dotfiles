#!/bin/sh

DEIN_DIR=$HOME/.vim/bundle/dein

if ! [ -e "$DEIN_DIR" ]; then
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
  sh ./installer.sh "$DEIN_DIR"
fi

# create symbolic link only when dot file is not linked.
#if [ -L ~/.vimrc ]; then
#  echo ~/.vimrc is symbolic link.
#else
#  if [ -f ~/.vimrc ]; then
#    echo '~/.vimrc is found. Rename it to .vimrc_ for backup'
#    mv ~/.vimrc ~/.vimrc_
#    ln -Fis "$PWD/.vimrc" ~
#  fi
#fi

#if [ -L ~/.gitconfig ]; then
#  echo ~/.gitconfig is symbolic link.
#else
#  if [ -f ~/.gitconfig ]; then
#    echo '~/.gitconfig is found. Rename it to .gitconfig_ for backup'
#    mv ~/.gitconfig ~/.gitconfig_
#    ln -Fis "$PWD/.gitconfig" ~
#  fi
#fi

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
