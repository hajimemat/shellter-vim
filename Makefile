.PHONY: ~/.config/nvim/init.vim ~/.vimrc ~/.vim/rc
install:
	make ~/.config/nvim/init.vim
	make ~/.vimrc
	make ~/.vim/rc
initialize:
	nvim +UpdateRemotePlugins +quit

~/.config:
	mkdir $@
~/.config/nvim: ~/.config
	mkdir $@
~/.config/nvim/init.vim: ~/.config/nvim
	ln -sfv $(realpath init.vim) $@
~/.vimrc:
	ln -sfv $(realpath vimrc) $@
~/.vim/rc: ~/.vim
	ln -sfv $(realpath rc) $@
~/.vim:
	mkdir $@
