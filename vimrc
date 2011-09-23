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
Bundle 'scrooloose/nerdtree'
Bundle 'msanders/snipmate.vim'
Bundle 'vim-scripts/vimwiki'
Bundle 'tpope/vim-markdown'


" Required by Vundle, vimwiki
filetype plugin indent on
syntax on

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

" Indent to the same level as the previous line
set autoindent

" Splits
" Open a new vertical split and switch to it with ,w
noremap <leader>w <C-w>v<C-w>l

" Snippets plugin
let g:snippets_dir="~/.vim/bundle/snipmate.vim/snippets/,~/.vim/snippets/"

" Vimwiki
let g:vimwiki_list = [{'path': '~/Dropbox/vimwki'}]

" Colors
syntax enable
set background=light
" let g:solarized_termcolors = 256 
" let g:solarized_visibility = "high" 
" let g:solarized_contrast = "high"
colorscheme solarized
