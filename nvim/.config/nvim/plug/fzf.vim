let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"

nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>ff :Files %:p:h<CR>
nnoremap <leader>fhf :History<CR>
nnoremap <leader>fh: :History:<CR>
nnoremap <leader>fh/ :History/<CR>
nnoremap <leader>f: :Commands<CR>
nnoremap <leader>fw :Windows<CR>
nnoremap <leader>fs :Snippets<CR>
nnoremap <leader>f? :Helptags<CR>
nnoremap <leader>fg :GitFiles?<CR>
nnoremap <leader>fl :Lines<CR>
nnoremap <leader>fL :BLines<CR>
nnoremap <leader>ft :Tags<CR>
nnoremap <leader>fT :BTags<CR>
nnoremap <leader>f/ :Rg<CR>

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

