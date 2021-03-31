" Display
set number
set relativenumber

" Macro
let @b = 'f,a^M^['
let @p = 'i%>%^M^['

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
let g:netrw_liststyle = 3
let g:netrw_winsize = 25

" Plug
call plug#begin('~/.local/shared/nvim/plugged')
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
call plug#end

" Split
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tab
set expandtab
set tabstop=2
