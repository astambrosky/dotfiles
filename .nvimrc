" vim-plug
call plug#begin('~/.nvim/plugged')
  Plug 'Lokaltog/vim-easymotion'
  Plug 'simnalamburt/vim-mundo'
  Plug 'Yggdroot/indentLine'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'chriskempson/base16-vim'
  Plug 'junegunn/vim-easy-align'
  Plug 'kien/ctrlp.vim'
  Plug 'mattn/emmet-vim'
  Plug 'mhinz/vim-startify'
  Plug 'scrooloose/syntastic'
  Plug 'sirver/Ultisnips'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'reedes/vim-pencil'
  Plug 'tpope/vim-dispatch'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-haml'
  Plug 'tpope/vim-markdown'
  Plug 'tpope/vim-surround'
  Plug 'wavded/vim-stylus'
  Plug 'ervandew/supertab'
  Plug 'mbbill/undotree'
  Plug 'Valloric/YouCompleteMe'
  Plug 'scrooloose/nerdtree'
  Plug 'bling/vim-airline'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'nelstrom/vim-visual-star-search'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-unimpaired'
  Plug 'chase/vim-ansible-yaml'
  Plug 'vim-scripts/fountain.vim'
  Plug 'nvie/vim-flake8'
  Plug 'tmhedberg/SimpylFold'
  Plug 'chaimleib/vim-renpy'
call plug#end()

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
let g:SimpylFold_docstring_preview=1
"adding python support
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3.4'

" ultisnips
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<cr>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltinsipsEditSplit="vertical"

" NEOVIM

colorscheme base16-flat
filetype plugin indent on
let base16colorspace=256
set background=dark
set backspace=2
set backup
set backupdir=~/.nvim/backup//
set breakindent

set noswapfile
set number
"set relativenumber
set shiftwidth=2
set smartcase
set spelllang=en
set tabstop=2
set undodir=~/.nvim/undodir//
set undolevels=100000
set undoreload=100000
set undofile
set writebackup
let g:tex_flavor='latex'
hi Normal ctermbg=none
hi clear texItalStyle
hi clear texBoldStyle

" Someone once told me that real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

"ignore case during search
set ignorecase
set smartcase
set incsearch
set hlsearch

"make backspace sane
set backspace=indent,eol,start
nmap <silent>  <BS>  :nohlsearch<CR>
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

filetype plugin indent on
" enable all Python syntax highlighting features
let python_highlight_all = 1
"make sure vim does not drop files you have to worry about in git or syncing
set nobackup
set nowritebackup
set noswapfile

"make the mouse work on local
"To allow for copy/paste on mac hold option/highlight
set mouse=a

" Rebind <Leader> key
" " I like to have it here becuase it is easier to reach than the default and
" " it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" bind Ctrl+<movement> keys to move around the windows, instead of using
" Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
"map <BS> <c-w>h

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" make vim work with osx clipboard
set clipboard=unnamed

"Make nerdtree work with leader-n 
map <leader>n :NERDTreeToggle<CR>
"Hide .pyc files in NerdTree
let NERDTreeIgnore=['\.pyc$', '\~$'] 

let g:airline_theme="badwolf"

"Gundo set toggle to F5
nnoremap <F5> :GundoToggle<CR>

syntax on
" Nerdtree git status
let g:NERDTreeUseSimpleIndicator = 1

" Organisation
  "" CTRL P
  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ }

" Paste Mode
  function! PasteModeToggle()
    :set number!
    :set relativenumber!
  endfunction

" Auto Functions

"" Auto Saving on leaving insert
:au InsertLeave <buffer> update

" KEYS
imap ii <Esc>
let mapleader="\<Space>"
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>f :CtrlP<CR>
nmap <leader>l :call PasteModeToggle()<CR>
nmap <leader>q :q<CR>
nmap <leader>s :SignifyToggle<CR>
nmap <leader>w :w<CR>
nmap <leader>p :Goyo<CR>
vmap <leader>i :Isolate<CR>
nmap <leader>i :UnIsolate<CR>
nmap <leader>m :make<CR>
nmap ,, <Plug>(easymotion-w)
imap ,u <Esc>:UndotreeToggle<CR>
map ,u <Esc>:UndotreeToggle<CR>
nmap <leader>2 :bn<CR>
nmap <leader>1 :bd<CR>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Add fountain Syntax Highlighting


" Make Vim faster with long lines and syntax highlighting
set synmaxcol=120

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" Terminal escape better
tnoremap <ESC> <C-\><C-n>

