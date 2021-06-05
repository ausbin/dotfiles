set ts=4 sw=4 et
set mouse=a
" stop tmux from hecking up mouse (e.g., can't resize panes with mouse
" without this)
"set ttymouse=xterm2
" make mouse work beyond 220 columns
set ttymouse=sgr
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

" coq
filetype plugin indent on

" plugin management! :)
execute pathogen#infect()

" theme
set bg=dark
"colorscheme dracula
"colorscheme gruvbox
colorscheme jellybeans

" nerdtree
let g:NERDTreeMouseMode=3

" different projects
augroup cs6210proj1
  autocmd!
  autocmd BufRead,BufNewFile ~/Documents/school/gatech/grad/cs6210/proj/1/project1/gtthreads/*.[ch] set noet
augroup END

command Os set ts=2 sw=2 | let g:NERDTreeSortOrder=['Makefile', '\.[chS]$'] | NERDTree
command Ts let NERDTreeIgnore = ['\.\(js\|d\.ts\)$'] | NERDTree
