"NERDTree
" Ctrl+o
map <C-o> :NERDTreeToggle<CR>
" Ctrl+i
" map <C-i> :NERDTreeFind<CR>
" let g:NERDTreePatternMatchHighlightFullName = 1
" let NERDTreeAutoDeleteBuffer = 1
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1
" let g:NERDDefaultAlign = 'left'
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" let g:NERDTreeDirMode=2
" let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
" let g:NERDTreeShowBookmarks=1

" NERDTreeGit
let g:NERDTreeGitStatusUseNerdFonts = 1

"Theme
colorscheme gruvbox
syntax enable
set background=dark
highlight Normal ctermbg=None
set termguicolors

"Tagbar
nmap <F8> :TagbarToggle<CR>
"Easy motion
"nmap <silent> gw <Plug>(easymotion-overwin-f2)
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
let g:EasyMotion_smartcase = 1


"ctrlp.vim
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](node_modules|build|public|lib|dist)|(\.(git|svn))$',
    \ 'file': 'tags\|tags.lock\|tags.temp',
\ }

" junegunn/vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" lightline.vim
" let g:lightline = {
"   \     'active': {
"   \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
"   \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
"   \     }
"   \ }

" promptline.vim
let g:promptline_theme = 'airline'
" or
" let g:promptline_theme = 'jelly'