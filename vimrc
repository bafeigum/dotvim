set nocompatible

"""""""""""""
" Pathogen ""
"""""""""""""
execute pathogen#infect()

" Active auto filetype detection
syntax on
filetype plugin indent on
filetype on
filetype plugin on
syntax enable

set showcmd
set hlsearch

set ignorecase
set smartcase

set autoindent

set nostartofline

set ruler

set laststatus=2

set confirm

set shiftwidth=4
set softtabstop=4
set expandtab

colorscheme morning
"""""""""""""""""""
" NERDTree settings
"""""""""""""""""""
nmap ,n :NERDTreeToggle<CR>
nmap ,m :NERDTreeFind<CR>
nmap ,N :NERDTreeClose<CR>
" Store the bookmarks file
let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")

let NERDTreeShowBookmarks=1       " Show the bookmarks table on startup
let NERDTreeShowFiles=1           " Show hidden files, too
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1          " Quit on opening files from the tree
let NERDTreeHighlightCursorline=1 " Highlight the selected entry in the tree
let NERDTreeMouseMode=2           " Use a single click to fold/unfold directories
                                  " and a double click to open files
let NERDTreeWinSize=60            " Increase window width

"""""""""""""
" UltiSnips "
"""""""""""""
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"
""""""""""""""
" syntastic  "
""""""""""""""
" Enable rust checking
let g:syntastic_rust_checkers = ['cargo'] 
" Recommended settings from Syntastic git page
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Build with VHDL2008
let g:syntastic_vhdl_ghdl_args = "--std=08 -P/home/bfeigum/Projects/HDL/common_libs/xilinx-ise/unisim/v08/"
" Enable syntastic debug
" let g:syntastic_debug = 3
" Build with verilator
let g:syntastic_verilog_compiler = "verilator"

""""""""""""""
" CTRL-P  "
""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

""""""""""""""
" ZeaVim     "
""""""""""""""
nmap <leader>z <Plug>Zeavim
vmap <leader>z <Plug>ZVVisSelection
nmap gz <Plug>ZVMotion
nmap <leader><leader>z <Plug>ZVKeyDocset

""""""""""""""
" Enable rust checking
"""""""""""""""""
" NumberToggle ""
"""""""""""""""""
" Set relativenumber enabled
set number relativenumber
