scriptencoding = utf-8
" ファイル保存時にLinterを実行するか
let g:ale_lint_on_save = 1
" テキスト変更時にはLinterを実行するか 
let g:ale_lint_on_text_changed = 0
" ファイル保存時にはFixerを実行するか
let g:ale_fix_on_save = 1
" テキスト変更時にはFixerを実行するか
let g:ale_fix_on_text_changed = 0
" ALE実行時にでる目印行を常に表示
let g:ale_sign_column_always = 1

" let g:ale_php_phpcs_standard = 'psr2'
let g:ale_linters = {
      \ 'php': ['php','phpcs','phpmd'],
      \ 'javascript': ['eslint'],
      \ 'vim': ['vint'],
      \ }
let g:ale_fixers = {
      \ 'php': ['phpcbf'],
      \ 'javascript': ['prettier-eslint'],
      \ }
" let g:ale_php_phpcbf_standard = 'psr2'
" let g:ale_php_phpmd_ruleset = 'codesize,design,unusedcode,naming'
let g:ale_completion_tsserver_autoimport=1
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
call deoplete#custom#option('sources', {
      \ '_': ['ale'],
      \})
