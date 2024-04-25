#!/bin/bash

# Brew installation script
# Check if the .brew folder already exists
if [ -d "$HOME/.brew" ]; then
    echo "Brew already exists. Updating it."
else
    git clone --depth=1 https://github.com/Homebrew/brew $HOME/.brew
fi

# Update brew
brew update

# Check if brew installation was successful
if [ $? -eq 0 ]; then
    echo "Brew updated or installed successfully."
else
    echo "Brew update or installation failed."
    exit 1
fi

# Install brew packages
brew install stow

# Francinette installation script
# Check if the francinette folder already exists
if [ -d "$HOME/francinette" ]; then
	echo "Francinette already exists."
else
	git clone git@github.com:xicodomingues/francinette.git $HOME/francinette
fi

# source the .bashrc file
source $HOME/.bashrc

# source the .zshrc file
source $HOME/.zshrc
