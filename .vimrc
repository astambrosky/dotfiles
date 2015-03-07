set nocompatible
set number
syntax on
set tabstop=4
set autoindent
set ignorecase
set smartcase
set incsearch
set ruler
set backspace=indent,eol,start
set hlsearch
nmap <silent>  <BS>  :nohlsearch<CR>
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)
filetype plugin indent on
