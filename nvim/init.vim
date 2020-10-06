set incsearch
set ignorecase

set relativenumber

set cursorline

set hlsearch

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nowrap

set foldmethod=indent
set nofoldenable

syntax enable

nnoremap <TAB><TAB> <C-W><C-W>
nnoremap <TAB>j <C-W>j
nnoremap <TAB>h <C-W>h
nnoremap <TAB>l <C-W>l
nnoremap <TAB>k <C-W>k

nnoremap <A-e>r :sp<CR>
nnoremap <A-e>c :vsp<CR>
nnoremap <A-e>n :tabnew
nnoremap <A-e>q :q<CR>

nnoremap <A-w>v  :Vista<CR>
nnoremap <A-w>ftn  :FloatermNew
nnoremap <A-w>git  :FloatermNew lazygit<CR>
nnoremap <A-w>ff  :FZF<CR>



call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vista.vim'
Plug 'liuchengxu/vim-clap'
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/fzf'
Plug 'Yggdroot/indentLine'

" Themes
Plug 'connorholyday/vim-snazzy'

call plug#end()



filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Chiel92/vim-autoformat'

call vundle#end()            " required
filetype plugin indent on    " required



" Plugin 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1

" Plug 'connorholyday/vim-snazzy'
let g:vista_executive_for = {
            \ 'php': 'coc',
            \ }
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 0

" Plug 'connorholyday/vim-snazzy' 
let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-v': 'vsplit' }

" Plug 'connorholyday/vim-snazzy'
let g:indentLine_char = 'c'
let g:indentLine_char_list = ['.', '-', '-', '¦',]
let g:indentLine_color_term = 239

colorscheme snazzy
