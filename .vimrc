" Enable syntax highlighting
syntax on

" Show line numbers
set number
" Show line and column number in statusbar
set ruler

" Disables error beep
set noerrorbells
" Uses a bell symbol instead of beep
set visualbell

" Allows for switching buffers without saving current buffer
set hidden

" Enable filetype-specific plugins and indenting
filetype plugin indent on

" Indentation options
set shiftwidth=4
set softtabstop=4
set expandtab

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Enables incremental search
set incsearch
" Highlight things that are found in the search
"let hlsearch

" Custom bindings
" Execute current Python file
autocmd FileType python map <buffer> py :w<CR>:exec '!clear;python3' shellescape(@%, 1)<CR>
autocmd FileType julia map <buffer> jl :w<CR>:exec '!clear;julia' shellescape(@%, 1)<CR>
" Move vertically by visual line
nnoremap j gj
nnoremap k gk
inoremap <Caps Lock> <Esc>

" Python file options
au BufNewFile,BufRead *.py
    \ set fileformat=unix
" Sets maximum line length
    \ set textwidth=80

" Plugins
call plug#begin('~/.vim/plugged')

    Plug 'lervag/vimtex'
        let g:tex_flavor='latex'
        let g:vimtex_view_enabled=1
        let g:vimtex_view_automatic=1
        let g:vimtex_view_method='zathura'
        let g:vimtex_quickfix_mode=0

call plug#end()
