" Source plugin files
source $HOME/.config/nvim/plugins.vim

" Access colors present in 256 colorspace
let base16colorspace=256  
set termguicolors

" Syntax highlighting
syntax on

" No error bells of any kind
set noerrorbells

" Indent magic
" Always 4 charachters
set tabstop=4 softtabstop=4
set shiftwidth=4
" Convert tabs to spaces
set expandtab
set smartindent

" highlight matching parentheses / brackets [{()}]
set showmatch           

" Line numbers
set number

" Don't warp lines, keeep going
set nowrap

" Case-sensitive searching
set smartcase

" Undo saved to custom undodir
" Got to manually create the dir
set noswapfile
set nobackup
set undodir=~/.comfig/nvim/undodir
set undofile

" Incremental search
set incsearch

" Set 80 char column
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=#3c3836

" removes end of buffer ~ signs
hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg

" No backward compatibility with Vi
set nocompatible

" Encoding to UTF-8
set encoding=utf8       

" Enable mouse support
set mouse=a             

" Faster rendering
set lazyredraw
set ttyfast

" visual autocomplete for command menu
set wildmenu

" esc key works immediately
set timeoutlen=1000 ttimeoutlen=0


" Python support for virtual envs
" Tells nvim which python version to use
" Install all nvim python packages in pyenv 'tools'
let g:python3_host_prog = expand("~/.pyenv/versions/tools/bin/python")
let g:python_host_prog = expand("~/.pyenv/versions/py27/bin/python")

