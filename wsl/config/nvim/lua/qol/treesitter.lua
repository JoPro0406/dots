-- https://github.com/nvim-treesitter/nvim-treesitter/
-- https://github.com/JoPro0406/nvim-ts-rainbow (my fork)
require('nvim-treesitter.configs').setup {
  ensure_installed = 'maintained',
  highlight = { enable = true, use_languagetree = true },
  indent = { enable = true },
  playground = { enable = true },
  autotag = {
    enable = true,
    -- filetypes = { 'html', 'xml' }, -- rip, no xml ts parser
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    colors = {
      '#D96C75',
      '#C2D94C',
      '#E6B673',
      '#59C2FF',
      '#D4BFFF',
      '#95E6CB',
      '#FF3333',
      '#91B362',
      '#FF8F40',
      '#6994BF',
      '#A37ACC',
      '#39BAE6',
      '#E6E7E9',
    },
    termcolors = {
      'LightRed',
      'LightGreen',
      'LightYellow',
      'LightBlue',
      'LightMagenta',
      'LightCyan',
      'LightGrey',
      'Red',
      'Green',
      'Yellow',
      'Blue',
      'Magenta',
      'Cyan',
      'White',
    },
  },
}
