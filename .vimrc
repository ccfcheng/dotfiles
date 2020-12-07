" Don't be Vi compatible
set nocompatible

" Help plugins to load correctly
filetype off

" TODO: Load plugins here

" Syntax highlighting
syntax on

" For plugins to load
filetype plugin indent on

" Set leader to comma
let mapleader = ","

" Turn off modelines
set modelines=0

" Highlight matching brace
set showmatch

" Show line numbers with relative numbering
set number relativenumber

" Show file stats
set ruler
set cmdheight=2

" Blink cursor instead of beep on error
set visualbell

" Encoding
set encoding=utf-8

" Indent and backspace behavior
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set backspace=indent,eol,start

" Move up and down editor lines
nnoremap j gj
nnoremap k gk

" Wildmenu
set wildmenu

" Search options
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr>

" Visualize hidden characters
set listchars=trail:·,tab:▸\ ,eol:¬
map <leader>l :set list!<cr>

" Color scheme
colorscheme slate

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
