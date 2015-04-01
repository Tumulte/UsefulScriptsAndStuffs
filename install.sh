#!/bin/sh
SCRIPT=`realpath $0`
DIR=`dirname $SCRIPT`
cp "${DIR}/.fonts/*" ~/.fonts
if [  -f ~/.vimrc.before ]; then
  mv ~/.vimrc.before ~/.vimrc.before.bak
fi
if [  -f ~/.vimrc.after ]; then
  mv ~/.vimrc.after ~/.vimrc.after.bak
fi
if [  -f ~/.zshrc ]; then
  mv ~/.zshrc ~/.zshrc.bak
fi
if [  -f ~/powerline-shell.py ]; then
  rm ~/powerline-shell.py
fi
ln -s "${DIR}/powerline-shell.py" ~/powerline-shell.py
ln -s "${DIR}/.vimrc.before" ~/.vimrc.before
ln -s "${DIR}/.vimrc.after" ~/.vimrc.after
ln -s "${DIR}/.zshrc" ~/.zshrc

