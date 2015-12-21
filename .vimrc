" Package manager (pathogen)
execute pathogen#infect()

" Vundle setup 
set nocompatible              " be iMproved, required
filetype on
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'      " Vundle base package

" Plugins
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'         " fuzzy file buffer

call vundle#end()            " required
filetype plugin indent on    " required

" General settings
set history=5000
set autoread
set ruler

" Set backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Set spacing
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

" Enable mouse
if has('mouse')
  set mouse=a
endif

" Color + syntax
set hlsearch incsearch
set term=screen-256color
set t_Co=256
set number
syntax enable
try
    colorscheme desert
catch
endtry

" General Keymaps
" Search file for visually selected text
vnoremap // y/<C-R>"<CR> 
nmap <C-j> <C-e>j
nmap <C-k> <C-y>k
imap <C-j> <C-e>j
imap <C-k> <C-y>k

" CtrlP Settings
let g:ctrlp_max_files = 100000       " Increase max index size
let g:ctrlp_max_depth = 300          " Increase max file depth
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20' 
" Open CtrlP, insert word at cursor 
nmap <leader>gt :CtrlP<CR><C-\>w

" File Explore style
let g:netrw_liststyle=3
 
" Setup Buffer Display (dep: airline)
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to between buffers
nmap <C-l> :bnext<CR>
nmap <C-h> :bprevious<CR>
imap <C-l> :bnext<CR>
imap <C-h> :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" This is for setting Makefiles with tabs not spaces
autocmd FileType make setlocal noexpandtab
