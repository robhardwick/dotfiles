" General
set nocompatible
set autoread
set nobackup
set hidden
set number
set history=1000
set shortmess=atI
set backspace=indent,eol,start
set incsearch
set hlsearch
set ruler
set showmode

" Tabbing and indenting
set expandtab
set tabstop=4
set sw=4
set smartindent

" Encoding and line endings
set encoding=utf-8
set ff=unix
set ffs=unix

" Syntax
syntax on
filetype on
filetype plugin on
filetype indent on

" Additional file types
au BufRead,BufNewFile *.{phpc,phpi,module,install,profile,ctp} set filetype=php

" Filename completion
set wildmenu
set wildmode=list:longest

" Remove trailing whitespace
"autocmd BufWritePre * :%s/\s\+$//e

" GUI options
if has("gui_macvim")
	set guioptions-=T
	set lines=50
	set columns=180
	set mouse=a
	set shell=/bin/bash
	set directory=/tmp/
    set background=dark
    colorscheme ir_black
elseif has("gui_win32")
	set guioptions-=T
	set guifont=Lucida_Console:h10:cDEFAULT
	set directory=C://Docume~1//robh//Temp//Vim//
	set lines=80
	set columns=116
	winpos 0 0
    set background=dark
    colorscheme ir_black
elseif has("gui_gtk2")
	set guioptions-=T
	set guifont=Bitstream\ Vera\ Sans\ Mono\ 8
	set guioptions-=m
    set background=dark
    colorscheme ir_black
endif
