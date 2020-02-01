install:
	make ~/.config/nvim/init.vim
	make ~/.vimrc
	make ~/.vim/rc
	echo not implemented yet

~/.config/nvim:
	mkdir $@
~/.config/nvim/init.vim: ~/.config/nvim
	ln -s $(realpath init.vim) $@
~/.vimrc:
	ln -s $(realpath vimrc) $@
~/.vim/rc: ~/.vim
	ln -s $(realpath rc) $@
~/.vim:
	mkdir $@
