# Note
Currently not set by stow, only manually.

Command to generate new extension List:
```bash
code --list-extensions | xargs -L 1 echo code --install-extension
```