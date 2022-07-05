" Map ------------------------------------------------------------------------

" Leader
let mapleader = ","
let maplocalleader = ";"
" Normal
nnoremap <leader>q :bd!<CR>
nnoremap <leader>w :w<CR>
" Insert
inoremap jj <Esc>
" Terminal
tnoremap jj <C-\><C-n>

augroup rc
au!
au TermOpen * setlocal nobuflisted
augroup END

" Options ----------------------------------------------------------------------

set number                          " No line numbers to start
set relativenumber                  " Relative lines

filetype plugin indent on           " Essential for filetype plugins
scriptencoding utf-8                " UTF-8 by default
set autoindent                      " Carry over indenting from previous line
set autowriteall                    " Autosave
set backupdir=$HOME/iCloud/Vim/backup   " Backup file dir
set cindent                         " Automatic program indenting
set cinkeys-=0#                     " Comments don't fiddle with indenting
set clipboard=unnamed               " Copy from and to the global clipboard
set cmdheight=0                     " Cmd only shows when typing
set colorcolumn=+1                  " Show wrap line
set directory=$HOME/iCloud/Vim/swap " Swap file dir
set encoding=utf-8                  " UTF-8 by default
set expandtab                       " No tabs
set fillchars=vert:\ ,fold:\ 
set history=1000                    " How many lines of history to save
set ignorecase                      " Case insensitive
set inccommand=nosplit              " live search substitution
set incsearch                       " Search as you type
set infercase                       " Completion recognizes capitalization
set laststatus=3                    " Global status bar
set linebreak                       " Break long lines by word, not char
set list                            " Show whitespace as special chars
set listchars=trail:·
set matchtime=2                     " Time hilight matching parenthesis
set mouse=a                         " Support mouse
set nohlsearch                      " Turn off search highlighting
set noswapfile                      " No swap
set scrolloff=999                   " Keep cursor away from top/bottom
set sessionoptions-=options         " Don't save runtimepath in Vim session
set shiftround                      " Shift to certain columns
set shiftwidth=4                    " Number of spaces to shift
set showbreak=                      " Identify wrapped lines
set showmatch                       " Show matches
set signcolumn=number               " Signs in number column
set smartcase                       " Lets you search for ALL CAPS
set smartindent                     " Use smart indention
set softtabstop=4                   " Spaces feel like tabs
set tabstop=4                       " Tabs = 4 spaces
set textwidth=80                    " Column width
set undodir=$HOME/iCloud/Vim/undo   " Undo file dir
set undofile                        " Enable persistent undo
set updatetime=1000                 " Set update time
set splitright

"  TODO: Revise
"" Ignore these files when tab-completinginit
"set suffixes+=.pyc
"" Allow backspace beyond insertion point
"" set backspace=indent,eol,start
"" Turn off show mode (showed by lightline)
"set noshowmode
"" See :h cinoptions-values
"set cinoptions=
"" When folds are created, add them to this
"set commentstring=\ \ #%s
"" Prefer Unix
"set fileformats=unix,dos,mac
"" Use braces by default
"set foldmethod=marker
"" Format text
"set formatoptions=tcqn1
"" How many lines of head & tail to look for ml's
"set modelines=5
"" No flashing or beeping at all
"set visualbell t_vb=
"" A4 paper
"set printoptions=paper:A4
"" Hide row/col and percentage
"set noruler
"" Hise command line infos
"set noshowcmd
"" Number of lines to scroll with ^U/^D
"set scroll=4
"" Hide Omnicomplete messages
"set shortmess+=c
"" Keep cursor away from this many chars left/right
"set sidescrolloff=3
"" Don't set the title of the Vim window
"set notitle
"" Disable conceal
"set conceallevel=0
"" Disable omnicompletion preview
"set completeopt=menuone,noselect,noinsert
"" Ignore certain files in tab-completion
"set wildignore=*.class,*.o,*~,*.pyc,.git,.DS_Store
"" Make splits defaut to below ...
"set splitbelow
"" ... and to the right
"" Make sure the original file is overwritten on save
"set backupcopy=yes
"" Turn off modeline support
"set nomodeline

" Plugin ---------------------------------------------------------------------------------------

call plug#begin('~/.local/share/nvim/plugged')
Plug 'JuliaEditorSupport/julia-vim'
Plug 'Pocco81/AutoSave.nvim'
Plug 'altercation/vim-colors-solarized'
Plug 'folke/todo-comments.nvim'
Plug 'ggandor/leap.nvim'
Plug 'iamcco/markdown-preview.nvim', {'do': {-> mkdp#util#install()}, 'for': ['markdown', 'vim-plug']}
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-emoji'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'stevearc/aerial.nvim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
call plug#end()

" Aesthetics -------------------------------------------------------------------

syntax enable
:let &background = strftime("%H") < 17 ? "light" : "dark"
colorscheme solarized

" autocmd VimEnter * Limelight
highlight WinSeparator guibg=None
let g:airline_theme='solarized'
let g:limelight_conceal_ctermfg = 245  " Solarized Base1
let g:limelight_conceal_guifg = '#8a8a8a'  " Solarized Base1
let g:limelight_paragraph_span = 0
set cursorline

" aerial -----------------------------------------------------------------------

" lua << EOF
" require("aerial").setup({
"   on_attach = function(bufnr)
"     -- Toggle the aerial window with <leader>a
"     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>a', '<cmd>AerialToggle!<CR>', {})
"     -- Jump forwards/backwards with '{' and '}'
"     vim.api.nvim_buf_set_keymap(bufnr, 'n', '{', '<cmd>AerialPrev<CR>', {})
"     vim.api.nvim_buf_set_keymap(bufnr, 'n', '}', '<cmd>AerialNext<CR>', {})
"     -- Jump up the tree with '[[' or ']]'
"     vim.api.nvim_buf_set_keymap(bufnr, 'n', '[[', '<cmd>AerialPrevUp<CR>', {})
"     vim.api.nvim_buf_set_keymap(bufnr, 'n', ']]', '<cmd>AerialNextUp<CR>', {})
"   end
" })
" EOF

" lualine ----------------------------------------------------------------------

lua << EOF
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'solarized_light',
    component_separators = '',
    section_separators = '',
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
    lualine_a = {},
    lualine_b = {},
    lualine_a = {'buffers'},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  extensions = {}
}
EOF

" Leap -----------------------------------------------------------------------------------------

lua require('leap').set_default_keymaps()

" Telescope ------------------------------------------------------------------------------------

lua << EOF
require('telescope').setup {
  defaults = {
      file_ignore_patterns = {
          "%.git",
          "env",
          "renv"
    }
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

" Other plugins ---------------------------------------------------------------

" config coc
source ~/.config/nvim/coc.vim

" Julia ------------------------------------------------------------------------

let g:latex_to_unicode_auto = 0
let g:latex_to_unicode_file_types = ".*"
" let g:latex_to_unicode_tab = "off"

" REPL -------------------------------------------------------------------------

command! -nargs=1 REPL vsplit | terminal <f-args>
nnoremap <leader>sl mt0Y<C-w>lpi<Enter><C-\><C-n><C-w>h`t
nnoremap <leader>sp mtyip<C-w>lpi<Enter><C-\><C-n><C-w>h`t
nnoremap <leader>sw mtyiw<C-w>lpi<Enter><C-\><C-n><C-w>h`t
nnoremap <leader>sc mt/```{<CR>NjV/```\n<CR>ky<C-w>lpi<Enter><C-\><C-n><C-w>h`t

" R ----------------------------------------------------------------------------

augroup R
    autocmd!
    autocmd FileType R,Rmd call CocAction('diagnosticToggle')
    autocmd FileType R,Rmd inoremap <buffer> <localleader>a <Esc><cmd>normal! a <- <CR>a
    autocmd FileType R,Rmd inoremap <buffer> <localleader>p <Esc><cmd>normal! a \|><CR>a
    autocmd FileType R,Rmd setlocal sw=2
augroup END

" Fold -------------------------------------------------------------------------

function! CustomFoldText()
  let fs = v:foldstart
  while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
  endwhile
  if fs > v:foldend
      let line = getline(v:foldstart)
  else
      let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
  endif
  let leftSpace = repeat(" ", 80 - strwidth(line))
  return line . leftSpace . "+"
endfunction

set foldexpr=nvim_treesitter#foldexpr()
set foldmethod=expr
set foldtext=CustomFoldText()
set nofoldenable

" Split ------------------------------------------------------------------------

set equalalways
inoremap <C-h> <Esc><C-w>hi
inoremap <C-j> <Esc><C-w>ji
inoremap <C-k> <Esc><C-w>ki
inoremap <C-l> <Esc><C-w>li
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
tnoremap <C-h> <C-\><C-n><C-w>hi
tnoremap <C-j> <C-\><C-n><C-w>ji
tnoremap <C-k> <C-\><C-n><C-w>ki
tnoremap <C-l> <C-\><C-n><C-w>li

" Status bar ------------------------------------------------------------------

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_section_x = ""
let g:airline_section_y = ""
let g:airline_section_z = '%{strftime("%c")}'

