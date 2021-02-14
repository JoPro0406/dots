local lualine = require('lualine')

lualine.theme = 'ayu_dark'
lualine.seperator = '|'
lualine.sections = {
  lualine_a = { 'mode' },
  lualine_b = { 'branch', 'signify' },
  lualine_c = { 'filename' },
  lualine_x = { 'encoding', 'fileformat', 'filetype' },
  lualine_y = { 'progress' },
  lualine_z = { 'location' },
}
lualine.inactive_sections = {
  lualine_a = {  },
  lualine_b = {  },
  lualine_c = { 'filename' },
  lualine_x = { 'location' },
  lualine_y = {  },
  lualine_z = {  },
}

lualine.status()
