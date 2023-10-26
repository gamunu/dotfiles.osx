# Dotfiles for macOS

This repository lists all the dotfiles I use on my macOS machine. The repository is structured in a way that allows easily install the dotfiles on a new machine. The dotfiles are managed using [GNU Stow](https://www.gnu.org/software/stow/), which is a free, portable, lightweight symlink farm manager.

## Install homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Clone repository
```bash
git clone https://github.com/gamunu/dotfiles.osx.git ~/.dotfiles
```

## Install brew packages

```bash
brew bundle --file=Brewfile
```

## Install configuration files

### test with dry-run
```bash
stow -n -t ~ zsh wezterm
```

### configure dotfiles
```bash
stow -t ~ zsh wezterm
```
