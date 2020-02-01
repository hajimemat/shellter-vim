let g:VimuxUseNearest=0
let g:VimuxOrientation="h"
let g:VimuxHeight="25"

map <SUBNORA>pb :call VimuxRunCommand("clear; phpunit ".bufname("%"))<CR>
map <SUBNORA>pp :VimuxPromptCommand<CR>
map <SUBNORA>pf :call VimuxZoomRunner()<CR>
map <SUBNORA>pq :VimuxCloseRunner<CR>
map <SUBNORA>pi :VimuxInspectRunner<CR>
map <SUBNORA>px :VimuxInterruptRunner<CR>
map <SUBNORA>pl :VimuxRunLastCommand<CR>

function! VimuxSlime()
  call VimuxSendText(@v)
  call VimuxSendKeys("Enter")
endfunction

vmap <SUBNORA>py "vy :call VimuxSlime()<CR>
nmap <SUBNORA>py vip<SUBNORA>ps<CR>
