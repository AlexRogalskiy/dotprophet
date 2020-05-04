for DOTFILE in $(find $(dirname ${(%):-%N})/envvars -maxdepth 1 -perm +111 -type f -or -type l)
do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done
