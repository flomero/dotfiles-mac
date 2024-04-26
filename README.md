# My Dotfiles for MacOS
This allows easy setup of my MacOS environment.
Exspecially useful for setting up a 42 workspace.

## Installation
```bash
git clone [repo] ~/.dotfiles
cd ~/.dotfiles
bash ./install.sh
stow .

# to set Mac Settings
source .macos
```

## Included
- Homebrew
- Zsh Configuration
- Bash Configuration
- Git Configuration
- MacOS Settings

## To Do
- [ ] Add VSCode settings
- [ ] Add VSCode extensions
- [ ] Add Vim settings
- [ ] Add Vim plugins

## Development
- ignore files by adding them to `.stow-local-ignore`
- folder structure has to replicate the desired destination starting from the root of the home directory
- run `stow .` to symlink the files