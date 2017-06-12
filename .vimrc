
"to install Vundle:
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible
filetype off " Required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'vim-scripts/closetag.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'gcmt/taboo.vim'
Plugin 'Konfekt/FastFold'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-ragtag'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-endwise'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()
filetype plugin indent on " Required

"Airline
set laststatus=2
let g:airline_theme='simple'

"let g:airline_powerline_fonts = 1
let g:airline#extensions#taboo#enabled = 1
let g:taboo_renamed_tab_format=" ~%N~[%l]%m "
let g:taboo_tab_format=" ~%N~ %f%m "

let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#show_buffers = 1
"let g:airline#extensions#tabline#show_tabs = 1
"let g:airline#extensions#tabline#show_tab_type = 1

"Nerdtree
noremap <C-n> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFind<CR>

"Mappings
let mapleader=','
nnoremap <leader>gg :GitGutterToggle<CR>
nnoremap <leader>gst :Gstatus<CR>
vnoremap <leader># I#<Esc>
"remove whitespace
nnoremap <leader>ww :%s/\s\+$//e
inoremap <A-o> <Esc>o
nnoremap <leader>hl :set hlsearch!<CR>

"Remove whitespace
function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

"Colorscheme
colorscheme monokai

"File specific
syntax enable

"Spacing
set tabstop=2
set shiftwidth=2
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0

"fold level
set foldlevelstart=20
set foldmethod=syntax

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
