set incsearch
set ignorecase

set number
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
nnoremap <TAB>, <C-W><
nnoremap <TAB>. <C-W>>


nnoremap <TAB>n :bn<CR>
nnoremap <TAB>p :bp<CR>

nnoremap <A-e>r :sp<CR>
nnoremap <A-e>c :vsp<CR>
nnoremap <A-e>n :tabnew
nnoremap <A-e>kt :q!<CR>
nnoremap <A-e>kb :bd!<CR>

nnoremap <A-w>v :Vista<CR>
nnoremap <A-w>ftn :FloatermNew
nnoremap <A-w>git :FloatermNew lazygit<CR>
nnoremap <A-w>ff :FZF<CR>

" func
fun! Tab()
    call feedkeys(pumvisible() ? "\<C-n>" : "\<TAB>", 'n')
    return ''
endf
inoremap <expr><tab> Tab()



call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vista.vim'
Plug 'liuchengxu/vim-clap'
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/fzf'
Plug 'Yggdroot/indentLine'
Plug 'vim-vdebug/vdebug'
Plug 'Chiel92/vim-autoformat'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'luochen1990/rainbow'

" Themes
Plug 'connorholyday/vim-snazzy'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1 
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" Plug 'liuchengxu/vista.vim'
let g:vista_executive_for = {
            \ 'php': 'coc',
            \ }
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 0

" Plug 'junegunn/fzf' 
let g:fzf_action = {
            \ 'ctrl-b': 'edit',
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-r': 'sp',
            \ 'ctrl-c': 'vsp' }

" Plug 'Yggdroot/indentLine'
let g:indentLine_char = 'c'
let g:indentLine_char_list = ['.', '-', '-', '¦',]
let g:indentLine_color_term = 239

" Plug 'vim-vdebug/vdebug'
let g:vdebug_options = {
    \    'port' : 9001,
    \    'watch_window_style' : 'expanded',
    \    'layout': 'horizontal',
    \}

" Plug 'vim-visual-multi'
let g:VM_mouse_mappings = 1
let g:VM_theme = 'neon'

" Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

colorscheme snazzy
"colorscheme gruvbox
"set background=dark
