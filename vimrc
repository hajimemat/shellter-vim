scriptencoding utf-8

" pyenvを利用
let g:python_host_prog = expand('~/.pyenv/versions/2.7.14/bin/python')
let g:python3_host_prog = expand('~/.pyenv/versions/3.6.7/bin/python')

if filereadable(expand('~/.vimrc.local'))
	source ~/.vimrc.local
endif

" Bootstrap
execute 'source '.get(g:, 'shellter_vim_rc_path', '~/.vim/rc/kernel/bootstrap.vim')
