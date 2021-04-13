" Variables
" TODO let width=80

" Maps
"" Global
let mapleader = "\\"
"" Normal
nnoremap <silent> <C-f> :Files<CR>
"" Terminal
tnoremap <Esc> <C-\><C-n>
"" Insert
""" Normal mode
inoremap <C-c> <Esc>
""" Auto-close quotes and other matched characters
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
""" R syntax 
inoremap <Leader>a <Space><-<Space>
inoremap <Leader>f FALSE
inoremap <Leader>l lapply(
inoremap <Leader>n ::
inoremap <Leader>p <Space>%>%<CR>
inoremap <Leader>t TRUE
inoremap <Leader>u _

" Split
" nnoremap <C-H> <C-W><C-H>
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" let g:smartsplit_width=80
" function! s:smartsplit() abort
"   if winwidth('.') >= 2 * g:smartsplit_width
"     execute "norm! \<C-W>v\<C-W>l"
"   else
"     execute "norm! \<C-W>s\<C-W>j"
"   endif
" endfunction
" command! SmartSplit :call <SID>smartsplit()

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
let @b = "f,a\<Enter>\<Esc>"
let @s = "80i-\<Esc>80|D"

" Mouse
set mouse=a

" netrw
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END
" let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
" let g:netrw_altv = 1
" let g:netrw_banner = 0
" let g:netrw_browse_split = 4
" let g:netrw_liststyle = 1
" let g:netrw_winsize = 25

" Plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'ervandew/supertab'
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'jpalardy/vim-slime'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'romainl/flattened'
Plug 'spolu/dwm.vim'
Plug 'tidalcycles/vim-tidal'
Plug 'tpope/vim-fugitive'
call plug#end()
"" dwm.vim
let g:dwm_map_keys = 0
nnoremap <C-J> <C-W>w
nnoremap <C-K> <C-W>W
nnoremap <C-N> :call DWM_New()<CR>                                     
nnoremap <C-X> :exec DWM_Close()<CR>                                   
nnoremap <C-T> :term<CR>                                   
nnoremap <C-Space> :call DWM_Focus()<CR>
nnoremap <C-L> :call DWM_GrowMaster()<CR>
nnoremap <C-H> :call DWM_ShrinkMaster()<CR>
"" Nvim-R
autocmd FileType r setlocal sw=2
let R_assign = 0
let g:Rout_more_colors = 1
let g:rout_follow_colorscheme = 1
let r_indent_align_args = 0
"" supertab
let g:SuperTabDefaultCompletionType = "context"
"" vim-slime
let g:slime_target = "neovim"

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
