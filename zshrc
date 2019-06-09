autoload -U compinit
compinit
setopt correct_all

for DOTFILE in $(find $HOME/.dotfiles -maxdepth 1 -type f -name ".*")
do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done

# ondir
source $HOME/ondir.zsh
trap 'ondir $PWD /' EXIT
# end ondir
