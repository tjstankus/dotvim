" Many settings culled from http://stevelosh.com/blog/2010/09/coming-home-to-vim/

" Disable vi compatibility
set nocompatible

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" My bundles go here
Bundle 'altercation/vim-colors-solarized'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-rails'

" Required by Vundle
filetype plugin indent on

" Remap ;; to ESC for easier mode toggling.
:imap jj <Esc>

set modelines=0

" Map leader to ,
let mapleader = ","

" More info at http://vimcasts.org/episodes/tabs-and-spaces/
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Line numbers relative to current line
set relativenumber

" Show line number and column in bottom right corner
set ruler

" No swapfiles
set noswapfile

" Turn off wrapping
set nowrap

" Make backspace/delete work as expected
set backspace=indent,eol,start

" Splits
" Open a new vertical split and switch to it with ,w
noremap <leader>w <C-w>v<C-w>l

" Colors
syntax enable
set background=dark
colorscheme solarized
