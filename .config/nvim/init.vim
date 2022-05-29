" Map ------------------------------------------------------------------------

" Leader
let mapleader = ","
let maplocalleader = ";"
" Normal
nnoremap <leader>q ZZ
nnoremap <leader>w :w<CR>
" Insert
inoremap jj <Esc>
" Terminal
tnoremap jj <C-\><C-n>

" Option -----------------------------------------------------------------------

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
" Relative lines
set relativenumber
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
set shiftwidth=4
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
set softtabstop=4
" Ignore these files when tab-completing
set suffixes+=.pyc
" The One True Tab
set tabstop=4
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
Plug 'Pocco81/AutoSave.nvim'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'airblade/vim-rooter'
Plug 'altercation/vim-colors-solarized'
Plug 'folke/todo-comments.nvim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-emoji'
Plug 'kassio/neoterm'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Telescope -------------------------------------------------------------------

lua << EOF
require('telescope').setup {
  defaults = {
      file_ignore_patterns = {"%.git", "env", "renv"}
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
EOF

nnoremap <leader>ff <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Todo ------------------------------------------------------------------------

lua << EOF
  require("todo-comments").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

" Treesitter -------------------------------------------------------------------

lua << EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "bash",
        "dockerfile",
        "fish",
        "json",
        "julia",
        "markdown",
        "python",
        "r",
        "yaml"
    },
    highlight = {
        enable = true,
    },
    indent = {
        enable = true
    }
}

local ft_to_parser = require('nvim-treesitter.parsers').filetype_to_parsername
ft_to_parser.qmd = 'markdown'
ft_to_parser.rmd = 'markdown'
EOF

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

" Other plugins ---------------------------------------------------------------

" root projects based on .git folder
let g:rooter_patterns = ['.git']
" config coc
source ~/.config/nvim/coc.vim

" Julia ------------------------------------------------------------------------

let g:latex_to_unicode_auto = 1
let g:latex_to_unicode_file_types = ["julia", "jmd"]
let g:latex_to_unicode_tab = "off"

" Neoterm ----------------------------------------------------------------------

# let g:neoterm_bracketed_paste = 1
g:neoterm_repl_r='radian'
let g:neoterm_default_mod = "vertical"
let g:neoterm_keep_term_open = 0
let g:neoterm_term_per_tab = 1
nmap s <Plug>(neoterm-repl-send)
" Send Markdown code chunk
nmap sc /```{<CR>NjV/```\n<CR>k<Plug>(neoterm-repl-send)<CR>/```<CR>
nmap sf :TREPLSendFile<Enter>
nmap sl :TREPLSendLine<Enter>
xmap ss :TREPLSendSelection<Enter>

" R ----------------------------------------------------------------------------

" Setup
augroup R
    autocmd!
    autocmd FileType R,Rmd call CocAction('diagnosticToggle')
    autocmd FileType R,Rmd inoremap <buffer> <localleader>a <Esc><cmd>normal! a <- <CR>a
    autocmd FileType R,Rmd inoremap <buffer> <localleader>m <Esc><cmd>normal! a \|><CR>a
    autocmd FileType R,Rmd setlocal sw=2
augroup END

" Splits ----------------------------------------------------------------------

set equalalways
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Status bar ------------------------------------------------------------------

let g:airline_section_x = ""
let g:airline_section_y = ""
let g:airline_section_z = '%{strftime("%c")}'
let g:airline_powerline_fonts = 1

" Theme -----------------------------------------------------------------------

syntax enable
:let &background = strftime("%H") < 17 ? "light" : "dark"
colorscheme solarized
let g:airline_theme='solarized'
set cursorline
highlight WinSeparator guibg=None

" Number of preceding/following paragraphs to include (default: 0)
autocmd VimEnter * Limelight
let g:limelight_paragraph_span = 0
let g:limelight_conceal_ctermfg = 245  " Solarized Base1
let g:limelight_conceal_guifg = '#8a8a8a'  " Solarized Base1
