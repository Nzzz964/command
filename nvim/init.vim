" ============================================================================================ "
"                                     mapleader setting                                        "
" ============================================================================================ "
let mapleader=" "

" ============================================================================================ "
"                                     search setting                                           "
" ============================================================================================ "
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase

" ============================================================================================ "
"                                    line number setting                                       "
" ============================================================================================ "
set number
set relativenumber
set cursorline

" ============================================================================================ "
"                                    tap setting                                               "
" ============================================================================================ "
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nowrap

" ============================================================================================ "
"                                    floder setting                                              "
" ============================================================================================ "
set foldmethod=indent
set nofoldenable

" ============================================================================================ "
"                                    syntax setting                                            "
" ============================================================================================ "
syntax enable

" ============================================================================================ "
"                                    something else setting                                    "
" ============================================================================================ "
set hidden
set showcmd

" ============================================================================================ "
"                                    mapping setting                                           "
" ============================================================================================ "
nnoremap s <nop>
nnoremap R :source $MYVIMRC<CR>
nnoremap <C-s> :w<CR>
inoremap <silent> <C-s> <ESC>:w<CR>a
nnoremap <ESC> :nohlsearch<return><ESC>
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
"nnoremap <TAB>n :bn<CR>
"nnoremap <TAB>p :bp<CR>

" reload current buffer file
nnoremap <silent> <A-e>s :e!<CR>

nnoremap <silent> <A-e>r :sp<CR>
nnoremap <silent> <A-e>c :vsp<CR>
nnoremap <silent> <A-e>t :tabnew<CR>
nnoremap <silent> <A-e>w :tabnew<CR>

nnoremap <silent> <A-k>w :q<CR>
nnoremap <silent> <A-k>t :q<CR>
nnoremap <silent> <A-k>a :qa<CR>
nnoremap <silent> <A-k>k :bd<CR>
nnoremap <silent> <leader>k :bd<CR>

nnoremap <silent><A-w>v :Vista!!<CR>
nnoremap <silent><A-w>c :Clap<CR>
nnoremap <silent><A-w>fn :FloatermNew<CR>
nnoremap <silent><A-w>ff :FZF<CR>

" ============================================================================================ "
"                                    clipboard setting                                          "
" ============================================================================================ "
nnoremap <leader>y "*y
nnoremap <leader>p "*p
nnoremap <leader>Y "+y
nnoremap <leader>P "+p

" ============================================================================================ "
"                                    vim-plug setting                                          "
" ============================================================================================ "
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vista.vim'
Plug 'liuchengxu/vim-clap'
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'vim-vdebug/vdebug'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'luochen1990/rainbow'
Plug 'Chiel92/vim-autoformat'
Plug 'turbio/bracey.vim' " Live Server
Plug 'groenewege/vim-less'
Plug 'junegunn/vim-easy-align'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'

" Themes
Plug 'connorholyday/vim-snazzy'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()



" ============================================================================================ "
"                                    vim-airline                                               "
" ============================================================================================ "
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let airline#extensions#tabline#middle_click_preserves_windows = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <TAB>n <Plug>AirlineSelectNextTab
nmap <TAB>p <Plug>AirlineSelectPrevTab

" ============================================================================================ "
"                                    vista.vim                                                 "
" ============================================================================================ "
let g:vista_executive_for = {
            \ 'php': 'coc',
            \ 'c'  : 'coc'
            \ }
let g:vista#renderer#enable_icon = 1

" ============================================================================================ "
"                                    fzf                                                       "
" ============================================================================================ "
let g:fzf_action = {
            \ 'ctrl-b': 'edit',
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-r': 'sp',
            \ 'ctrl-c': 'vsp' }

" ============================================================================================ "
"                                    indentLine                                                "
" ============================================================================================ "
let g:indentLine_char = 'c'
let g:indentLine_char_list = ['.', '-', '-', '¦',]
let g:indentLine_color_term = 239

" ============================================================================================ "
"                                    vim-vdebug                                                "
" ============================================================================================ "
let g:vdebug_options = {
            \    'port' : 9001,
            \    'watch_window_style' : 'expanded',
            \    'layout': 'horizontal',
            \}

" ============================================================================================ "
"                                    vim-visual-multi                                          "
" ============================================================================================ "
let g:VM_mouse_mappings = 1
let g:VM_theme = 'neon'

" ============================================================================================ "
"                                    rainbow                                                   "
" ============================================================================================ "
let g:rainbow_active = 1

" ============================================================================================ "
"                                    coc.nvim                                                  "
" ============================================================================================ "
let g:coc_global_extensions = [
            \ 'coc-json',
            \ 'coc-phpls',
            \ 'coc-marketplace',
            \ 'coc-spell-checker',
            \ 'coc-clangd',
            \ 'coc-cmake',
            \ 'coc-html',
            \ 'coc-pairs',
            \ 'coc-emmet',
            \ 'coc-css',
            \ 'coc-eslint',
            \ 'coc-vetur',
            \ 'coc-prettier',
            \ 'coc-tsserver',
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

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocActionAsync('doHover')
    endif
endfunction
nnoremap <silent> <leader>D :call <SID>show_documentation()<CR>

nmap <leader>rn <Plug>(coc-rename)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> <leader>L :call CocAction('format')<CR>
" ============================================================================================ "
"                                     nerdtree                                                 "
" ============================================================================================ "
nnoremap <silent> tt :NERDTreeToggle<CR>
nnoremap <silent> tc :NERDTreeFind<CR>

" ============================================================================================ "
"                                    File Watcher                                              "
" ============================================================================================ "
autocmd FileWritePost,BufWritePost *.less :call LessCSSCompress()
function! LessCSSCompress()
    let cwd = expand('<afile>:p:h')
    let name = expand('<afile>:t:r')
    if (executable('lessc'))
        cal system('lessc '.cwd.'/'.name.'.less > '.cwd.'/../css/'.name.'.css &')
    endif
endfunction

" ============================================================================================ "
"                                    current theme setting                                     "
" ============================================================================================ "
colorscheme snazzy
