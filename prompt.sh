#!/bin/env zsh

export CLICOLOR=1

for DOTFILE in $(find $(dirname ${(%):-%N})/prompt -maxdepth 1 -perm +111 -type f -or -type l)
do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done
