# [Shellter] Vim

Vimの設定ファイル郡

## 依存関係[外部プログラム]

- fzf
- rg
- ag

- php (phpactor)
  - phive
  - phpcs
  - phpcs
- nodejs
  - eslint
- vint (VimScriptのALE)
-
      \ 'php': ['php','phpcs','phpmd'],
      \ 'javascript': ['eslint'],
      \ 'vim': ['vint'],
      \ }
let g:ale_fixers = {
      \ 'php': ['phpcbf'],
      \ 'javascript': ['prettier-eslint'],

## install phive
```sh
wget -O ~/bin/phive "https://phar.io/releases/phive.phar"
```

