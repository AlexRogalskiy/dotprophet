# @sumanthratna's dotfiles

## Useful Aliases

-   [`quit`](./aliases/quit): quits Terminal.app in macOS (taken from <https://stackoverflow.com/a/22447960/7127932>)
-   [`show`](./aliases/show): lists all the files in a pretty way, using [`exa`](https://the.exa.website/)
-   [`poetry`](./aliases/poetry): so that [Poetry](https://python-poetry.org/) uses Python 3, not Python 2 (taken from <https://github.com/python-poetry/poetry/issues/536#issuecomment-498308796>)

## Setup

```zsh
cd /tmp
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

cd ~
git clone git@github.com:sumanthratna/dotprophet.git

cd dotprophet
brew bundle

ln -s ./dotprophet/rcfiles/zshrc ./.zshrc
ln -s ./dotprophet/gitconfig ./.gitconfig
ln -s ./dotprophet/rcfiles/nanorc ./.nanorc
```
