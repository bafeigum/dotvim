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

colorscheme murphy
"""""""""""""
" NERDTree ""
"""""""""""""
"autocmd VimEnter * NERDTree
"autocmd BufEnter * NERDTreeMirror

"CTRL-t to toggle tree view
nmap <silent> <C-t> :NERDTreeToggle<CR>
"Set F2 to put the cursor to the nerdtree
nmap <silent> <F2> :NERDTreeFind<CR>

"""""""""""""
" YCM      ""
"""""""""""""
let g:ycm_rust_src_path = systemlist("rustc --print sysroot")[0] . "/lib/rustlib/src/rust/src"
noremap <leader>gl :YcmCompleter GoToDeclaration<CR>
noremap <leader>gf :YcmCompleter GoToDefinition<CR>
noremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
" Disable diagnostics ui to enable C language checking with Syntastic
let g:ycm_show_diagnostics_ui = 0
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
