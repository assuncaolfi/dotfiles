" Function --------------------------------------------------------------------

function ShowSpaces(...)
  let @/='\v(\s+$)|( +\ze\t)'
  let oldhlsearch=&hlsearch
  if !a:0
    let &hlsearch=!&hlsearch
  else
    let &hlsearch=a:1
  end
  return oldhlsearch
endfunction

function TrimSpaces() range
  let oldhlsearch=ShowSpaces(1)
  execute a:firstline.",".a:lastline."substitute ///gec"
  let &hlsearch=oldhlsearch
endfunction

" Map ------------------------------------------------------------------------

" Leader
let mapleader = ","
let maplocalleader = ";"

" Normal
nnoremap <leader>f :Files<CR>
nnoremap <leader>q ZZ
nnoremap <leader>t :split<CR>:term<CR>:resize 10<CR>
nnoremap <leader>w :w<CR>

" Insert
inoremap jj <Esc>
autocmd InsertLeave * write

" Terminal
tnoremap jj <C-\><C-n>
autocmd TermOpen * setlocal nonumber norelativenumber
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

" Option ---------------------------------------------------------------------

" Carry over indenting from previous line
set autoindent
" Use smart indention
set smartindent
" Allow backspace beyond insertion point
set backspace=indent,eol,start
" Automatic program indenting
set cindent
" Comments don't fiddle with indenting
set cinkeys-=0#
" See :h cinoptions-values
set cinoptions=
" When folds are created, add them to this
set commentstring=\ \ #%s
" UTF-8 by default
set encoding=utf-8
" UTF-8 by default
scriptencoding utf-8
" No tabs
set expandtab
" Prefer Unix
set fileformats=unix,dos,mac
" Unicode chars for diffs/folds, and rely on Colors for window borders
set fillchars=vert:\ ,stl:\ ,stlnc:\ ,fold:-,diff:┄
" Use braces by default
set foldmethod=marker
" 120 is the new 80
set textwidth=80
" Format text
set formatoptions=tcqn1
" Show wrap line
set colorcolumn=+1
" How many lines of history to save
set history=1000
" Hilight searching
set hlsearch
" Case insensitive
set ignorecase
" live search substitution
set inccommand=nosplit
" Search as you type
set incsearch
" Completion recognizes capitalization
set infercase
" Global status bar
set laststatus=3
" Break long lines by word, not char
set linebreak
" Show whitespace as special chars - see listchars
set list
" Unicode characters for various things
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:¶,trail:·
" Tenths of second to hilight matching paren
set matchtime=2
" How many lines of head & tail to look for ml's
set modelines=5
" No line numbers to start
set number
" Signs in number column
set signcolumn=number
" No flashing or beeping at all
set visualbell t_vb=
" A4 paper
set printoptions=paper:A4
" Hide row/col and percentage
set noruler
" Hise command line infos
set noshowcmd
" Number of lines to scroll with ^U/^D
set scroll=4
" Keep cursor away from this many chars top/bot
set scrolloff=999
" Enable mouse support
set mouse=a
" Don't save runtimepath in Vim session (see tpope/vim-pathogen docs)
set sessionoptions-=options
" Shift to certain columns, not just n spaces
set shiftround
" Number of spaces to shift for autoindent or >,<
set shiftwidth=2
" Hide Omnicomplete messages
set shortmess+=c
" Show for lines that have been wrapped, like Emacs
set showbreak=
" Showmatch Hilight matching braces/parens/etc.
set showmatch
" Turn off show mode (showed by lightline)
set noshowmode
" Keep cursor away from this many chars left/right
set sidescrolloff=3
" Lets you search for ALL CAPS
set smartcase
" Spaces 'feel' like tabs
set softtabstop=2
" Ignore these files when tab-completing
set suffixes+=.pyc
" The One True Tab
set tabstop=2
" Don't set the title of the Vim window
set notitle
" Disable conceal
set conceallevel=0
" Disable omnicompletion preview
set completeopt=menuone,noselect,noinsert
" Ignore certain files in tab-completion
set wildignore=*.class,*.o,*~,*.pyc,.git,.DS_Store
" Make splits defaut to below ...
set splitbelow
" ... and to the right
set splitright
" Always hide tabline
set showtabline=0
" Essential for filetype plugins
filetype plugin indent on
" Make sure the original file is overwritten on save
set backupcopy=yes
" Backup file dir
set backupdir=$HOME/iCloud/Vim/backup
" Swap file dir
set directory=$HOME/iCloud/Vim/swap
" Enable persistent undo
set undofile
" Undo file dir
set undodir=$HOME/iCloud/Vim/undo
" Turn off modeline support
set nomodeline
" Set update time
set updatetime=1000
" Autosave
set autowriteall
" No swap
set noswapfile

" Plugin ---------------------------------------------------------------------

" call
call plug#begin('~/.local/share/nvim/plugged')
Plug 'airblade/vim-rooter'
Plug 'arcticicestudio/nord-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'jalvesaq/Nvim-R', {'branch': 'stable', 'for': ['r', 'rmd', 'rnoweb']}
Plug 'jpalardy/vim-slime'
Plug 'jnurmine/Zenburn'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-emoji'
Plug 'mllg/vim-devtools-plugin', { 'for': ['r', 'rmd', 'rnoweb']}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Plugin config --------------------------------------------------------------

autocmd VimEnter * Limelight
" autocmd TermOpen * Limelight!
let g:rooter_patterns = ['.git']
luafile ~/.config/nvim/treesitter.lua
source ~/.config/nvim/coc.vim
let g:slime_target = "neovim"

" R --------------------------------------------------------------------------

" Nvim-R
let R_assign = 0
let R_hi_fun = 0
let R_min_editor_height = 80
let r_indent_align_args = 0
let R_assign_map = "–"
let R_non_r_compl = 0
let R_rconsole_height = 10
let R_min_editor_width = 80
let r_indent_align_args = 0
let rrst_syn_hl_chunk = 1
let R_setwidth = 0
let R_nvimpager = "tab"
let rmd_syn_hl_chunk = 1
let R_nvim_wd = 1
let R_app = "radian"
let R_cmd = "R"
" let R_csv_app = 'terminal:vd'
let R_hl_term = 0
let R_args = []
let R_bracketed_paste = 1
let R_close_term = 1
" Use Treesitter for syntax highlighting
let R_hi_fun = 0
" Use RLanguageserver
let R_set_omnifunc = ["rnoweb", "rhelp", "rrst"]

" RStudio like sections
function! s:fillLine( str )
    " set tw to the desired total length
    let tw = 80 " &textwidth - 40
    if tw==0 | let tw = 80 | endif
    " strip trailing spaces first
    .s/[[:space:]]*$//
    " calculate total number of 'str's to insert
    let reps = (tw - col("$")) / len(a:str)
    " insert them, if there's room, removing trailing spaces
    " (though forcing there to be one)
    if reps > 0
        .s/$/\=(' '.repeat(a:str, reps))/
    endif
endfunction

" Setup
augroup r_setup
    autocmd!
    " Fix assignment operator
    autocmd FileType r,rmd inoremap <buffer> <localleader>a <Esc><cmd>normal! a <- <CR>a
    " Fix pipe operator
    autocmd FileType r,rmd inoremap <buffer> <localleader>m <Esc><cmd>normal! A \|><CR>a
    " Sections like RStudio
    autocmd FileType r inoremap <buffer> ## <esc><cmd>call <SID>fillLine( '-' )<CR>o<C-U><CR>
    autocmd FileType r inoremap <buffer> *** <esc><cmd>call <SID>fillLine( '*' )<CR>o<C-U>
    " Repeat # on <Enter>
    autocmd FileType r setlocal formatoptions-=t formatoptions+=croql
    " Use Pandoc bib completion for knitr chunk options
    autocmd FileType rmd set completefunc=pandoc#completion#Complete
    " Set custom shiftwidth for R
    autocmd FileType r,rmd setlocal sw=2
    " Turn off diagnostic
    autocmd FileType r,rmd call CocAction('diagnosticToggle')
augroup END

command! RLoad execute printf(":RSend devtools::load_all()")
command! RMake execute printf(":RSend devtools::document(); devtools::build()")
command! RReload execute printf(":RSend detach('package:%s', unload = TRUE); library(%s)", fnamemodify(getcwd(), ':t'), fnamemodify(getcwd(), ':t'))
command! RmdRender execute printf(":RSend rmarkdown::render('%s')", @%)

" Split ----------------------------------------------------------------------

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +2<CR>
noremap <silent> <C-Right> :vertical resize -2<CR>
noremap <silent> <C-Up> :resize +2<CR>
noremap <silent> <C-Down> :resize -2<CR>

" Removes pipes | that act as seperators on splits
" set fillchars+=vert:\

" Theme ----------------------------------------------------------------------

" Enable highlighting
set termguicolors
syntax enable
colorscheme nord
" let g:airline_theme='nord'
let hr = (strftime('%H'))
if hr >= 18
  set background=dark
elseif hr >= 6
  set background=dark
elseif hr >= 0
  set background=dark
endif
set cursorline
augroup cursorline
  au!
  au ColorScheme * hi clear CursorLine
               \ | hi link CursorLine CursorColumn
augroup END
" Thin split separators
highlight WinSeparator guibg=None
