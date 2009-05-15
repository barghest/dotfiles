" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

filetype plugin on
filetype indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
" switch on syntax highlighting
syntax on
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'latexmk -pdf -pv'
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

" A clean-looking font for gvim
set guifont="DejaVu\ Sans\ Mono\ 8"

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=100  " keep 100 lines of command line history
set ruler  " show the cursor position all the time
set showcmd  " display incomplete commands

"set mouse -=a
set shortmess+=I        " disable the welcome screen
 
" line numbering
set nu
 
" wrap like other editors
set wrap                " word wrap
set textwidth=0         " 
set lbr                 " line break
set display=lastline    " don't display @ with long paragraphs

" searching
set hlsearch            " highlight all search results
set incsearch           " increment search
set ignorecase          " case-insensitive search
set smartcase           " upper-case sensitive search

 
" nice colours
 set t_Co=256
" colorscheme twigight
 colorscheme desert256
" colorscheme wombat 
" colorscheme anotherdark 

 " scroll one screen line regardless of editor line length
:noremap    <Up> gk
:noremap!   <Up> <C-O>gk
:noremap    <Down> gj
:noremap!   <Down> <C-O>gj

:noremap    k gk
:noremap    j gj

set enc=utf-8

" Scrollbars
set sidescrolloff=2
set numberwidth=4

