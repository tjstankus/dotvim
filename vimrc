" Pathogen
" https://github.com/tpope/vim-pathogen
call pathogen#infect()
" The pathogen README calls for `syntax on` but trying `enable` for flexibility
syntax enable
filetype plugin indent on

" Disable vi compatibility
set nocompatible

" Many settings culled from http://stevelosh.com/blog/2010/09/coming-home-to-vim/

set modelines=0

" Map leader to ,
let mapleader = ","

" Map ; to : so that ;w will save, for example
" Taking this out for now, in favor of using builtin keys.
" nnoremap ; :

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

" Strip trailing whitespace in the current file with ,W
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Change cursor shape in insert mode
" iTerm-specific
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Colors
colorscheme solarized
set background=dark
" if has('gui_running')
"   colorscheme solarized
"   set background=dark
" else
"   colorscheme solarized
"   set background=dark
" endif
