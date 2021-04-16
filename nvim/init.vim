" Variables
" TODO let width=80

" Maps
"" Global
let mapleader = ";"
let maplocalleader = ";"
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
inoremap <Leader>fu function()<left>
inoremap <Leader>l lapply()<Esc>i
inoremap <Leader>n ::
inoremap <Leader>p <Space>%>%<CR>
inoremap <Leader>P <Esc>A<Space>%>%<CR>
inoremap <Leader>t TRUE
inoremap <Leader><Space> _
let @b = "f,a\<Enter>\<Esc>"
let @s = "80i-\<Esc>80|D"

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
set nowritebackup
set updatetime=300 " 50

" Display
set colorcolumn=80
set incsearch
set nohlsearch
set nowrap
set number
set relativenumber
set scrolloff=25
set termguicolors

" Status
set laststatus=2
set statusline+=\ %f
" "set statusline+=%=
" "set statusline+=\ %l:%c
set statusline+=%=
set statusline+=\ %{strftime('%Y-%m-%d')}
set statusline+=\ %{strftime('%H:%M')}

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
Plug 'tidalcycles/vim-tidal'
Plug 'tpope/vim-fugitive'
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
"" Nvim-R
autocmd FileType r setlocal sw=2
let R_assign = 0
let g:Rout_more_colors = 1
let g:rout_follow_colorscheme = 1
let r_indent_align_args = 0
"" supertab
let g:SuperTabDefaultCompletionType = "context"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
"" tidal-vim
let g:tidal_target = "terminal"
"" vim-slime
let g:slime_no_mappings = 1
let g:slime_target = "neovim"
xmap <c-s> <Plug>SlimeRegionSend
nmap <c-s> <Plug>SlimeParagraphSend
imap <c-s> <Esc><Plug>SlimeParagraphSend<CR>i
" Tidal Cycles
function TidalCycles()
  :term jackd -R -d alsa -d hw:0,0
  :call DWM_New()
  :term sleep 3 && a2jmidid -e
  :call DWM_New()
  :term sclang SuperDirt.sc
  :tabnew
  :execute 'write' strftime('%Y-%m-%d') . '.tidal'
endfunction

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
