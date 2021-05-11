-- https://github.com/lukas-reineke/indent-blankline.nvim/
local h = require('helpful')

h.setglobal {
  indent_blankline_char = '▏',
  indent_blankline_show_trailing_blankline_indent = false,
  indent_blankline_filetype_exclude = {
    'help',
    'packer',
    'dashboard',
    'NvimTree',
    'man',
  },
  indent_blankline_use_treesitter = true,
  indent_blankline_show_current_context = true,
  indent_blankline_context_patterns = {
    'class',
    'function',
    'method',
    '^if',
    '^while',
    '^for',
    '^object',
    '^table',
    'block',
    'arguments',
  },
}
