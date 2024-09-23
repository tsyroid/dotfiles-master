# ~/.dotfiles/ Makefile
# link/unlink required directories into ~

link:
	ln -nfs ~/.dotfiles/config ~/.config
	ln -nfs ~/.dotfiles/python/ipython ~/.ipython
	ln -nfs ~/.dotfiles/config/psqlrc ~/.psqlrc
	ln -nfs ~/.dotfiles/ssh ~/.ssh
	ln -nfs ~/.dotfiles/tool-versions ~/.tool-versions
	# ln -nfs ~/.dotfiles/shell/bashrc ~/.bashrc

unlink:
	unlink ~/.config
	unlink ~/.ipython
	unlink ~/.psqlrc
	unlink ~/.ssh
	unlink ~/.tool-versions
	# unlink ~/.bashrc

transl:
	ln -nfs ~/Volumes/Transcend/KB ~/KB
	ln -nfs ~/Volumes/Transcend/Admin ~/Admin
	ln -nfs ~/Volumns/Transcend/Code ~/Code

transu:
	unlink ~/KB
	unlink ~/Admin
	unlink ~/Code

l:link
u:unlink
tl:link
tu:unlink
