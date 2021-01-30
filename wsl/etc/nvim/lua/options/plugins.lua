local hv = require("helpful.vim")

hv.setoption({
  completeopt = "menuone,noinsert,noselect"
})

hv.setglobal({
  completion_chain_complete_list = {
    default = {
      {complete_items = {"lsp", "snippet", "tabnine"}},
      {mode = "<c-p>"},
      {mode = "<c-n>"}
    }
  },
  ale_disable_lsp = 1,
  ale_fix_on_save = 1,
  -- ale_fixers   = { -- fix at bottom
  --   '*'        = { 'remove_trailing_lines', 'trim_whitespace' },
  -- },

  indentLine_setColors = 0,
  indentLine_enabled = 0,
  indentLine_leadingSpaceEnabled = 1,
  indentLine_leadingSpaceChar = "·",
  indentLine_fileTypeExclude = {"dashboard"},

  NERDSpaceDelims = 1,
  NERDCommentEmptyLines = 1,
  NERDTrimTrailingWhitespace = 1,

  dashboard_default_header = "commicgirl15",
  dashboard_default_executive = "telescope",
  dashboard_custom_shortcut = {
    last_session = "SPC s l",
    find_history = "SPC f h",
    find_file = "SPC f f",
    new_file = "SPC n f",
    change_colorscheme = "SPC t c",
    find_word = "SPC f a",
    book_marks = "SPC f b"
  },

  lightline = {
    colorscheme = "ayu_dark",
    active = {
      left = {{"mode", "paste"}, {"gitbranch", "filename"}},
      right = {
        {"lineinfo"},
        {"liner_checking", "linter_errors", "linter_warnings", "linter_infos", "linter_ok"},
        {"fileformat", "fileencoding", "filetype"}
      }
    },
    tabline = {
      left = {{"buffers"}}
    },
    component_function = {
      gitbranch = "FugitiveHead"
    },
    component_expand = {
      buffers = "lightline#bufferline#buffers",
      linter_checking = "lightline#ale#checking",
      linter_infos = "lightline#ale#infos",
      linter_warnings = "lightline#ale#warnings",
      linter_errors = "lightline#ale#errors",
      linter_ok = "lightline#ale#ok"
    },
    component_type = {
      buffers = "tabsel",
      linter_checking = "right",
      linter_infos = "right",
      linter_warnings = "warning",
      linter_errors = "error",
      linter_ok = "right"
    }
  }
})
vim.cmd([[let g:ale_fixers = { '*': [ 'remove_trailing_lines', 'trim_whitespace'  ] }]])
vim.cmd([[autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2]])
