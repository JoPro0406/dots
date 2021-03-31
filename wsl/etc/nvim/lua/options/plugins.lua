local hv = require('helpful.vim')

hv.setoption({ completeopt = 'menuone,noinsert,noselect' })

hv.setglobal {
  NERDSpaceDelims = 1,
  NERDCommentEmptyLines = 1,
  NERDTrimTrailingWhitespace = 1,

  indent_blankline_char = '▏',
  indent_blankline_show_trailing_blankline_indent = false,
  indent_blankline_filetype_exclude = { 'help', 'packer', 'dashboard' },
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

vim.api.nvim_exec([[autocmd! User GoyoEnter Limelight]], true)
vim.api.nvim_exec([[autocmd! User GoyoLeave Limelight!]], true)
