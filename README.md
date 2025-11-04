# dotfiles

A collection of some configuration files. This is inspired by the blog post [Scripts I wrote that I use all the time](https://evanhahn.com/scripts-i-wrote-that-i-use-all-the-time/).


## Setup

Create a symlink to the files and add it to the `PATH`
```bash
ln -s /path/to/dotfiles/home/bin/bin "$HOME/bin/dotfiles"

# Add "$HOME/bin/dotfiles" to PATH in bashrc
# My dotfiles
if [ -d "$HOME/bin/dotfiles" ]; then
    PATH="$HOME/bin/dotfiles:$PATH"
fi
```
