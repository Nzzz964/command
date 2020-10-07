" ===============
" mapleader setting
" ===============
let mapleader=" "

" ===============
" search setting
" ===============
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase

" ===============
" line number setting
" ===============
set number
set relativenumber
set cursorline

" ===============
" tap setting
" ===============
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nowrap

" ===============
" flod setting
" ===============
set foldmethod=indent
set nofoldenable

" ===============
" syntax setting
" ===============
syntax enable

" ===============
" something else setting
" ===============
set hidden

" ===============
" mapping setting
" ===============
nnoremap <C-s> :w<CR>
nnoremap R :source $MYVIMRC<CR>
nnoremap s <nop>
" Window
nnoremap <TAB><TAB> <C-W><C-W>
nnoremap <TAB>j <C-W>j
nnoremap <TAB>h <C-W>h
nnoremap <TAB>l <C-W>l
nnoremap <TAB>k <C-W>k
nnoremap <TAB>, <C-W>15<
nnoremap <TAB>. <C-W>15>
nnoremap <TAB>< <C-W>30<
nnoremap <TAB>> <C-W>30>
" Buffer
nnoremap <TAB>n :bn<CR>
nnoremap <TAB>p :bp<CR>

nnoremap <A-e>r :sp<CR>
nnoremap <A-e>c :vsp<CR>
nnoremap <A-e>n :tabnew
nnoremap <silent> <A-e>kt :q!<CR>
nnoremap <silent> <A-e>kb :bd!<CR>

nnoremap <silent> <A-w>v :Vista<CR>
nnoremap <A-w>ftn :FloatermNew
nnoremap <silent> <A-w>git :FloatermNew lazygit<CR>
nnoremap <silent> <A-w>ff :FZF<CR>

nnoremap <silent> <ESC> :nohlsearch<return><ESC>

nnoremap <silent> tt :NERDTree<CR>

" ===============
" vim-plug setting
" ===============
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vista.vim'
Plug 'liuchengxu/vim-clap'
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/fzf'
Plug 'Yggdroot/indentLine'
Plug 'vim-vdebug/vdebug'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'luochen1990/rainbow'
Plug 'Chiel92/vim-autoformat'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'

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

" ===============
" coc.nvim
" ===============
let g:coc_global_extensions = [
            \ 'coc-json',
            \ 'coc-tsserver',
            \ 'coc-phpls',
            \ 'coc-eslint',
            \ 'coc-vetur',
            \ 'coc-vimlsp']
" Use <TAB> select completion
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Make <CR> auto-select the first completion item and notify coc.nvim to
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm(): "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
autocmd CursorHold * silent call CocActionAsync('highlight')
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <A-w>rn <Plug>(coc-rename)
" Applying codeAction to the selected region.
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)
" Use lsp format
nnoremap <silent> <A-w>ft :call CocAction('format')<CR>


" ===============
" current theme setting
" ===============
colorscheme snazzy
