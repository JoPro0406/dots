local hv = require('helpful.vim')

barbar = {
  animation = false,

  auto_hide = true,

  icons = true,
  icon_separator_active = '▎',
  icon_separator_inactive = '▎',
  icon_close_tab = '',
  icon_close_tab_modified = '●',

  closable = true,

  clickable = true,

  semantic_letters = true,

  maximum_padding = 2,
}

hv.setglobal({ bufferline = barbar })
