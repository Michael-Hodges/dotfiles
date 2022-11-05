"Plug 'mileszs/ack.vim'

if executable('Rg')
    let g:ackprg = 'Rg --vimgrep --smart-case --type-not sql'
endif
let g:ack_use_cword_for_empty_search=1
cnoreabbrev Ack Ack!
