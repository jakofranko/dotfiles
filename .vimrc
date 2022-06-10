set nu
filetype indent plugin on
syntax on
set backspace=indent,eol,start

set wildmenu

set showcmd
" use spaces instead of tabs
set expandtab

" size of a hard tabstop
set tabstop=2

" size of an 'indent'
set shiftwidth=2

set hls
set lbr
colorscheme delek
execute pathogen#infect()
filetype plugin indent on

hi Search   ctermbg=Blue ctermfg=Black
hi Error    ctermfg=Black ctermbg=Red guifg=Black guibg=Red
hi SpellBad term=undercurl ctermfg=Black ctermbg=Red gui=undercurl guisp=Red

" makes vim read *.ejs files like they're .html files
au BufNewFile,BufRead *.ejs set filetype=html
