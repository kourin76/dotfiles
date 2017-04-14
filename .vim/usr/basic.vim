set encoding=utf-8
scriptencoding utf-8

"--------------------
" charactor
"--------------------
set fileencoding=utf-8
set fileencodings=ucs,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double

"--------------------
" indent
"--------------------
set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set shiftwidth=2

"--------------------
" search
"--------------------
set incsearch  " enable incremental search
set ignorecase
set smartcase  " become case sensitive if pattern includes upper case
set hlsearch   " highlight search result

" toggle highlight by <ESC><ESC>
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

"--------------------
" cursor
"--------------------
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

nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>
