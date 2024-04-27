
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