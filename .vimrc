set nocompatible
filetype off " Required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'closetag.vim'

call vundle#end()

"set statusline+=%F
"set laststatus=2

filetype plugin indent on " Required
set nu
set tabstop=2
set shiftwidth=2
set expandtab
syntax enable
