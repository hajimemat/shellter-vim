scriptencoding utf-8 " 設定ファイルの文字コードを宣言

" Noraフレーバーを継承する
call LoadSource('flavor/nora.vim')
call LoadToml('flavor/hajimemat')


" メモ置場
let g:memolist_path = '~/.vim/mount/memo'
"
au NoraAutoCmd VimEnter * nested colorscheme jellybeans
let g:airline#extensions#tabline#enabled = 1
let g:airline_solarized_bg='dark'
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts=1
