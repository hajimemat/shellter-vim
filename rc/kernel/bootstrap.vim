scriptencoding utf-8 " 設定ファイルの文字コードを宣言
"
"
filetype plugin indent off
"
"
let g:nora_vim_contexts = get(g:,'nora_vim_contexts', ['editor']) " コンテクスト
let g:nora_vim_flavor = get(g:,'nora_vim_flavor', 'default') " フレーバー
let g:nora_vim_context_stability = get(g:, 'nora_vim_context_stability', 'stable') " 安定性
"
" ディレクトリ
" let g:nora_vim_source_path='~/.dotfiles/vim'
let g:nora_vim_source_path=get(g:,'nora_vim_source_path','~/.vim/rc')
"
"　処理関数の定義
function! LoadSource(path)
  execute 'source '.expand(g:nora_vim_source_path).'/'.a:path
endfunction
"
"
" 初期処理
call LoadSource('kernel/initialize.vim')
"
" プラグインに依存しない設定を有効化
"
" - settings
" - filetypes
" - keymaps
call LoadSource('kernel/load-default-settings.vim')
"
" pluginを設定する
call LoadSource('kernel/plugins.vim')
"
" Syntaxを有効にする
syntax enable
filetype plugin indent on
