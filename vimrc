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

"""""""""""""""""
" NumberToggle ""
"""""""""""""""""
" Set relativenumber enabled
set number relativenumber
