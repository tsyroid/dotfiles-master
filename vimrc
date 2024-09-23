" $HOME/.vimrc

set nocompatible " not vi compatible
syntax on " enable syntax highlighting

filetype plugin indent on " enable file type detection

set termguicolors " better colors

" number of spaces in a <Tab>
set tabstop=4
set softtabstop=4
set expandtab

" enable autoindents
set smartindent

" number of spaces used for autoindents
set shiftwidth=4

" adds line numbers
set number

" columns used for the line number
set numberwidth=3

" highlights the matched text pattern when searching
set incsearch
set nohlsearch

" open splits intuitively
set splitbelow
set splitright

" navigate buffers without losing unsaved work
set hidden

" start scrolling when 8 lines from top or bottom
set scrolloff=8

" Save undo history
set undofile

" Enable mouse support
set mouse=a

" case insensitive search unless capital letters are used
set ignorecase
set smartcase

" vim-plug

call plug#begin('~/.vim/plugged')

" plugins here
Plug 'gruvbox-community/gruvbox'

call plug#end()

" declare colorscheme
colorscheme gruvbox
" for dark colorschemes
set background=dark

" EOF
