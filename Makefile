# ~/.dotfiles/Makefile

link-bash:
	rm ~/.bashrc -y
	ln -sf ~/.dotfiles/shell/bashrc ~/.bashrc

link-config:
	rm -r ~/.config/
	ln -sf ~/.dotfiles/config/ ~/.config
	git switch branch $BRANCH

lb:link-bash
lc:link-config
