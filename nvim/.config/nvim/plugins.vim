set runtimepath+=~/.config/nvim/

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent call system('mkdir -p ~/.config/nvim/{autoload,bundle,cache,undo,backups,swaps}')
  silent call system('curl -fLo ~/.config/nvim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
  execute 'source  ~/.config/nvim/autoload/plug.vim'
  augroup plugsetup
    au!
    autocmd VimEnter * PlugInstall
  augroup end
endif

call plug#begin('~/.vim/plugged')

" colors
"Plug 'xero/sourcerer.vim'
"Plug 'xero/blaquemagick.vim'
"Plug 'xero/vim-noctu'
"Plug 'NLKNguyen/papercolor-theme'
"Plug 'crusoexia/vim-monokai'
"Plug 'iCyMind/NeoSolarized'
"Plug 'liuchengxu/space-vim-dark'
"Plug 'morhetz/gruvbox'
"Plug 'ayu-theme/ayu-vim'
"Plug 'dylanaraps/wal.vim'
Plug 'rakr/vim-one'
Plug 'dylanaraps/wal.vim'

" features
" Plug 'tpope/vim-sensible' " Sensible defaults
" Plug 'tpope/vim-unimpaired' " Command pairs
Plug 'isa/vim-matchit' " Matching for html/xhtml
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-vinegar' " Enhanced netrw
" Plug 'simeji/winresizer'

Plug 'jremmen/vim-ripgrep'

Plug 'iberianpig/tig-explorer.vim'
Plug 'ruanyl/vim-gh-line'

" Plug 'roxma/vim-tmux-clipboard'
" Plug 'christoomey/vim-tmux-navigator'

Plug 'matze/vim-move' " Move lines up and down
" Plug 'tpope/tpope-vim-abolish' " Replace your own common errors with the correct word
Plug 'godlygeek/tabular' " Helps you align text.
" Plug 'ervandew/supertab' " Better tab autocompletion
Plug 'editorconfig/editorconfig-vim'

Plug 'artur-shaik/vim-javacomplete2'

" Plug 'rdnetto/YCM-Generator' " autocompletion configuration generator
Plug 'mhinz/vim-signify' " Show a diff using the vim sign column
" Plug 'jlanzarotta/bufexplorer' " Buf explorer
" Plug 'lyuts/vim-rtags' " C++ indexing, etc.
Plug 'tpope/vim-projectionist' " Switch between pairs of files.
Plug 'tpope/vim-dispatch' " Async building
Plug 'octol/vim-cpp-enhanced-highlight' " Advanced CPP highlighting
Plug 'derekwyatt/vim-scala'

Plug 'janko/vim-test'

" fuzzy find
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Plug 'Quramy/tsuquyomi' " typescript support
Plug 'leafgarland/typescript-vim' " typescript syntax highlighting
Plug 'chr4/nginx.vim'

Plug 'ElmCast/elm-vim' " Elm support
Plug 'tikhomirov/vim-glsl' " GLSL spuport

Plug 'janko-m/vim-test' " Testing!!!
" Plug 'plytophogy/vim-virtualenv' " virtualenv support

Plug 'mattn/webapi-vim' " Dependency for gist below
Plug 'mattn/gist-vim' " Gist support
Plug 'ianks/vim-tsx' " TSX Support
Plug 'rust-lang/rust.vim'
Plug 'jparise/vim-graphql'
Plug 'derekwyatt/vim-scala'

Plug 'freitass/todo.txt-vim'

" Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' } " gdb wrapper

" Intellisense!? 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'Chiel92/vim-autoformat'

" Git blame
Plug 'APZelos/blamer.nvim' " Git line link
Plug 'ruanyl/vim-gh-line' " Git line link

" Writing plugins
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' } " Distraction free writing.
Plug 'junegunn/limelight.vim', { 'on': 'Goyo' } " More distraction free writing.
Plug 'beloglazov/vim-online-thesaurus'
Plug 'lervag/vimtex'




call plug#end()
