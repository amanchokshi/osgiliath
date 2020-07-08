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
    
    " Gruvbox lightline
    Plug 'shinchu/lightline-gruvbox.vim'	

    " Lightline statusbar
    Plug 'itchyny/lightline.vim'


    " Goyo clean writing environment
    Plug 'junegunn/goyo.vim'    
    
    " Markdown preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

    " Hex color highlighting
    " Requires golang installed and other fancy stuff
    " https://github.com/RRethy/vim-hexokinase
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

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


" Base16 color theme
colorscheme base16-gruvbox-dark-medium


" Hexokinase settings
let g:Hexokinase_highlighters = ['virtual']

