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
