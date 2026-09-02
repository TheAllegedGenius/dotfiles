" Options

" Enable syntax highlighting
syntax on

" Enable filetype-specific plugins and indenting
filetype plugin indent on

" Show Unicode instead of ASCII
set encoding=utf-8

set termguicolors
set scrolloff=8

" Show line numbers
set number
set relativenumber
set nowrap
set colorcolumn="80"
" Show line and column number in statusbar
set ruler

" Disables error beep
set noerrorbells
" Uses a bell symbol instead of beep
set visualbell

" Allows for switching buffers without saving current buffer
set hidden

" Indentation options
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Enables incremental search
set incsearch
" Highlight things that are found in the search
set nohlsearch
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

set wildmenu
set wildmode="longest:full,full"
set wildignorecase

set updatetime=1000

" Keymaps

" Set leader to <Space>
let mapleader = " "

" Use caps lock as escape
inoremap <Caps Lock> <Esc>

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Open Netrw (file browser)
nnoremap <leader>pv :Ex

" Move selected lines up/down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Join lines with cursor preserved
nnoremap J mzJ`z

" Move up/down with cursor centered
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Center on next/previous search result
nnoremap n nzzzv
nnoremap N Nzzzv

" Replace word under cursor
nnoremap <leader>s [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]

" Create new line above/below and stay in normal mode
nnoremap <S-CR> mzO<Esc>`z
nnoremap <CR> mzo<Esc>`z

" Plugins

call plug#begin('~/.vim/plugged')
Plug 'sderev/alabaster.vim'
call plug#end()

" Colors
colorscheme alabaster-dark
