set nu

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

syntax on

colorscheme darkblue
"Highlight current
if has("gui_running")
  if exists("&cursorline")
    set cursorline
  endif
endif

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

"Always show current position
set ruler

"Do not redraw, when running macros.. lazyredraw
set lz

"Change buffer - without saving
set hid

"Ignore case when searching
"set ignorecase
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
set shiftwidth=2
set softtabstop=2
set tabstop=2
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

