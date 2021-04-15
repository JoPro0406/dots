local hv = require('helpful.vim')

hv.setglobal {
  indent_blankline_char = '▏',
  indent_blankline_show_trailing_blankline_indent = false,
  indent_blankline_filetype_exclude = {
    'help',
    'packer',
    'dashboard',
    'NvimTree',
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
