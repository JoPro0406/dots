_G.Commands.edit_config = function()
  vim.api.nvim_command('cd ' .. vim.fn.stdpath('config'))
end

_G.Commands.compile_plugins = function()
  package.loaded['plugins'] = nil
  require('packer').compile()
end

-- Abusing this file, whatever
-- nvim doesn't restore the cursor on leave, its annoying
vim.api.nvim_exec('au VimLeave * set guicursor=a:hor20-blinkon0', true)
