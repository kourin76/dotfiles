"--------------------
"dein scripts
"--------------------

let s:dein_dir = expand('~/dotfiles/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" Fetch dein.vim from Github if the plugin is not installed.
if &runtimepath !~# 'dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state('~/dotfiles/.vim/bundle/dein')
  call dein#begin('~/dotfiles/.vim/bundle/dein')

  let g:rc_dir    = expand('~/dotfiles/.vim/usr')
  let s:toml      = g:rc_dir . '/dein.toml'
"  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  call dein#load_toml(s:toml,      {'lazy' : 0})
"  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

filetype plugin indent on

" molokai
colorscheme molokai
set t_Co=256
syntax enable

" lightline.vim
set laststatus=2
set showmode
set showcmd
set ruler

" vim-fugitive
  set statusline=%<     " wrap line position
  set statusline+=[%n]  " buffer number
  set statusline+=%m    " edit flag
  set statusline+=%r    " read only flag
  set statusline+=%h    " help buffer flag
  set statusline+=%w    " preview window flag
  set statusline+=%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}  " show fenc and ff
  set statusline+=%y    " file type in buffer
  set statusline+=\     " whitespace
if winwidth(0) >= 130
  set statusline+=%F    " full file path in buffer
else
  set statusline+=%t    " file name in buffer
endif
  set statusline+=%=    "separator between left justified and right justified
  set statusline+=%{fugitive#statusline()}  " git branch name
  set statusline+=\ \   " two whitespaces
  set statusline+=%1l   " cursor position (line)
  set statusline+=/
  set statusline+=%L    " lines in buffer
  set statusline+=,
  set statusline+=%c    " cursor position (column)
  set statusline+=%V    " cursor position (column) on screen
  set statusline+=\ \   " two whitespaces
  set statusline+=%P    " relative position in buffer

