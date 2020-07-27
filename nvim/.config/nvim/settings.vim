" set leader key
let g:mapleader = "\<Space>"

syntax on                               " Enables syntax highlighing
set nowrap                              " Display long lines as just one line
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set pumheight=10                        " Makes popup menu smaller
set t_Co=256                            " Support 256 colors
set termguicolors                       " Support 265 colors
set background=dark                     " Dark background
set noerrorbells                        " No error bells of any kind
set tabstop=4 softtabstop=4             " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set showmatch                           " Highlight matching brackets
set number relativenumber               " Line numbers
set smartcase                           " Case-sensitive searching
set incsearch                           " Incremental search
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set undodir=~/.config/nvim/undodir      " Undo saved to custom undodir
set undofile                            " Got to manually create the dir initially
set updatetime=300                      " Faster completion
set timeoutlen=100                      " By default timeoutlen is 1000 ms
set clipboard=unnamedplus               " Copy paste between vim and everything else
set wildmenu                            " Visual autocomplete for command menu
set lazyredraw                          " Faster rendering
set ttyfast                             " Faster rendering
set encoding=utf8                       " Encoding set to utf8
set nocompatible                        " No backward compatibility with Vi
set colorcolumn=160                     " Highlight line 160 - flake8 setting

" Color colum settings
highlight ColorColumn ctermbg=0 guibg=#3c3836

" Removes end of buffer ~ signs
highlight EndOfBuffer guifg=#303030

" Transparency in nvim
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

" Remove highlight of current line number
highlight CursorLineNr guibg=#282828AF guifg=#d65d0e

" Remove linting gutter higlight
highlight SignColumn guibg=282828AF

" Python support for virtual envs
" Tells nvim which python version to use
" Install all nvim python packages in pyenv 'tools'
let g:python3_host_prog = expand("~/.pyenv/versions/tools/bin/python")
let g:python_host_prog = expand("~/.pyenv/versions/py27/bin/python")

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
