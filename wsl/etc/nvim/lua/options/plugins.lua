local hv = require('helpful.vim')

hv.setoption({ -- {{{
  completeopt = 'menuone,noinsert,noselect'
}) -- }}}

hv.setglobal({ -- {{{
  ale_lint_on_text_changed = 'always',
  ale_disable_lsp = 1,
  ale_fix_on_save = 1,
  ale_linters  = {
    rust       = { 'rust-analyzer' },
    javascript = { 'eslint' },
    vim        = { 'vimls' },
    markdown   = { --[['markdownlint']] },
  },
  ale_fixers   = { -- '*' fix at bottom
    rust       = { 'rustfmt' },
    javascript = { 'eslint', 'prettier' },
    json       = { 'jq', 'prettier' },
  },

  NERDSpaceDelims            = 1,
  NERDCommentEmptyLines      = 1,
  NERDTrimTrailingWhitespace = 1,
}) -- }}}

vim.cmd([[call extend(g:ale_fixers, { '*': [ 'remove_trailing_lines', 'trim_whitespace' ] })]])

vim.cmd([[autocmd! User GoyoEnter Limelight]])
vim.cmd([[autocmd! User GoyoLeave Limelight!]])

require('colorizer').setup()
