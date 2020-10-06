set incsearch
set ignorecase

set number

set cursorline

set hlsearch

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nowrap

set foldmethod=indent
set nofoldenable

set guifont=Cascadia\ code\ Regular

syntax enable

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vista.vim'
Plug 'liuchengxu/vim-clap'
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/fzf'

call plug#end()


filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Chiel92/vim-autoformat'

call vundle#end()            " required
filetype plugin indent on    " required

let g:airline#extensions#tabline#enabled = 1
