require('telescope').setup {
  defaults = {
    prompt_position = "top",
    layout_strategy = "horizontal",
    sorting_strategy = 'ascending',
    layout_defaults = {
      horizontal = { mirror = false },
      vertical = { mirror = false },
    },
    file_ignore_patterns = { 'node_modules' },
    winblend = 10,
    border = {},
    -- borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
  },
}
