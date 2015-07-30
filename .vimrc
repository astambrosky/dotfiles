"make sure you don't get any of that original vi filth in your new version
set nocompatible

"add numbers and syntax highting for programming fun
set number
filetype off
filetype plugin indent on
syntax on
set ruler
set autoindent

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

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Quick quit command
noremap <Leader>e :quit<CR> " Quit current window
noremap <Leader>E :qa!<CR> " Quit all windows


" Quick quit command
noremap <Leader>e :quit<CR> " Quit current window
noremap <Leader>E :qa!<CR> " Quit all windows

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

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" show whitespace
" MUST be inserted BEFORE the colorscheme command
"#autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"#au InsertLeave * match ExtraWhitespace /\s\+$/
" " Color scheme
" " mkdir -p ~/.vim/colors && cd ~/.vim/colors
" " wget -O wombat256mod.vim
" http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
"#color wombat256mod
"Remove Trailing Whitespace
nnoremap <Leader>rtw :%s/\s\+$//e<CR>
"execute pathogen#infect()
set laststatus=2

let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'plasticboy/vim-markdown'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'davidhalter/jedi-vim'
Bundle 'powerline/powerline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'tpope/vim-surround'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'bling/vim-airline'
Plugin 'sjl/gundo.vim'
Plugin 'terryma/vim-multiple-cursors'
" make vim work with osx clipboard
set clipboard=unnamed

"Make nerdtree work with leader-n 
map <leader>n :NERDTreeToggle<CR>
let g:airline_theme="badwolf"

"Gundo set toggle to F5
nnoremap <F5> :GundoToggle<CR>
" Removes trailing spaces
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>
set wrap linebreak nolist
