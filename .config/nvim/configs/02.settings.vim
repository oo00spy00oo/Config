set encoding=utf-8

" Set font on Iterm2 (or another terminal)

" set encoding=utf-8
" set guifont=FiraCode_Nerd_Font_Regular:h11
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" set t_Co=256

let mapleader = "\<Space>"
filetype plugin on
filetype plugin indent on

autocmd BufEnter * :set scroll=10
syntax on

set mouse=a

set incsearch
set hlsearch

set tabstop=4
set softtabstop=0
set shiftwidth=4

" vim-airline
let g:airline_powerline_fonts = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

" vim-signify
" default updatetime 4000ms is not good for async update
set updatetime=100