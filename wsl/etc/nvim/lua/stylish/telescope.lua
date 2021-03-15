require('telescope').setup({
  defaults = {
    prompt_position = "bottom",
    layout_strategy = "horizontal",
    layout_defaults = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    file_ignore_patterns = { 'node_modules' },
    winblend = 10,
    border = {},
    -- borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
  }
})
