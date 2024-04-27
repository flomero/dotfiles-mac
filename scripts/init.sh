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

# valgrind Docker setup
# Check if the valgrind folder already exists
if [ -d "$HOME/.docker_valgrind_setup" ]; then
    echo "Valgrind Docker setup already exists."
else
    git clone https://github.com/Alphacharge/setup_docker_environment.git $HOME/setup_docker_environment
    echo "Installed valgrind Docker setup."
    echo "Run the following commands to set up the valgrind Docker environment:"
    echo "cd $HOME/setup_docker_environment"
    echo "chmod +x setup.sh"
    echo "./setup.sh"
fi

# source the .bashrc file
source $HOME/.bashrc

# source the .zshrc file
source $HOME/.zshrc
