#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# alias l='ls -al'
# assuming eza installed
alias l='eza -al --group-directories-first'
alias c='clear'

alias up='sudo pacman -Syu'
alias in='sudo pacman -S --needed '
alias search='pacman -Ss '

alias y='yazi'

# alias lg='lazygit'
alias ga='git add '
alias gb='git branch'
alias gf='git fetch'
alias gl='git log --graph --oneline'
alias go='git checkout '
alias gp='git pull'
alias gs='git status '
alias gba='git branch -a '

# mkdir and cd to it
mcd() {
	if [ $# -eq 0 ]; then
		echo "Usage: mcd <directory_path>"
		return 1
	fi

	mkdir -p "$1" && cd "$1"
}

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

# enable after install
# eval "$(fzf --bash)"
# eval "$(zoxide init bash)"