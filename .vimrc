set encoding=utf-8
scriptencoding utf-8

set fileencoding=utf-8
set fileencodings=ucs,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double

set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set shiftwidth=2

set incsearch
set ignorecase
set smartcase
set hlsearch
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

" cursor
set whichwrap=b,s,h,l,<,>,[,],~
set number
set cursorline
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk
set backspace=indent,eol,start

set showmatch

set wildmenu
set history=5000

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/bundle/dein')
  call dein#begin('~/.vim/bundle/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/bundle/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('scrooloose/nerdtree')
  call dein#add('tomasr/molokai')
  call dein#add('itchyny/lightline.vim')
  call dein#add('bronson/vim-trailing-whitespace')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" molokai
colorscheme molokai
set t_Co=256
syntax enable

" lightline.vim
set laststatus=2
set showmode
set showcmd
set ruler

