filetype plugin indent on
syntax enable
set guicursor=
set relativenumber
set nu
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set ignorecase
set incsearch
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set noshowmode
set cursorline
set signcolumn=yes
set colorcolumn=79
set cmdheight=1
set updatetime=50
set shortmess+=c
set path +=**
set wildmenu
set diffopt+=vertical
set completeopt=menuone,noinsert,noselect
if (has("termguicolors"))
    set termguicolors
endif

"-------------------------------------------------------------------------------
" Plugins
"-------------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'ayu-theme/ayu-vim'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mileszs/ack.vim'
Plug 'airblade/vim-gitgutter'
call plug#end()

"-------------------------------------------------------------------------------
" Key Maps
"-------------------------------------------------------------------------------

let mapleader = " "
nmap <leader>ve :edit   ~/.config/nvim/init.vim<CR>
nmap <leader>vc :edit   ~/.config/nvim/coc-settings.json<CR>
nmap <leader>vr :source ~/.config/nvim/init.vim<CR>

map gf :edit <cfile><CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :Vex <bar> :vertical resize 30<CR>
nmap <leader>o :only<CR>

" Bring search results to midscreen
nnoremap n nzz
nnoremap N Nzz
nnoremap <leader>f :Ack! '\b<cword>\b' <CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>cc :cclose<CR>
nnoremap <leader>co :copen<CR>
:noremap <silent> <c-l> :nohls<cr><c-l>

nnoremap <leader>d :call SmoothScroll(0)<CR>
nnoremap <leader>u :call SmoothScroll(1)<CR>
nnoremap <C-U> :call SmoothScroll(1)<CR>
nnoremap <C-D> :call SmoothScroll(0)<CR>

"-------------------------------------------------------------------------------
" Functions
"-------------------------------------------------------------------------------

function SmoothScroll(up)
    if a:up
        let scrollaction="\<C-y>"
    else 
        let scrollaction="\<C-e>"
    endif
    exec "normal " . scrollaction
    redraw
    let counter=1
    while counter<&scroll
        let counter+=1
        sleep 5m
        redraw
        exec "normal " . scrollaction
    endwhile
endfunction

"autocmd FileType python map <buffer> <leader>r :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python map <buffer> <leader>r :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
