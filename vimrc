"pathogen 配置
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()


"Set mapleader
let mapleader = ","
let g:mapleader = ","

"set encoding=utf8
"set fileencodings=utf-8,chinese,latin-1,gbk,gb18030,gk2312
"set fenc=utf8

set fileencodings=utf-8,gbk,utf-16le,cp1252,iso-8859-15,ucs-bom
set termencoding=utf-8
set encoding=utf-8
set fenc=utf-8

set langmenu=zh_CN.UTF-8

"Gtags config
"let $GTAGSLABEL = 'native-pygments'
"let $GTAGSCONF = 'C:\glo662wb\share\gtags\gtags.conf'

" gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
"let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
"let g:gutentags_ctags_tagfile = '.tags'

" 同时开启 ctags 和 gtags 支持：
"let g:gutentags_modules = []
"if executable('ctags')
	"let g:gutentags_modules += ['ctags']
"endif
"if executable('gtags-cscope') && executable('gtags')
	"let g:gutentags_modules += ['gtags_cscope']
"endif

" 将自动生成的 ctags/gtags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
"let g:gutentags_cache_dir = expand('~/.cache/tags')

" 配置 ctags 的参数
"let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
"let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
"let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 如果使用 universal ctags 需要增加下面一行
"let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']

" 禁用 gutentags 自动加载 gtags 数据库的行为
"let g:gutentags_auto_add_gtags_cscope = 0

""""""""""" airline config
set ambiwidth=double "防止特殊符号无法正常显示
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled = 2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

nnoremap <C-N> :bn<CR>
"nnoremap <C-P> :bp<CR>

"vim-keysound
" 启动 Vim 时自动启动
let g:keysound_enable = 1

" 设置默认音效主题，可以选择：default, typewriter, mario, bubble, sword
let g:keysound_theme = 'default'

" 设置 python 版本：2 或者3 默认会自动检测
let g:keysound_py_version = 2

" 设置音量：0-1000
let g:keysound_volume = 1000

syntax on
set t_Co=256

"molokai
"let g:rehash256 = 1
"let g:molokai_original = 1
"colorscheme molokai

if has("gui_running")
  set background=dark
  "colorscheme solarized
  colorscheme molokai 
  set lines=25 columns=85
else
  colorscheme darkburn
endif

"gui set
"set guifont=Powerline_Consolas:h14:cANSI:qDRAFT
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 16

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

"Fast saving
nmap <leader>x :xa!<cr>
nmap <leader>w :w!<cr>

"关闭当前分割窗口
nmap <Leader>q :q<CR>

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

"YouCompleteMe
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0

"vim-go
au FileType go nnoremap <leader>r :GoRun<CR>
au FileType go nnoremap <leader>b :GoBuild<CR>
au FileType go nnoremap <leader>i :GoImport 
au FileType go nnoremap <leader>t :GoTest<CR>

au FileType go nnoremap <leader>v :vsp <CR>:exe "GoDef" <CR>
au FileType go nnoremap <leader>d :GoDescribe<CR>

let g:go_list_type = "quickfix"

let g:go_fmt_command = "goimports"

