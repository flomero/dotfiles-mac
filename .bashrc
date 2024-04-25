# Docker Valgrind setup
alias di="bash /Users/flfische/.docker_valgrind_setup/init_docker.sh"
alias db="docker build -t valgrind - < /Users/flfische/.docker_valgrind_setup/valgrind"
alias dv='docker run -ti -v $PWD:/code -v "/Users/flfische/.docker_valgrind_setup/root":/root valgrind bash'
