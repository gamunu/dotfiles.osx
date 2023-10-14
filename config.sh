#!/bin/zsh

# install homebrew packages
install_brew_packages()
{
	brew install zsh-completions zsh-syntax-highlighting zsh-autosuggestions

	brew install git nvim

	brew install starship fzf ripgrep exa
        
	brew install nodenv pyenv

	brew install kubectx kubectl helm k9s
}

# copy home configuration files
copy_home_files()
{
	cp zshrc ~/.zshrc
}

install_brew_packages
copy_home_files
