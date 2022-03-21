source ~/.config/nvim/coc.vim

" Maps
"" Global
let mapleader = ","
let maplocalleader = "\\"
"" Terminal
tnoremap <Esc> <C-\><C-n>
"" Normal
nnoremap <leader>q :wqa!<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>t :term<CR>                                   
"" Insert
inoremap <C-i> <Esc>
""" R
inoremap <localleader>a <Space><-<Space>
inoremap <localleader>p <Esc>A<Space>\|><CR><Space><Space>

" Indent
filetype plugin indent on
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2

" Buffer and History
" set hidden 
" set nobackup
set noswapfile
" set nowritebackup
" set updatetime=300

" Display
set colorcolumn=80
set incsearch
set nohlsearch
set nowrap
set number
set relativenumber
set scrolloff=25
set showmatch

" Status
set laststatus=2
set statusline+=\ %f

" Mouse
set mouse=a

" Plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mllg/vim-devtools-plugin', { 'for': ['r', 'rmd', 'rnoweb']}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'romainl/flattened'
Plug 'spolu/dwm.vim'
call plug#end()
"" dwm.vim
let g:dwm_map_keys = 0
nmap <C-H> <Plug>DWMShrinkMaster
nmap <C-J> <C-W>w
nmap <C-K> <C-W>W
nmap <C-L> <Plug>DWMGrowMaster
nmap <localleader><Space> <Plug>DWMFocus
nmap <leader>d <Plug>DWMClose
nmap <leader>o <Plug>DWMNew
"" fzf
nnoremap <silent> <leader>f :Files<CR>
"" nvim-r
autocmd FileType r setlocal sw=2
let R_assign = 0
let g:Rout_more_colors = 1
let g:rout_follow_colorscheme = 1
let r_indent_align_args = 0
let R_auto_start = 2
let R_min_editor_width = 0
let R_rconsole_width = winwidth(0) - 85 
autocmd VimResized * let R_rconsole_width = winwidth(0) - 85 

" Theme
syntax enable
let hr = (strftime('%H'))
if hr >= 18
  colorscheme flattened_dark
elseif hr >= 6
  colorscheme flattened_light
elseif hr >= 0
  colorscheme flattened_dark
endif
set termguicolors
set cursorline
augroup cursorline
  au!
  au ColorScheme * hi clear CursorLine
               \ | hi link CursorLine CursorColumn
augroup END
