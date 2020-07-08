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
	
    " Base16 colors for vim
    Plug 'chriskempson/base16-vim'

    " Base16 lightline
    Plug 'daviesjamie/vim-base16-lightline'

    " Lightline statusbar
    Plug 'itchyny/lightline.vim'


call plug#end()

" Nerdtree config

" NERDTree on ctrl+n
" let NERDTreeShowHidden=1
map <silent> <C-n> :NERDTreeToggle<CR>

" close Nerd Tree after a file is opened
let g:NERDTreeQuitOnOpen=1

" Nerd Tree keybinding: ctrl-n to toggel nerdtree
nmap <C-n> :NERDTreeToggle<CR>

" Nerd Tree remove help header
let NERDTreeMinimalUI=1

" Customizes look of nerd tree. Green directories
:hi Directory guifg=#FF0000 ctermfg=green
" No trailing slashes
augroup nerdtreehidetirslashes
	autocmd!
	autocmd FileType nerdtree syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
augroup end

let g:NERDTreeDirArrowExpandable = '❯'
let g:NERDTreeDirArrowCollapsible = '⬧'



" Base16 lightline config
let g:lightline = {
\   'colorscheme': 'base16'
\ }

" customise lightline statusbar
set laststatus=2
set cmdheight=1
let g:lightline = {
      \ 'colorscheme': 'base16',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ] ]
      \ },
      \ }


