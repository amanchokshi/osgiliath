" Ale Language support
let g:ale_linters = {
    \'python': ['flake8'],
    \'sh': ['shellcheck']
\}

let g:ale_fixers = {
    \'*': ['remove_trailing_lines', 'trim_whitespace'],
    \'python': ['black', 'isort']
\}

" Fix file on save
let g:ale_fix_on_save = 1

" Linter symbol
let g:ale_sign_error = '⏣'
let g:ale_sign_warning = '⏣'

" Magic to make ALE linter gutter highlighting work
" https://github.com/dense-analysis/ale/issues/249
autocmd VimEnter * :let g:ale_change_sign_column_color = 1
autocmd VimEnter * :highlight! ALESignColumnWithErrors ctermfg=0 ctermbg=8 guifg=#A5A5A5 guibg=#282828AF
autocmd VimEnter * :highlight! ALESignColumnWithoutErrors ctermfg=0 ctermbg=8 guifg=#A5A5A5 guibg=#282828AF
autocmd VimEnter * :highlight! ALEErrorSign ctermfg=9 ctermbg=8 guifg=#fb4934 guibg=#282828AF
autocmd VimEnter * :highlight! ALEWarningSign ctermfg=11 ctermbg=8 guifg=#fe8019 guibg=#282828AF
