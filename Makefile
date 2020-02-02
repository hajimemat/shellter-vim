install:
	make ~/.config/nvim/init.vim
	make ~/.vimrc
	make ~/.vim/rc

~/.config/nvim:
	mkdir $@
~/.config/nvim/init.vim: ~/.config/nvim
	ln -sfv $(realpath init.vim) $@
~/.vimrc:
	ln -sfv $(realpath vimrc) $@
~/.vim/rc: ~/.vim
	ln -sfv $(realpath rc) $@
~/.vim:
	mkdir $@
