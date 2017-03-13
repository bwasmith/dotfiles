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
Plugin 'airblade/vim-gitgutter'

call vundle#end()

"Airline
let g:airline_theme='simple'
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
set laststatus=2

"Mappings
let mapleader=','
nnoremap <leader>gg :GitGutterToggle<CR>
nnoremap <leader>gst :Gstatus<CR>

"Colorscheme
set t_Co=256
set background=dark
colorscheme monokai

"File specific
filetype plugin indent on " Required
syntax enable

"Spacing
set tabstop=2
set shiftwidth=2
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0

set backspace=indent,eol,start
set listchars=tab:>-,trail:~,extends:>,precedes:<

set hidden
set nu
set noautowrite
set nowrap

"Natural splitting
set splitbelow
set splitright

if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
  endif
