set nocompatible
filetype off " Required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'closetag.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'carakan/new-railscasts-theme'

call vundle#end()

"Airline
let g:airline_theme='simple'
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
set t_Co=256
set laststatus=2

"Colorscheme
set background=dark
colorscheme monokai


"set statusline+=%F

filetype plugin indent on " Required
set nu
set tabstop=2
set shiftwidth=2
syntax enable


"spacing
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0

set backspace=indent,eol,start
set listchars=tab:>-,trail:~,extends:>,precedes:<

set hidden
set autowrite
set nowrap

set splitbelow
set splitright

if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
  endif
