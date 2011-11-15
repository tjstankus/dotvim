" Pathogen
" https://github.com/tpope/vim-pathogen
call pathogen#infect()
syntax on
filetype plugin indent on

" Disable vi compatibility
set nocompatible

" Many settings culled from http://stevelosh.com/blog/2010/09/coming-home-to-vim/

set modelines=0

" Map leader to ,
let mapleader = ","

" Map ; to : so that ;w will save, for example
nnoremap ; :

" More info at http://vimcasts.org/episodes/tabs-and-spaces/
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Search is case-insensitive when only lowercase used, becomes
" case-sensitive when an uppercase letter is used.
set ignorecase
set smartcase

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

" Folding
" http://smartic.us/2009/04/06/code-folding-in-vim/
" fold based on indent
set foldmethod=indent
" deepest fold is 10 levels
set foldnestmax=10
" dont fold by default
set nofoldenable
" not sure what this setting does
set foldlevel=1

" Highlight trailing whitespace
match Todo /\s\+$/

" Strip trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Colors
syntax enable
colorscheme solarized
if has('gui_running')
  set background=dark
else
  set background=light
endif
