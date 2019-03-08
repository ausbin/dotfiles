set ts=4 sw=4 et
set mouse=a
"set rnu number 
"set bg=dark
"set smartindent
set autoindent
set modeline
" when doing gq, don't put two spaces after periods
set nojoinspaces
autocmd BufRead,BufNewFile *.cshtml setfiletype html
autocmd FileType go setlocal noexpandtab
autocmd FileType make setlocal noexpandtab
"autocmd FileType html setlocal ts=2 sw=2
autocmd FileType gitcommit setlocal tw=72
syntax on
"colorscheme default

set textwidth=72
set formatoptions-=t

" Useful for lc3grade output
map vv "+2yy3jzz

" persistent undo
set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=10000

" plugin management! :)
execute pathogen#infect()

" theme
set bg=dark
"colorscheme dracula
"colorscheme gruvbox
colorscheme jellybeans

" nerdtree
let g:NERDTreeMouseMode=3

command Os set ts=2 sw=2 | let g:NERDTreeSortOrder=['Makefile', '\.[chS]$'] | NERDTree
command Ts let NERDTreeIgnore = ['\.\(js\|d\.ts\)$'] | NERDTree
