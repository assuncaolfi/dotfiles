" Edit
"" General
let mapleader = "\\"
nnoremap <C-C> <Esc>
tnoremap <Esc> <C-\><C-n>
"" Insert
inoremap <Leader>a <Space><-<Space>
inoremap <Leader>f FALSE
inoremap <Leader>l lapply(
inoremap <Leader>n ::
inoremap <Leader>p <Space>%>%<CR>
inoremap <Leader>t TRUE
inoremap <Leader>u _
"" Split
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Indent
filetype plugin indent on
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2

" Buffer and History
set hidden 
set noswapfile
set nobackup
set updatetime=50

" Display
set colorcolumn=80
set incsearch
set nohlsearch
set nowrap
set number
set relativenumber
set scrolloff=20
set termguicolors

" Macro
let @p = "f(a\<Enter>\<Esc>"
let @P = "f)a\<Enter>\<Esc>"
let @c = "f,a\<Enter>\<Esc>"
let @s = "i# \<Esc>78i-\<Esc>0la"

" Mouse
set mouse=a

" netrw
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_liststyle = 1
let g:netrw_winsize = 25

" Nvim-R
autocmd FileType r setlocal sw=2
let r_indent_align_args = 0
let g:rout_follow_colorscheme = 1
let g:Rout_more_colors = 1

" Plug
call plug#begin('~/.local/shared/nvim/plugged')
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'romainl/flattened'
Plug 'tpope/vim-fugitive'
Plug 'ervndew/supertab'
" Plug 'roxma/nvim-completion-manager'
" Plug 'gaalcaras/ncm-R'
" Plug 'w0rp/ale'
call plug#end()

" Supertab
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

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
