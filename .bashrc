# Docker Valgrind setup
alias di="bash ~/.docker_valgrind_setup/init_docker.sh"
alias db="docker build -t valgrind - < ~/.docker_valgrind_setup/valgrind"
alias dv='docker run -ti -v $PWD:/code -v "~/.docker_valgrind_setup/root":/root valgrind bash'
