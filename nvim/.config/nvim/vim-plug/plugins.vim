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

    " File Explorer & code commented
    Plug 'preservim/nerdtree'
    Plug 'preservim/nerdcommenter'

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

    " Conquer of Completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif






