let g:lightline = {
            \ 'active': {
                \'left': [ [ 'mode', 'paste' ],
                \          [ 'gitbranch', 'readonly', 'filename', 'modified' ] ] },
                \'component_function': {
                \     'gitbranch': 'gitbranch#name'
                \ },
            \ 'colorscheme': 'ayu_mirage'
            \}
