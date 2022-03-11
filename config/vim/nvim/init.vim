" 基本设置
set nocompatible
syntax on
set showmode      
set showcmd             
set encoding=utf-8
set t_Co=256
filetype indent on
set mouse=a

" 缩进
set autoindent
set expandtab			" 使用空号替代制表符 
set smarttab			" 插入 Tab 时使用 shiftwidth 
set shiftround			" 表示缩进列数对齐到 shiftwidth 值的整数倍
set tabstop=4
set shiftwidth=4        " >> << == 缩进
set softtabstop=4

" 外观
set title
set cursorline          " 高亮当前行
set number
" set relativenumber
set nowrap              " 自动折行 nowrap为不折行 wrap折行
set sidescroll=1
set linebreak           " 不在单词内折行
set scrolloff=5         " 垂直滚动时，光标距离顶部或底部的位置
set laststatus=2        " s否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示。
set ruler               " 在状态栏显示光标位置
set showmatch           " 遇到括号时，高亮匹配

" Search 
set hlsearch            " 高亮匹配结果
set incsearch           " 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果。
set ignorecase          " 
set smartcase           "输入有大小写时，大小写敏感

" Edit
set nobackup
set noswapfile
:set vb t_vb=           " Close error warning


" leader
let mapleader = "s"
noremap s <Esc>
nnoremap <leader>n :noh<cr>

nnoremap <cr> o<Esc>

" copy
nnoremap dd "+yy
vnoremap dd "+y

" cut
nnoremap <leader>x "+dd
vnoremap <leader>x "+x

" delete line
nnoremap S dd
" delete to beginning of line
nnoremap ds d^
" change to beginning of line and insert
nnoremap cs c^

" paste
nnoremap p "+p
nnoremap P "+P

" select all
nnoremap <leader>a ggVG

" select mode
vnoremap <leader>v <c-g>


" Duplicate
nnoremap <leader>d yyp
vnoremap <leader>d "+y'>gp

nnoremap M J 
nnoremap L :m .+1<CR>== 
nnoremap H :m .-2<CR>==
nnoremap K 6j
nnoremap J 6k

noremap j k
noremap k j




nnoremap U :redo<cr>
nmap <leader>; A;<Esc>


" 在Normal Mode和Visual/Select Mode下，利用Tab键和Shift-Tab键来缩进文本：
nmap <tab> V>
nmap <s-tab> V<
vmap <tab> >gv
vmap <s-tab> <gv

" 搜索结果区中显示 zz表示区中
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz


nmap <BS> <down>

" 向左删除<-- insert模式默认的ctrl+w可以实现
nmap <C-w> db
" 向右删除单词-->
inoremap <C-e>  <C-o>de 
nnoremap <C-e> de

" 向右移动
nnoremap <C-f> e
inoremap <C-f> <Esc>e


inoremap <C-c> <Esc>"+yyV


" terminal vim only

" set gui options
if has("gui_running")
set guifont=SF\ Mono:h13
endif

" https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes
" Change CursorShape: For Iterm2 on MacOS
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"


" Change CursorShape: For Terminal on MacOS 
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"Cursor settings:

"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

" Change CursorShape: For the Gnome-Terminal
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' | 
    \   silent execute '!echo -ne "\e[5 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[3 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

colorscheme gruvbox
set background=dark    " Setting dark mode
" set background=light   " Setting light mode

