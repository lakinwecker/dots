set nocompatible

" security
set modelines=0

" hide buffers, not close them
set hidden

" maintain undo history between sessions
set undofile
set undodir=~/.nvim/undo
set nobackup
set nowritebackup
set noswapfile

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set signcolumn=yes
set updatetime=100

" fuzzy find
set path+=**

" lazy file name tab completion
set wildmode=longest,list,full
set wildmenu
set ruler
set wildignorecase
" ignore files vim doesnt use
set wildignore+=.git,.hg,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf,*.cbr,*.cbz
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
set wildignore+=*.swp,.lock,.DS_Store,._*

" case insensitive search
" set ignorecase
" set smartcase
" set infercase

" the /g flag on :s substitutions by default
set gdefault

" make backspace behave in a sane manner
set backspace=indent,eol,start

" searching
set hlsearch
set incsearch

" use indents of 4 spaces
set shiftwidth=4

" tabs are tabs
set smarttab
set expandtab

" an indentation every eight columns
set tabstop=4

" let backspace delete indent
set softtabstop=4
set shiftwidth=4
set expandtab

" 
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype elm setlocal ts=4 sts=4 sw=4

" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" enable auto indentation
set autoindent

" remove trailing whitespaces and ^M chars
augroup ws
  au!
  autocmd FileType c,cpp,java,php,js,json,css,scss,sass,py,rb,coffee,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
augroup end

" set leader key to comma
let mapleader=","
" let maplocalleader=","
" Switch between 2 / 4 spaces
nmap <leader>2 :set tabstop=2<cr>:set shiftwidth=2<cr>
nmap <leader>4 :set tabstop=4<cr>:set shiftwidth=4<cr>
" Clear search results with <leader>n
nmap <silent> <leader>n :nohlsearch<CR>
" switch between paste mode with ,p
set pastetoggle=<leader>p

"" Strip trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

set encoding=utf-8

" Languages

au BufNewFile,BufRead *.rs set filetype=rust
au BufNewFile,BufRead *.cmake,CMakeLists.txt set filetype=cmake
autocmd FileType rust setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

