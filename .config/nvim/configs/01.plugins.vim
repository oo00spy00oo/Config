call plug#begin('~/.config/nvim/bundle')

Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }

" Paredit – a Visual Guide
Plug 'kovisoft/paredit'
" A simple Vimscript test framework
Plug 'junegunn/vader.vim'
" 🌻 A Vim alignment plugin
Plug 'junegunn/vim-easy-align'
" Interactive command execution in Vim.
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" fireplace.vim: Clojure REPL support
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" 🌸 A command-line fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Multiple cursors plugin for vim/neovim
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" eunuch.vim: Helpers for UNIX
Plug 'tpope/vim-eunuch'
" surround.vim: quoting/parenthesizing made simple
Plug 'tpope/vim-surround'
" EditorConfig plugin for Vim
Plug 'editorconfig/editorconfig-vim'
" Vim plugin that displays tags in a window, ordered by scope
Plug 'majutsushi/tagbar'
" tldr client for vim/neovim
Plug 'wlemuel/vim-tldr'
" The Ion Shell. Compatible with Redox and Linux.
Plug 'vmchale/ion-vim'

Plug 'tpope/vim-sensible'
" Plug '/usr/local/opt/fzf'

" commentary.vim: comment stuff out
Plug 'tpope/vim-commentary'

" lean & mean status/tabline for vim that's light as air
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
"
" Powerline is a statusline plugin for vim
" Plug 'powerline/powerline'
"

" fugitive.vim: A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'


" Syntax checking hacks for vim
Plug 'vim-syntastic/syntastic'

" Autocomplete section
" Autocomplete engine for Vim inspried from YouCompleteMe
Plug 'zxqfl/tabnine-vim'
" A code-completion engine for Vim
" Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" End Autocomplete section

" Plug 'christoomey/vim-tmux-navigator'
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

" eunuch.vim: Helpers for UNIX
Plug 'tpope/vim-eunuch'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" emmet for vim: http://emmet.io/
Plug 'mattn/emmet-vim'

" A Vim plugin which shows git diff markers in the sign column and stages/previews/undoes hunks and partial hunks.
Plug 'airblade/vim-gitgutter'

" 🔗 The fancy start screen for Vim.
Plug 'mhinz/vim-startify'

Plug 'rupa/v'

" A Vim plugin which shows git diff markers in the sign column 
" and stages/previews/undoes hunks and partial hunks.
Plug 'mhinz/vim-signify'

" A git commit browser in Vim
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" Switch between single-line and multiline forms of code
Plug 'AndrewRadev/splitjoin.vim'

" fugitive.vim: A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

" Vim plugin for insert mode completion of words in adjacent tmux panes
Plug 'wellle/tmux-complete.vim'

" vinegar.vim: Combine with netrw to create a delicious salad dressing
Plug 'tpope/vim-vinegar'

" dispatch.vim: Asynchronous build and test dispatcher
Plug 'tpope/vim-dispatch'

" 🚀 Run Async Shell Commands in Vim 8.0 / NeoVim and Output to the Quickfix Window !! (Vim 中运行异步任务)
Plug 'skywind3000/asyncrun.vim'

" Search + Browse + Understand your code more efficiently.
Plug 'devjoe/vim-codequery'

Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'ryanoasis/vim-devicons'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-repeat'
Plug 'svermeulen/vim-easyclip'
Plug 'tpope/vim-speeddating'
Plug 'gregsexton/gitv'
Plug 'mbbill/undotree'
Plug 'benmills/vimux'
Plug 'justinmk/vim-sneak'
Plug 'sjl/clam.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'

"### Language
" Markdown
Plug 'plasticboy/vim-markdown'

" Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support
Plug 'dense-analysis/ale'
" An autocompletion daemon for the Go programming language
Plug 'nsf/gocode', { 'rtp': 'vim' }
" Go development plugin for Vim
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Earthfile syntax highlighting for vim
Plug 'earthly/earthly.vim', { 'branch': 'main' }

Plug 'ekalinin/dockerfile.vim'
Plug 'stanangeloff/php.vim'
Plug 'sheerun/vim-polyglot'
Plug 'hdima/python-syntax'
Plug 'vim-scripts/nginx.vim'
Plug 'junegunn/vim-github-dashboard'
Plug 'scrooloose/nerdcommenter'

" Syntax checking hacks for vim
Plug 'vim-syntastic/syntastic'
" A light and configurable statusline/tabline plugin for Vim
" Plug 'itchyny/lightline.vim'
"

" A tree explorer plugin for vim.
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' } | Plug 'xuyuanp/nerdtree-git-plugin'
" Generate a fast shell prompt with powerline symbols and airline colors
Plug 'edkolev/promptline.vim'
" Theme
Plug 'morhetz/gruvbox'
" lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes' | Plug 'ryanoasis/vim-devicons'
" https://github.com/ryanoasis/vim-devicons

call plug#end()
