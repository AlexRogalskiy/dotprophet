# @sumanthratna's dotfiles

## Useful [Aliases](./aliases)

### [`up`](./aliases/up)

-   jumps to the previous mark in Terminal.app (prompt lines are automatically marked)
-   useful for when you want to go to the beginning of a long block of output
-   usage: `up` (which is the same as `up 1`) or `up n`, where an `n` is a positive integer
-   I wrote this one myself

### [`quit`](./aliases/quit)

-   quits Terminal.app in macOS
-   usage: `quit`
-   taken from <https://stackoverflow.com/a/22447960/7127932>

### [`rmr`](./aliases/rmr)

-   recursively removes a file
-   usage: `rmr .DS_Store`
-   adapted from <https://stackoverflow.com/a/45647470/7127932>

### [`git fork`](./aliases/git)

-   forks a GitHub repository, clones it, adds the origin and upstream remotes, and `cd`s into it
-   usage: `git fork nirum/tableprint`
-   I wrote this one myself

### [`show`](./aliases/show)

-   lists all the files in a pretty way, using [`exa`](https://the.exa.website/)
-   usage: `show` or `show dir/` or `show file`
-   I wrote this one myself (this wasn't hard to write)

### [`globalprotect`](./aliases/globalprotect)

-   quits the GlobalProtect VPN app
-   usage: `globalprotect start` or `globalprotect stop`
-   adapted from <https://gist.github.com/kaleksandrov/3cfee92845a403da995e7e44ba771183>

### [`poetry`](./aliases/poetry)

-   forces [Poetry](https://python-poetry.org/) to use Python 3 instead of Python 2
-   usage: the same as `command poetry`
-   taken from <https://github.com/python-poetry/poetry/issues/536#issuecomment-498308796>

## Setup

Set up `neomutt` by following [this](https://unix.stackexchange.com/a/223088).

```zsh
cd ~
git clone git@github.com:sumanthratna/dotprophet.git

cd /tmp
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
cd ~/dotprophet
ln -s ~/dotprophet/Brewfile ~/.Brewfile
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

ln -s ~/dotprophet/ssh_config ~/.ssh/config
```

## Terminal Workflow

Useful tips from [Macworld](http://hints.macworld.com/article.php?story=20140114080042155#comments) ([outdated permalink](http://hints.macworld.com/comment.php?mode=view&cid=132941)):

-   ⌃ is control
-   ⎋ is escape
-   ⌥ is option/alt

> -   **⌃ + A** Go to the beginning of the line you are currently typing on
> -   **⌃ + E** Go to the end of the line you are currently typing on
> -   **⌃ + L** Clears the Screen, similar to the clear command
> -   **⌃ + U** Clears the line before the cursor position. If you are at the end of the line, clears the entire line.
> -   **⌃ + H** Same as backspace
> -   **⌃ + R** Let’s you search through previously used commands
> -   **⌃ + C** Kill whatever you are running
> -   **⌃ + D** Exit the current shell
> -   **⌃ + Z** Puts whatever you are running into a suspended background process. `fg` restores it.
> -   **⌃ + W** Delete the word before the cursor
> -   **⌃ + K** Clear the line after the cursor
> -   **⌃ + T** Swap the last two characters before the cursor
> -   **⎋ + T** Swap the last two words before the cursor
> -   **⌥ + F** Move cursor forward one word on the current line
> -   **⌥ + B** Move cursor backward one word on the current line
