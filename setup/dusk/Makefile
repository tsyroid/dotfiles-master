# ~/.dotfiles/setup/dusk/Makefile
# link/unlink required directories into ~

link:
	ln -nfs ~/.dotfiles/setup/dusk/Xauthority ~/.Xauthority
	ln -nfs ~/.dotfiles/setup/dusk/xinitrc ~/.xinitrc
	ln -nfs ~/.dotfiles/setup/dusk/Xresources ~/.Xresources

unlink:
	unlink ~/.Xauthority
	unlink ~/.xinitrc
	unlink ~/.Xresources

l:link
u:unlink
clean:unlink
