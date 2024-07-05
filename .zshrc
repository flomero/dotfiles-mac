# Define colors
TC_GREEN=$'\e[0;32m'
TC_RED=$'\e[0;31m'
TC_NC=$'\e[0m'

alias src="source ~/.zshrc"
alias rc="cat ~/.zshrc"
alias crc="code ~/.zshrc"

# ZSH Settings
# Do not write a duplicate event to the history file.
setopt HIST_SAVE_NO_DUPS

# Directory Stack
setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.
alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

# MACOS
alias pref="source ~/.macos"

# GET CURRENT USERNAME
USER_NAME=$(whoami)

# VS CODE
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

# DOCKER VALGRIND
alias di="bash ~/.docker_valgrind_setup/init_docker.sh"
alias db="docker build -t valgrind - < ~/.docker_valgrind_setup/valgrind"
alias dv='docker run -ti -v $PWD:/code -v "/Users/${USER_NAME}/.docker_valgrind_setup/root":/root valgrind bash'

# PACO
alias francinette=~/francinette/tester.sh
alias paco=~/francinette/tester.sh

# BREW
export PATH="$HOME/.brew/bin:$PATH"

# PROMPT
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/\1/p'
}
COLOR_DEF=$'%f'
COLOR_USR=$'%F{243}'
COLOR_DIR=$'%F{45}'
COLOR_GIT=$'%F{36}'
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n ${COLOR_DIR}%~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} > '

# Enable auto-completion
autoload -Uz compinit && compinit
_comp_options+=(globdots) # With hidden files

zstyle ':completion:*' use-cache true # Cache completion to `${ZDOTDIR}/.zcompcache`.
zstyle ':completion:*' menu 'select' # Make the menu interactive with arrow keys.
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" # Use LS_COLORS for completion colors.
#enable colors for ls, etc.
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
alias ls='ls -alh'

# Norminette
alias norm="norminette | grep "Error" || echo '${TC_GREEN}Norm check OK: No error${TC_NC}'"

# GIT
# better git log
alias gl="git log --graph --pretty=format:'%C(auto)%h -%d %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gll="git log --graph --pretty=format:'%C(auto)%h -%d %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
# git status
alias gs="git status -sb"
# remove all local branches that are already merged
alias gprune="git fetch -p && git branch -vv | grep gone | cut -d' ' -f 3 | grep . | xargs git branch -D"

# enable syntax highlighting - has to be at the end of the file
source ~/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
CLICOLOR=1
export CLICOLOR

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
