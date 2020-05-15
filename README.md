# @sumanthratna's dotfiles

## Useful [Aliases](./aliases)

### [`up`](./aliases/up)

-   jumps to the previous mark in Terminal.app (prompt lines are automatically marked)
-   useful for when you want to go to the beginning of a long block of output
-   I wrote this one myself

### [`quit`](./aliases/quit)

-   quits Terminal.app in macOS
-   taken from <https://stackoverflow.com/a/22447960/7127932>

### [`rmr`](./aliases/rmr)

-   recursively removes a file (e.g., `rmr .DS_Store`)
-   adapted from <https://stackoverflow.com/a/45647470/7127932>

### [`show`](./aliases/show)

-   lists all the files in a pretty way, using [`exa`](https://the.exa.website/)
-   I wrote this one myself (this wasn't hard to write)

### [`poetry`](./aliases/poetry)

-   forces [Poetry](https://python-poetry.org/) to use Python 3 instead of Python 2
-   taken from <https://github.com/python-poetry/poetry/issues/536#issuecomment-498308796>

## Setup

Set up `neomutt` by following [this](https://unix.stackexchange.com/a/223088).

```zsh
cd ~
git clone git@github.com:sumanthratna/dotprophet.git

cd /tmp
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
cd ~/dotprophet
brew bundle

cd ~

antibody bundle < ~/dotprophet/plugins.txt > ~/dotprophet/.plugins.sh
chmod +x ~/dotprophet/.plugins.sh

ln -s ~/dotprophet/rcfiles/zshrc ~/.zshrc
ln -s ~/dotprophet/gitconfig ~/.gitconfig
ln -s ~/dotprophet/rcfiles/nanorc ~/.nanorc

trash ~/.atom/config.cson
trash ~/.atom/github.cson
trash ~/.atom/styles.less
ln -s ~/dotprophet/atom/config.cson ~/.atom/config.cson
ln -s ~/dotprophet/atom/github.cson ~/.atom/github.cson
ln -s ~/dotprophet/atom/styles.less ~/.atom/styles.less
apm install --packages-file ~/dotprophet/atom/package-list.txt

ln -s ~/dotprophet/flutter_settings ~/.flutter_settings

ln -s ~/dotprophet/rcfiles/muttrc ~/.muttrc

ln -s ~/dotprophet/rcfiles/ondirrc ~/.ondirrc

ln -s ~/dotprophet/sshconfig ~/.ssh/config
```
