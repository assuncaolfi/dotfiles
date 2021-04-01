" Edit
inoremap ;a +
inoremap ;cb }
inoremap ;cp )
inoremap ;d <Space><-<Space>
inoremap ;f FALSE
inoremap ;m *
inoremap ;n ::
inoremap ;ob {
inoremap ;op (
inoremap ;p <Space>%>%<CR>
inoremap ;q "
inoremap ;t TRUE
inoremap ;u _

" Indent
filetype plugin indent on
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2

" Line
set number
set relativenumber

" Macro
let @b = "f,a\<Enter>\<Esc>"

" Mouse
set mouse=n

" netrw
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_liststyle = 1
let g:netrw_winsize = 25

" Nvim-R
autocmd FileType r setlocal sw=2
let r_indent_align_args = 0

" Plug
call plug#begin('~/.local/shared/nvim/plugged')
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'altercation/vim-colors-solarized', {'as': 'solarized'}
call plug#end()

" Split
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Theme
syntax enable
let hr = (strftime('%H'))
if hr >= 18
  set background=dark
elseif hr >= 6
  set background=light
elseif hr >= 0
  set background=dark
endif
if $TERM == "xterm"
    colorscheme default
else
    colorscheme solarized
endif
set cursorline
augroup cursorline
  au!
  au ColorScheme * hi clear CursorLine
               \ | hi link CursorLine CursorColumn
augroup END
