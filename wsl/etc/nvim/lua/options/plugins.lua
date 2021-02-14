local hv = require('helpful.vim')

hv.setoption({
  completeopt = 'menuone,noinsert,noselect'
})

hv.setglobal({
  completion_chain_complete_list = {
    default = {
      {complete_items = {'lsp', 'snippet', 'tabnine'}},
      {mode = '<c-p>'},
      {mode = '<c-n>'}
    }
  },
  ale_disable_lsp = 1,
  ale_fix_on_save = 1,
  -- ale_fixers   = { -- fix at bottom
  --   '*'        = { 'remove_trailing_lines', 'trim_whitespace' },
  -- },
  ale_lint_on_text_changed = 'always',

  indentLine_setColors = 0,
  indentLine_enabled = 0,
  indentLine_leadingSpaceEnabled = 1,
  indentLine_leadingSpaceChar = '·',
  indentLine_fileTypeExclude = {'dashboard'},

  NERDSpaceDelims = 1,
  NERDCommentEmptyLines = 1,
  NERDTrimTrailingWhitespace = 1,
})

vim.cmd([[let g:ale_fixers = { '*': [ 'remove_trailing_lines', 'trim_whitespace'  ] }]])

vim.cmd([[autocmd! User GoyoEnter Limelight]])
vim.cmd([[autocmd! User GoyoLeave Limelight!]])

require('colorizer').setup()
