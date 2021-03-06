require('indent_guides').setup {
  indent_levels = 30,
  indent_guide_size = 1,
  indent_start_level = 1,
  indent_space_guides = true,
  indent_tab_guides = false,
  indent_pretty_mode = false,
  indent_soft_pattern = '\\s',
  exclude_filetypes = {
    'help',
    'dashboard',
    'dashpreview',
    'NvimTree',
    'vista',
    'sagahover',
    'man',
    'packer',
  },
  even_colors = { fg = '#1b2733', bg = '#304357' },
  odd_colors = { fg = '#304357', bg = '#1b2733' },
}
