install:
	make ~/.config/nvim/init.vim
	make ~/.vimrc
	echo not implemented yet

~/.config/nvim:
	mkdir $@
~/.config/nvim/init.vim: ~/.config/nvim
	ln -s $(realpath init.vim) $@
~/.vimrc:
	ln -s $(realpath vimrc) $@
