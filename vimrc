"pathogen 配置
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax on
set t_Co=256

"molokai
"let g:rehash256 = 1
"let g:molokai_original = 1
"colorscheme molokai

if has("gui_running")
  set background=dark
  colorscheme solarized
else
  colorscheme darkburn
endif


"gui set
set guifont=Ubuntu\ Mono\ 13

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=T

"显示状态栏
set laststatus=2
"显示光标当前位置
set ruler
"开启行号显示
set number
"高亮显示当前行和列
if has("gui_running")
  set cursorline
  set cursorcolumn 
endif

"禁止折行
set nowrap

" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" 基于缩进或语法进行代码折叠
set foldmethod=indent
set foldmethod=syntax
" " 启动 vim 时关闭折叠代码
set nofoldenable

"Sets how many lines of history VIM have to remember
set history=400

"Enable filetype plugin
filetype on
filetype plugin on
filetype indent on

"Set to auto read when a file is changed from the outside
set autoread

"Set mapleader
let mapleader = ","
let g:mapleader = ","

"Fast saving
nmap <leader>x :xa!<cr>
nmap <leader>w :w!<cr>

"关闭当前分割窗口
nmap <Leader>q :q<CR>

nmap lb 0
nmap le $

syntax on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Fileformat
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Favorite filetype
set ffs=unix,dos,mac

nmap <leader>fd :se ff=dos<cr>
nmap <leader>fu :se ff=unix<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM userinterface
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set 7 lines to the curors - when moving vertical..
set so=7

"Turn on WiLd menu
set wildmenu

set nocompatible 

"Always show current position
set ruler

"Do not redraw, when running macros.. lazyredraw
set lz

"Change buffer - without saving
set hid

"Ignore case when searching
set ignorecase
set incsearch


"Set magic on
set magic

"No sound on errors.
set noerrorbells
set novisualbell
set t_vb=

"show matching bracet
set showmatch

"How many tenths of a second to blink
set mat=8

"Highlight search thing
set hlsearch

"Smart way to move btw. window
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set backspace=2
set smarttab
set lbr

""""""""""""""""""""""""""""""
" => Indent
" """"""""""""""""""""""""""""""
" "Auto indent
set ai

"Smart indet
set si

" "C-style indenting
set cindent

"Wrap line
set wrap

