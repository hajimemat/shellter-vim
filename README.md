# [Shellter] Vim

Vimの設定ファイル郡

## 依存関係[外部プログラム]

- fzf
- rg
- ag

- php (phpactor)
  - phpcs
  - phpmd
  - phpcbf
- nodejs
  - eslint
- vint (VimScriptのALE)

## install phive and others

```sh
wget -O ~/bin/phive "https://phar.io/releases/phive.phar"
chmod 755 ~/bin/phive
phive install -t ~/bin phpcs phpmd phpcbf
```
