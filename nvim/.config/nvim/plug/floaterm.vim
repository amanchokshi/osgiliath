nnoremap <leader>t :FloatermToggle<CR>
nnoremap <leader>t <Esc>:FloatermToggle<CR>
tnoremap <leader>t <C-\><C-n>:FloatermToggle<CR>

noremap  <leader>tp :FloatermNew python<CR>
noremap  <leader>tip :FloatermNew ipython<CR>

let g:floaterm_width = 0.9
let g:floaterm_height = 0.8
let g:floaterm_winblend = 0

" Set floating window border line color to cyan, and background to orange
hi FloatermBorder guifg=#928374
