" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  " autocmd VimEnter * PlugInstall
  " autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " File Explorer
    Plug 'scrooloose/NERDTree'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Start screen for vim
    Plug 'mhinz/vim-startify'

    " Colorscheme
    Plug 'morhetz/gruvbox'

    " Gruvbox lightline
    Plug 'shinchu/lightline-gruvbox.vim'

    " Lightline statusbar
    Plug 'itchyny/lightline.vim'

    " Goyo clean writing environment
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'

    " Markdown preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

    " Hex color highlighting
    " Requires golang installed and other fancy stuff
    " https://github.com/RRethy/vim-hexokinase
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

    " Asynchronous lint engine
    Plug 'dense-analysis/ale'

call plug#end()


" Nerdtree config

" NERDTree on ctrl+n
let NERDTreeShowHidden=1
map <silent> <C-n> :NERDTreeToggle<CR>

" close Nerd Tree after a file is opened
let g:NERDTreeQuitOnOpen=1

" Nerd Tree keybinding: ctrl-n to toggel nerdtree
nmap <C-n> :NERDTreeToggle<CR>

" Nerd Tree remove help header
let NERDTreeMinimalUI=1

" No trailing slashes
augroup nerdtreehidetirslashes
	autocmd!
	autocmd FileType nerdtree syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
augroup end

let g:NERDTreeDirArrowExpandable = '❯'
let g:NERDTreeDirArrowCollapsible = '⬧'

" customise lightline statusbar
set noshowmode
set cmdheight=1
let g:lightline = {
    \ 'colorscheme': 'gruvbox',
    \ 'active': {
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ] ]
    \ },
\ }

" Gruvbox
colorscheme gruvbox

" Hexokinase settings
let g:Hexokinase_highlighters = ['virtual']

" Ale Language support
let g:ale_linters = {
    \'python': ['flake8', 'pydocstyle'],
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

" Goyo limelight combo
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

"Goyo settings
function! s:goyo_enter()
    set noshowmode
    set noshowcmd
    set nocursorline
    Limelight
endfunction

function! s:goyo_leave()
    set showmode
    set showcmd
    set cursorline
    Limelight!
    hi! Normal ctermbg=NONE guibg=NONE
    hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave() 
let g:goyo_width = 90

