local lualine = require('lualine')

lualine.options = {
  theme = 'ayu_dark',
  section_seperators = nil,
  component_seperators = nil,
  icons_enabled = true,
}
lualine.sections = {
  lualine_a = { 'mode' },
  lualine_b = { 'branch', 'diff' },
  lualine_c = { 'filename' },
  lualine_x = { 'encoding', 'fileformat', 'filetype' },
  lualine_y = { { 'diagnostics', sources = { 'nvim_lsp', 'coc' } } },
  lualine_z = { 'location' },
}
lualine.inactive_sections = {
  lualine_a = {  },
  lualine_b = {  },
  lualine_c = { 'filename' },
  lualine_x = {  },
  lualine_y = {  },
  lualine_z = {  },
}

lualine.status()
