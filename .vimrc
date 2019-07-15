" Common Settings
set nocompatible                        " Don't try to be vi compatible
filetype off                            " Helps force plugins to load correctly when it is turned back on below
set encoding=utf-8                      " Encoding
set belloff=all                         " Blink cursor on error instead of beeping (grr)

" Editor Related Settings
syntax on                               " Turn on syntax highlighting
set number                              " Show line numbers

" Standard Mappings
let mapleader = ","                     " Pick a leader key
inoremap jj <ESC>

" Whitespace
set textwidth=79
set formatoptions=cqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Load plugins here (Vundle)
set rtp+=~/.vim/bundle/Vundle.vim       " set the run time pa th to include vundle
call vundle#begin()                     " Start Vundle loading

Plugin 'VundleVim/Vundle.vim'           " let Vundle manage Vundle, required
Plugin 'dracula/vim'                    " install the dracula theme
Plugin 'morhetz/gruvbox'

call vundle#end()                       " Stop Vundle Loading
filetype plugin indent on               " required for Vundle

" Color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme gruvbox 
