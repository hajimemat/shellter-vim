scriptencoding utf-8

" pyenvを利用
let g:python_host_prog = expand('$PYENV_ROOT/versions/2.7.14/bin/python')
let g:python3_host_prog = expand('$PYENV_ROOT/versions/3.6.7/bin/python')
" let g:nora_vim_contexts = get(g:,'nora_vim_contexts', ['editor']) " コンテクスト
let g:nora_vim_contexts = get(g:,'nora_vim_contexts', ['ide']) " コンテクスト
let g:nora_vim_flavor = get(g:,'nora_vim_flavor', 'hajimemat') " フレーバー

if filereadable(expand('~/.vimrc.local'))
	source ~/.vimrc.local
endif

" Bootstrap
execute 'source '.get(g:, 'shellter_vim_rc_path', '~/.vim/rc/kernel/bootstrap.vim')
