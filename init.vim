" Maps
"" Global
let mapleader = "\\"
let maplocalleader = "\\"
"" Terminal
tnoremap <Esc> <C-\><C-n>
"" Normal
nnoremap <C-s> :w<CR>
"" Insert
""" Normal
inoremap <C-c> <Esc>
inoremap <C-s> <Esc>:w<CR>
""" R
inoremap <Leader>a <Space><-<Space>
inoremap <Leader>h <Esc>80i-<Esc>80\|D<CR>
inoremap <Leader>p <Esc>A<Space>\|><CR>

" Indent
filetype plugin indent on
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2

" Buffer and History
set hidden 
set nobackup
set noswapfile
set nowritebackup
set updatetime=300

" Display
set colorcolumn=80
set incsearch
set nohlsearch
set nowrap
set number
set relativenumber
set scrolloff=25
set showmatch
set termguicolors

" Status
set laststatus=2
set statusline+=\ %f

" Mouse
set mouse=a

" Plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'ervandew/supertab'
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'jpalardy/vim-slime'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'romainl/flattened'
Plug 'spolu/dwm.vim'
call plug#end()
"" dwm.vim
let g:dwm_map_keys = 0
nmap <C-H> <Plug>DWMShrinkMaster
nmap <C-J> <C-W>w
nmap <C-K> <C-W>W
nmap <C-L> <Plug>DWMGrowMaster
nmap <C-N> <Plug>DWMNew
nmap <C-Space> <Plug>DWMFocus
nmap <C-T> :term<CR>                                   
nmap <C-X> <Plug>DWMClose
"" fzf
nnoremap <silent> <C-f> :Files<CR>
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
"" supertab
let g:SuperTabDefaultCompletionType = "context"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
"" tidal-vim
let g:tidal_target = "terminal"
"" vim-slime
let g:slime_no_mappings = 1
let g:slime_target = "neovim"
""" xmap <C-S> <Plug>SlimeRegionSend
nmap <C-P> <Plug>SlimeParagraphSend

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
set cursorline
augroup cursorline
  au!
  au ColorScheme * hi clear CursorLine
               \ | hi link CursorLine CursorColumn
augroup END
