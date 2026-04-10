if status is-interactive
    # Commands to run in interactive sessions can go here

## System

alias sup="sudo apt update && sudo apt upgrade -y"
alias set_perf='echo performance | sudo tee /sys/devices/system/cpu/cpufreq/policy*/scaling_governor'
alias set_save='echo powersave | sudo tee /sys/devices/system/cpu/cpufreq/policy*/scaling_governor'

## Testing

alias francinette="$HOME"/francinette/tester.sh
alias paco="$HOME"/francinette/tester.sh
alias mstest="/home/fllam3/42_minishell_tester/tester.sh"

eval "$(pay-respects fish --alias fuck)"
export EDITOR=/usr/bin/vim

export PATH="/home/fllam3/Documents/repos/42/core/tools/host:$PATH"
set -gx PATH /home/fllam3/.local/funcheck/host $PATH

alias q="exit"
alias v="vim ."
alias nv="nvim ."
alias proc="protonvpn connect"
alias prod="protonvpn disconnect"

## Compiler

alias c="cc -g -Wall -Wextra -Werror"
alias a="./a.out"
alias ms="./minishell"
alias n="norminette ."
alias mk="make"
alias mkr="make re"
alias mkc="make clean"
alias mkf="make fclean"

## Debugging 

alias val="valgrind -s --leak-check=full --show-leak-kinds=all --track-origins=yes --track-fds=yes --trace-children=yes"

## Git

function gitp
	git add .
	git commit -m "$argv"
	git push
end

alias gs='git submodule'
alias gsup="git submodule init && git submodule update"

alias gm="git merge"
alias gl='git log'
alias gp='git pull'
alias gc="git checkout"

alias lg="lazygit"

## Paths

alias fi="cd /home/fllam3/.config/fish && vim config.fish"
alias ft="cd /home/fllam3/Documents/repos/42/core && cd $argv"
alias exam="cd /home/fllam3/Documents/repos/42/tools/practice/examshell"
alias obs="cd /home/fllam3/Documents/repos/obsidian && ls"

end

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"
