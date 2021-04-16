-- https://github.com/akinsho/nvim-bufferline.lua/
require'bufferline'.setup {
  options = {
    max_name_length = 32,
    diagnostics = 'nvim_lsp',
    show_close_icon = false,
    separator_style = 'thin',
  },
}
