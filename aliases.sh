for DOTFILE in $(find $(dirname ${(%):-%N})/aliases -maxdepth 1 -perm +111 -type f -or -type l)
do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done
