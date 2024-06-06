# Define colors
TC_GREEN=$'\e[0;32m'
TC_RED=$'\e[0;31m'
TC_NC=$'\e[0m'

# MACOS
alias pref="source ~/.macos"

# VS CODE
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

# DOCKER VALGRIND
alias di="bash /Users/flfische/.docker_valgrind_setup/init_docker.sh"
alias db="docker build -t valgrind - < /Users/flfische/.docker_valgrind_setup/valgrind"
alias dv='docker run -ti -v $PWD:/code -v "/Users/flfische/.docker_valgrind_setup/root":/root valgrind bash'

# PACO
alias francinette=/Users/flfische/francinette/tester.sh
alias paco=/Users/flfische/francinette/tester.sh

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

zstyle ':completion:*' use-cache true # Cache completion to `${ZDOTDIR}/.zcompcache`.
zstyle ':completion:*' menu 'select' # Make the menu interactive with arrow keys.
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" # Use LS_COLORS for completion colors.
#enable colors for ls, etc.
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# Norminette
alias norm="norminette | grep "Error" || echo '${TC_GREEN}Norm check OK: No error${TC_NC}'"

# GIT
# better git log
alias gl="git log --graph --pretty=format:'%C(auto)%h -%d %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gll="git log --graph --pretty=format:'%C(auto)%h -%d %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
# git status
alias gs="git status"
# remove all local branches that are already merged
alias gprune="git fetch -p && git branch -vv | grep gone | cut -d' ' -f 3 | grep . | xargs git branch -D"

# enable syntax highlighting - has to be at the end of the file
source ~/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
CLICOLOR=1
export CLICOLOR
alias mstest="bash /Users/flfische/42_minishell_tester/tester.sh"

