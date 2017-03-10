set nocompatible
filetype off " Required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'closetag.vim'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()

"set statusline+=%F
"set laststatus=2

filetype plugin indent on " Required
set nu
set tabstop=2
set shiftwidth=2
syntax enable

set noexpandtab
set copyindent
set preserveindent
set softtabstop=0

set backspace=indent,eol,start

:set listchars=tab:>-,trail:~,extends:>,precedes:<

set splitbelow
set splitright

if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature  
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
  endif  
