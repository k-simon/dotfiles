call pathogen#infect()

set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
let g:solarized_termcolors=256
color Tomorrow-Night
set ignorecase
set laststatus=2

if has("win32")
  cd C:\Users\SIMON
endif


if has("unix")
  let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
endif

" Exit vim if NERDTree is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" Syntax Highlighting on
set nocompatible

" Disable bell.
set vb t_vb=

" line numbers
set number
set numberwidth=3

" Open new horizontal split windows below current
set splitbelow

" Open new vertical split windows to the right
set splitright

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" don't wrap lines that are too long
set nowrap


" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

autocmd BufRead *.json :set ft=javascript

" use , as leader key
let mapleader = ","

" use leader-p to open ctrlp
map <leader>b :CtrlP<CR>

map <leader>s :Ag 
map <leader>d :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>

" ignore node_modules directory
set wildignore+=*/node_modules/*


set nobackup
set noswapfile

" highlight search results
set hlsearch

" clear highlighted matches with space
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" remap enter/shift-enter to insert blank lines
map <S-Enter> O<Esc>
map <CR> o<Esc>

" map leader-a to open a horizontal split of the alternate file
map <leader>a :split #<CR>

" Maps for jj to act as Esc
ino jj <esc>
cno jj <c-c>

" Replace current line with buffer contents via ctrl-p
nmap <C-p> "_ddP
vmap <C-p> "_dP

" allow switching away from buffers that have changes
set hidden


" vim-golang settings
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
