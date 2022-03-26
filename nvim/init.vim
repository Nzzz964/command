let mapleader=" "

syntax enable
set hidden
set showcmd

set number
set cursorline

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nowrap

" 按键绑定
nnoremap s <nop>
nnoremap <C-s> :w<CR>
inoremap <silent> <C-s> <ESC>:w<CR>a
nnoremap <TAB><TAB> <C-W><C-W>
nnoremap <TAB>j <C-W>j
nnoremap <TAB>h <C-W>h
nnoremap <TAB>l <C-W>l
nnoremap <TAB>k <C-W>k

" 终端模式
tnoremap <ESC> <C-\><C-N>

nnoremap <TAB>, <C-W>15<
nnoremap <TAB>. <C-W>15>
nnoremap <TAB>< <C-W>30<
nnoremap <TAB>> <C-W>30>

nnoremap <TAB>= <C-W>2+
nnoremap <TAB>- <C-W>2-

nnoremap <silent> <leader>k :bd<CR>

" 打字机模式
nnoremap <leader>et :set scrolloff=999<CR>
nnoremap <leader>dt :set scrolloff=0<CR>

" 
nnoremap <silent> <leader>sh :sp<CR>
nnoremap <silent> <leader>sv :vsp<CR>

" 搜索设置
set hlsearch
exec "nohlsearch"
set incsearch
" 忽略大小写
set ignorecase

" 剪贴板设置
nnoremap <leader>y "*y
nnoremap <leader>p "*p
nnoremap <leader>Y "+y
nnoremap <leader>P "+p

nnoremap <ESC> :nohlsearch<CR><ESC>

" 鼠标右键设置
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
vnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>

" 插件设置
call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'luochen1990/rainbow'
Plug 'Yggdroot/indentLine'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'connorholyday/vim-snazzy'

call plug#end()

" indentLine 配置
let g:indentLine_char = 'c'
let g:indentLine_char_list = ['.', '-', '-', '¦',]
let g:indentLine_color_term = 239

" rainbow 配置
let g:rainbow_active = 1

" vim-airline 配置
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let airline#extensions#tabline#middle_click_preserves_windows = 1
let g:airline#extensions#tabline#show_close_button = 0
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

" coc.nvim 配置
let g:coc_global_extensions = [
            \ 'coc-json',
            \ 'coc-marketplace',
            \ 'coc-spell-checker',
            \ 'coc-html',
            \ 'coc-pairs',
            \ 'coc-emmet',
            \ 'coc-css',
            \ 'coc-eslint',
            \ 'coc-vetur',
            \ 'coc-tsserver',
            \ 'coc-explorer',
            \ 'coc-lists',
            \ 'coc-vimlsp']

" 使用 <TAB> 完成代码补全
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm(): "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <expr> <silent> <C-d> <SID>select_current_word()
function! s:select_current_word()
  if !get(b:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc

nmap <leader>rn <Plug>(coc-rename)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> <leader>L :call CocAction('format')<CR>

" 查看文档
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocActionAsync('doHover')
    endif
endfunction
nnoremap <silent> <leader>D :call <SID>show_documentation()<CR>

" coc-explorer 配置
nnoremap tt <Cmd>CocCommand explorer<CR>

" fzf 配置
nnoremap <silent> <leader>ff :FZF!<CR>

colorscheme snazzy
