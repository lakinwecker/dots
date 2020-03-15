" show matching brackets/parenthesis
set showmatch

" disable startup message
set shortmess+=I
" don't give |ins-completion-menu| messages.
set shortmess+=c


" hide mode display
set noshowmode

" syntax highlighting
syntax on
set synmaxcol=512
filetype plugin on

" stop unnecessary rendering
set lazyredraw

" show line numbers
set number

" no line wrapping
set nowrap

" no folding
set nofoldenable
set foldlevel=99
set foldminlines=99
set foldlevelstart=99

" highlight cursor
set cursorline
set cursorcolumn

" Always show sign column
set signcolumn="yes"

" show invisibles
set list
set listchars=
"set listchars+=tab:𐄙\ 
set listchars=tab:>-
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:⣿

" split style
set fillchars=vert:▒

" tree style file explorer
let g:netrw_liststyle=3
" let g:netrw_browse_split=4
let g:netrw_winsize=25

set t_Co=256
set background=dark
let g:PaperColor_Theme_Options = {
\   'theme': {
\     'default.dark': {
\       'transparent_background': 1
\     }
\   }
\ }

" Escape key delay
set timeoutlen=1000 ttimeoutlen=0
" colorscheme monokai
colorscheme gruvbox
" let ayucolor="light"  " for light version of theme
" colorscheme ayu
set termguicolors

" set termguicolors     " enable true colors support
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
" colorscheme ayu

nnoremap <silent> <Leader>= :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

