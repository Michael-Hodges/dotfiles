set completeopt=menuone,noinsert,noselect
set expandtab
set tabstop=4 
set shiftwidth=4
set number
set nu
set ignorecase
set smartcase
set incsearch
set diffopt+=vertical
set hidden
set nobackup
set noswapfile
set cmdheight=1
set shortmess+=c
set signcolumn=yes
set colorcolumn=100
filetype plugin indent on
let mapleader = " "
if (has("termguicolors"))
    set termguicolors
endif

call plug#begin('~/.vim/plugged')
Plug 'ayu-theme/ayu-vim'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
call plug#end()
