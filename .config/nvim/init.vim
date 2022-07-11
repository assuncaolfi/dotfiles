" Buffers ----------------------------------------------------------------------

augroup rc
au!
au TermOpen * setlocal nobuflisted
augroup END

" Commands ---------------------------------------------------------------------

command! -nargs=1 REPL vsplit | terminal <f-args>

" Maps -------------------------------------------------------------------------

"" General
let mapleader = ","
inoremap jj <Esc>
tnoremap jj <C-\><C-n>

"" Telescope
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>ff <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"" REPL
nnoremap <leader>rl mt0Y<C-w>lpi<Enter><C-\><C-n><C-w>h`t
nnoremap <leader>rp mtyip<C-w>lpi<Enter><C-\><C-n><C-w>h`t
nnoremap <leader>rw mtyiw<C-w>lpi<Enter><C-\><C-n><C-w>h`t
nnoremap <leader>rc mt/```{<CR>NjV/```\n<CR>ky<C-w>lpi<Enter><C-\><C-n><C-w>h`t

"" Splits
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

" Options ----------------------------------------------------------------------

filetype plugin indent on

let g:latex_to_unicode_auto = 0
let g:latex_to_unicode_file_types = ".*"

" set cmdheight=0
set backupdir=$HOME/iCloud/nvim/backup
set colorcolumn=81
set directory=$HOME/iCloud/nvim/swap
set equalalways
set foldexpr=nvim_treesitter#foldexpr()
set foldmethod=expr
set inccommand=nosplit
set incsearch
set laststatus=3
set mouse=a
set nofoldenable
set nohlsearch
set noswapfile
set number
set relativenumber
set scrolloff=999
set shiftround
set smartindent
set softtabstop=4
set splitright
set tabstop=4 shiftwidth=4 expandtab
set textwidth=80
set undodir=$HOME/iCloud/nvim/undo


" Plugins ----------------------------------------------------------------------

call plug#begin('~/.local/share/nvim/plugged')
Plug 'JuliaEditorSupport/julia-vim'
Plug 'L3MON4D3/LuaSnip'
Plug 'altercation/vim-colors-solarized'
Plug 'ggandor/leap.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/nvim-cmp'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-emoji'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-orgmode/orgmode'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'stevearc/aerial.nvim'
Plug 'williamboman/nvim-lsp-installer'
call plug#end()

lua << EOF

-- aerial ----------------------------------------------------------------------

require("aerial").setup({
  on_attach = function(bufnr)
    -- Toggle the aerial window with <leader>a
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>a', '<cmd>AerialToggle!<CR>', {})
    -- Jump forwards/backwards with '{' and '}'
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '{', '<cmd>AerialPrev<CR>', {})
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '}', '<cmd>AerialNext<CR>', {})
    -- Jump up the tree with '[[' or ']]'
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '[[', '<cmd>AerialPrevUp<CR>', {})
    vim.api.nvim_buf_set_keymap(bufnr, 'n', ']]', '<cmd>AerialNextUp<CR>', {})
  end
})

-- nvim-cmp --------------------------------------------------------------------

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local lspconfig = require('lspconfig')

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- on_attach = my_custom_on_attach,
    capabilities = capabilities,
  }
end

-- luasnip setup
local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}

-- nvim-lsp-installer ----------------------------------------------------------

require("nvim-lsp-installer").setup {
  automatic_installation = true
}

local lspconfig = require("lspconfig")

lspconfig.julials.setup {}
lspconfig.pyright.setup {}
lspconfig.r_language_server.setup {}

-- leap ------------------------------------------------------------------------

require('leap').set_default_keymaps()

-- lualine ---------------------------------------------------------------------

require('lualine').setup{
    tabline = {
        lualine_a = {'tabs'},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
    }
}

-- orgmode ---------------------------------------------------------------------

require('orgmode').setup({
  org_agenda_files = {'~/iCloud/org/*'},
  org_default_notes_file = '~/iCloud/org/refile.org',
})
require('orgmode').setup_ts_grammar()

-- telescope -------------------------------------------------------------------

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
require('telescope').load_extension('fzf')

-- nvim-treesitter -------------------------------------------------------------

require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "bash",
        "cpp",
        "dockerfile",
        "fish",
        "json",
        "julia",
        "markdown",
        "org",
        "python",
        "r",
        "rust",
        "yaml"
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = {'org'}
    },
    indent = {
        enable = true
    }
}
local ft_to_parser = require('nvim-treesitter.parsers').filetype_to_parsername
ft_to_parser.qmd = 'markdown'
ft_to_parser.rmd = 'markdown'

EOF

" Aesthetics -------------------------------------------------------------------

syntax enable
:let &background = strftime("%H") < 17 ? "light" : "dark"
colorscheme solarized

highlight WinSeparator guibg=None
set cursorline
