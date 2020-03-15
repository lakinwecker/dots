
" distraction free writing mode
let g:limelight_conceal_ctermfg = 240
function! s:goyo_enter()
  Limelight
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z | tmux resize-pane -Z
  set noshowmode
  set noshowcmd
  set wrap
  set scrolloff=999
endfunction
let g:goyo_width = 90

function! s:goyo_leave()
  Limelight!
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set nowrap
  set scrolloff=0
endfunction

augroup goyoactions
  au!
  autocmd! User GoyoEnter nested call <SID>goyo_enter()
  autocmd! User GoyoLeave nested call <SID>goyo_leave()
augroup end


