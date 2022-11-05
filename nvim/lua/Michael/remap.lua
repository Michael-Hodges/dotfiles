local nnoremap = require("Michael.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>Vex <bar> vertical resize 30<CR>")
--nnoremap("<leader>pv", "<cmd>Ex<CR>")

nnoremap("<leader>h", ":wincmd h<CR>")
nnoremap("<leader>j", ":wincmd j<CR>")
nnoremap("<leader>k", ":wincmd k<CR>")
nnoremap("<leader>l", ":wincmd l<CR>")

nnoremap("<leader>d", "<C-d>")
nnoremap("<leader>u", "<C-u>")


--autocmd FileType python map <buffer> <leader>r :w<CR>:exec '!python' shellescape(@%, 1)<CR>
--vim.api.nvim_create_autocmd("FileType", {
--    pattern = {"*.py"},
--    callback = myluafun,
--})

vim.cmd([[autocmd FileType python map <buffer> <leader>r :w<CR>:exec '!python3' shellescape(@%, 1)<CR>]])


--function SmoothScroll(up)
--    if a:up
--        let scrollaction="\<C-y>"
--    else 
--        let scrollaction="\<C-e>"
--    endif
--    exec "normal " . scrollaction
--    redraw
--    let counter=1
--    while counter<&scroll
--        let counter+=1
--        sleep 5m
--        redraw
--        exec "normal " . scrollaction
--    endwhile
--endfunction
