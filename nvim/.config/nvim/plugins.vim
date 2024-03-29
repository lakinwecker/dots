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
"Plug 'NLKNguyen/papercolor-theme'
"Plug 'crusoexia/vim-monokai'
"Plug 'iCyMind/NeoSolarized'
"Plug 'liuchengxu/space-vim-dark'
"Plug 'liuchengxu/space-vim-theme'
"Plug 'morhetz/gruvbox'
"Plug 'ayu-theme/ayu-vim'
"Plug 'dylanaraps/wal.vim'
Plug 'rakr/vim-one'
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'dylanaraps/wal.vim'
"Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

" features
" Plug 'tpope/vim-sensible' " Sensible defaults
" Plug 'tpope/vim-unimpaired' " Command pairs
Plug 'isa/vim-matchit' " Matching for html/xhtml
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-vinegar' " Enhanced netrw
Plug 'will133/vim-dirdiff'
Plug 'christoomey/vim-system-copy'
Plug 'machakann/vim-sandwich'
" Plug 'simeji/winresizer'

Plug 'jremmen/vim-ripgrep'

Plug 'codeindulgence/vim-tig'

Plug 'matze/vim-move' " Move lines up and down
Plug 'godlygeek/tabular' " Helps you align text.
Plug 'editorconfig/editorconfig-vim'

Plug 'mhinz/vim-signify' " Show a diff using the vim sign column
Plug 'tpope/vim-projectionist' " Switch between pairs of files.
Plug 'tpope/vim-dispatch' " Async building
Plug 'octol/vim-cpp-enhanced-highlight' " Advanced CPP highlighting
Plug 'derekwyatt/vim-scala'

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
Plug 'antoinemadec/coc-fzf'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Git blame
" Plug 'APZelos/blamer.nvim' " Git line link
Plug 'ruanyl/vim-gh-line' " Git line link

" Writing plugins
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' } " Distraction free writing.
Plug 'junegunn/limelight.vim', { 'on': 'Goyo' } " More distraction free writing.
Plug 'beloglazov/vim-online-thesaurus'
Plug 'lervag/vimtex'




call plug#end()
