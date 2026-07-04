if status is-interactive
    # Commands to run in interactive sessions can go here
end

## System

function ali
	echo "alias $argv[1]=\"$argv[2]\"" >> ~/.config/fish/config.fish
	source ~/.config/fish/config.fish
end

# alias sup="sudo apt update && sudo apt upgrade -y; brew update && brew upgrade"

## Testing

# alias francinette="$HOME"/francinette/tester.sh
# alias paco="$HOME"/francinette/tester.sh
# alias mstest="/home/fllam3/42_minishell_tester/tester.sh"

# export EDITOR=/usr/bin/nvim

# export PATH="/home/fllam3/Documents/repos/42/core/tools/host:$PATH"
# set -gx PATH /home/fllam3/.local/funcheck/host $PATH

alias q="exit"
alias v="vim ."
alias nv="nvim ."
alias proc="protonvpn connect"
alias prod="protonvpn disconnect"

## Compiler

alias c="cc -g -Wall -Wextra -Werror"
alias a="./a.out"
alias n="norminette ."
alias mk="make"
alias mkr="make re"
alias mkc="make clean"
alias mkf="make fclean"

## Debugging 

alias val="valgrind -s --leak-check=full --show-leak-kinds=all --track-origins=yes --track-fds=yes --trace-children=yes"
alias valp="valgrind -s --tool=drd --tool=helgrind"

alias ms="./minishell"
alias msv="valgrind  -s --leak-check=full --show-leak-kinds=all --track-origins=yes --track-fds=yes --trace-children=yes --suppressions=ms_testing/ms.supp ./minishell"

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

# Paths

function go
   set base ""
   switch $argv[1]
       case rep
           set base ~/Documents/code/repos/
       case ft
           set base ~/Documents/code/42/
       case co
           set base ~/Documents/code/repos/core/
       case dot
           set base ~/Documents/code/repos/dotfiles/
	   case fi
           set base ~/.config/fish/
	   case ex
		   set base ~/Documents/code/42/tools/practice/examshell
	   case '*'
		   echo "Unknown alias: $argv[1]"
           return
   end

   if test -n "$argv[2]"
       builtin cd $base/$argv[2]
   else
       builtin cd $base
   end
end


# alias fi="cd /home/fllam3/.config/fish"
# alias ft="cd /home/fllam3/Documents/repos/42/core0"
alias obs="cd /home/fllam3/Documents/repos/obsidian && ls"


# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"
alias p="./philo"
alias ssd='cd /var/run/media/fllam3/Intenso'
alias rep="cd ~/Documents/repos/ && cd $argv"
alias exam="cd ~/Documents/code/42/tools/practice/examshell"
